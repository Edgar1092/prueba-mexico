<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Genre extends Model
{
    use HasFactory;
    use SoftDeletes;
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name'
    ];

    public function videogames()
    {
        return $this->belongsToMany(Videogame::class,'videogames_genres');
    }

    public function films()
    {
        return $this->belongsToMany(Film::class, 'films_genres');
    }
}
