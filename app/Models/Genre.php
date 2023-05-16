<?php

namespace App\Models;

use App\Models\BaseModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Http\Request;

class Genre extends BaseModel
{
    use HasFactory;

    protected $fillable = [
        'name'
    ];

    protected $updatable = [
        'name'
    ];

    static function getInsertValidator(Request $request): array
    {
        return array_merge(
            [
                'name' => [
                    'required',
                    'string'
                ]
            ],
            parent::getInsertValidator($request)
        );
    }

    static function getUpdateValidator(Request $request, string $id): array
    {
        return array_merge(
            [
                'name' => [
                    'string'
                ]
            ],
            parent::getUpdateValidator($request, $id)
        );
    }

    /**
     * @return BelongsToMany
     */
    public function games(): BelongsToMany
    {
        return $this->belongsToMany(Game::class);
    }

    const INTERMEDIATE_TABLE = [
        'game_genre'
    ];
}
