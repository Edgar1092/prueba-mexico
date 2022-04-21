<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Film;
use App\Models\Genre;
use App\Models\FilmsGenre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FilmController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $films = Film::with('genres')->get();

        return response()->json([
            'data' => $films,
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

        $film = Film::create([
            'name' => $data['name']
        ]);

        if(is_array($data['genres']) && count($data['genres']) > 0){
            foreach ($data['genres'] as $key => $value) {
                $genre = Genre::where('name', strtolower($value))->first();

                if(empty($genre)){
                    $genre_new = Genre::create([
                        'name' => strtolower($value)
                    ]);

                    $relation = FilmsGenre::create([
                        'film_id' => $film->id,
                        'genre_id' => $genre_new->id
                    ]);
                }else{
                    $relation = FilmsGenre::create([
                        'film_id' => $film->id,
                        'genre_id' => $genre->id
                    ]);
                }
                
            }
            
        }

        return response()->json([
            'data' => $film,
            'message' => 'Successfully'
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Film  $film
     * @return \Illuminate\Http\Response
     */
    public function show(Film $film)
    {
        $film = Film::with('genres')->find($film);

        return response()->json([
            'data' => $film,
            'message' => "Successfully"
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Film  $film
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Film $film)
    {
        $data = $request->all();

        $film->name = $request->name;
        $film->save();

        if(is_array($data['genres']) && count($data['genres']) > 0){
            foreach ($data['genres'] as $key => $value) {
                $genre = Genre::where('name', strtolower($value))->first();

                if(empty($genre)){
                    $genre_new = Genre::create([
                        'name' => strtolower($value)
                    ]);

                    $relation = FilmsGenre::create([
                        'film_id' => $film->id,
                        'genre_id' => $genre_new->id
                    ]);
                }else{
                    $films_genres = FilmsGenre::where('film_id', $film->id)
                    ->where('genre_id', $genre->id)
                    ->first();
                    if(empty($films_genres)){
                        $relation = FilmsGenre::create([
                            'film_id' => $film->id,
                            'genre_id' => $genre->id
                        ]);
                    }
                }
                
            }
            
        }

        return response()->json([
            'data' => $film,
            'message' => 'Successfully'
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Film  $film
     * @return \Illuminate\Http\Response
     */
    public function destroy(Film $film)
    {
        $film->delete();
        return response()->json([
            'message' => 'Successfully'
        ], 200);
    }
}
