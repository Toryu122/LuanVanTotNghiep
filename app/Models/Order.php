<?php

namespace App\Models;

use App\Models\BaseModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Order extends BaseModel
{
    use HasFactory;

    const ORDER_STATUS = [
        'Pending',
        'Done',
        'Canceled'
    ];

    const PAY_TYPE = [
        'VNPAY',
        'MoMo'
    ];

    /**
     * @return BelongsTo
     */
    public function user() : BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
