<?php

namespace App\Models;

use App\Models\BaseModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Http\Request;

class Game extends BaseModel
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'price',
        'image',
        'publisher_id',
    ];

    protected $updatable = [
        'name',
        'description',
        'price',
        'image',
        'publisher_id',
    ];

    static function getInsertValidator(Request $request): array
    {
        return array_merge(
            [
                'name' => [
                    'required',
                    'string'
                ],
                'description' => [
                    'required',
                    'string'
                ],
                'price' => [
                    'required',
                    'integer'
                ],
                'publisher_id' => [
                    'required',
                    'integer'
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
                ],
                'description' => [
                    'string'
                ],
                'price' => [
                    'integer'
                ],
                'publisher_id' => [
                    'integer'
                ]
            ],
            parent::getUpdateValidator($request, $id)
        );
    }

    /**
     * @return BelongsTo
     */
    public function publisher(): BelongsTo
    {
        return $this->belongsTo(Publisher::class);
    }

    /**
     * @return BelongsToMany
     */
    public function genres(): BelongsToMany
    {
        return $this->belongsToMany(Genre::class);
    }
}
