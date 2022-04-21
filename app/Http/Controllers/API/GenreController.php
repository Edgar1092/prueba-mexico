<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Genre;
use Illuminate\Http\Request;

class GenreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $genres = Genre::with(['videogames','films'])->get();

        return response()->json([
            'data' => $genres,
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
        $genre = Genre::create([
            'name' => $data['name']
        ]);

        return response()->json([
            'data' => $genre,
            'message' => 'Successfully'
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Genre  $genre
     * @return \Illuminate\Http\Response
     */
    public function show(Genre $genre)
    {
        $genre = Genre::with(['videogames','films'])->find($genre);

        return response()->json([
            'data' => $genre,
            'message' => "Successfully"
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Genre  $genre
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Genre $genre)
    {
        $genre->name = $request->name;
        $genre->save();

        return response()->json([
            'data' => $genre,
            'message' => 'Successfully'
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Genre  $genre
     * @return \Illuminate\Http\Response
     */
    public function destroy(Genre $genre)
    {
        $genre->delete();
        return response()->json([
            'message' => 'Successfully'
        ], 200);
    }
}
