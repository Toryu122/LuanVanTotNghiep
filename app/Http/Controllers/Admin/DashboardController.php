<?php

namespace App\Http\Controllers\Admin;

use App\Charts\SalesMonthly;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    //
    public function Index(SalesMonthly $chart)
    {
        return view('admin.index', ['saleChart' => $chart->build()]);
    }
}
