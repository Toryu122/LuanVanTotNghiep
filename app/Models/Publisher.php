<?php

namespace App\Models;

use App\Models\BaseModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Http\Request;

class Publisher extends BaseModel
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
     * @return HasMany
     */
    public function games(): HasMany
    {
        return $this->hasMany(Game::class);
    }
}
