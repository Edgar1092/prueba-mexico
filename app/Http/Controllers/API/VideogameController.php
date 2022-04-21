<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Videogame;
use App\Models\Genre;
use App\Models\VideogamesGenre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class VideogameController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $videogames = Videogame::with('genres')->get();

        return response()->json([
            'data' => $videogames,
            'message' => "Successfully"
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();

        $validator = Validator::make($data,[
            'name' => 'required|max:255'
        ]);

        if($validator->fails()){
            return response()->json([
                'error' => $validator->errors(),
                'message' => 'Validations fails'
            ], 200,);
        }
        
        $videogame = Videogame::create([
            'name' => $data['name']
        ]);

        if(is_array($data['genres']) && count($data['genres']) > 0){
            foreach ($data['genres'] as $key => $value) {
                $genre = Genre::where('name', $value)->first();

                if(empty($genre)){
                    $genre_new = Genre::create([
                        'name' => $value
                    ]);

                    $relation = VideogamesGenre::create([
                        'videogame_id' => $videogame->id,
                        'genre_id' => $genre_new->id
                    ]);
                }else{
                    $relation = VideogamesGenre::create([
                        'videogame_id' => $videogame->id,
                        'genre_id' => $genre->id
                    ]);
                }
                
            }
            
        }

        return response()->json([
            'data' => $videogame,
            'message' => 'Successfully'
        ], 200);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Videogame  $videogame
     * @return \Illuminate\Http\Response
     */
    public function show(Videogame $videogame)
    {
        $videogame = Videogame::with('genres')->find($videogame);

        return response()->json([
            'data' => $videogame,
            'message' => "Successfully"
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Videogame  $videogame
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Videogame $videogame)
    {
        $data = $request->all();

        $videogame->name = $data['name'];
        $videogame->save();

        if(is_array($data['genres']) && count($data['genres']) > 0){
            foreach ($data['genres'] as $key => $value) {
                $genre = Genre::where('name', $value)->first();

                if(empty($genre)){
                    $genre_new = Genre::create([
                        'name' => $value
                    ]);

                    $relation = VideogamesGenre::create([
                        'videogame_id' => $videogame->id,
                        'genre_id' => $genre_new->id
                    ]);
                }else{
                    $videogames_genres = VideogamesGenre::where('videogame_id', $videogame->id)
                    ->where('genre_id', $genre->id)
                    ->first();
                    if(empty($videogames_genres)){
                        $relation = VideogamesGenre::create([
                            'videogame_id' => $film->id,
                            'genre_id' => $genre->id
                        ]);
                    }
                }
                
            }
            
        }

        return response()->json([
            'data' => $videogame,
            'message' => 'Successfully'
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Videogame  $videogame
     * @return \Illuminate\Http\Response
     */
    public function destroy(Videogame $videogame)
    {
        $videogame->delete();
        return response()->json([
            'message' => 'Successfully'
        ], 200);
    }
}
