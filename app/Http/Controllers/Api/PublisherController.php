<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\ApiController;
use App\Models\Publisher;

class PublisherController extends ApiController
{
    public $model = Publisher::class;
}
