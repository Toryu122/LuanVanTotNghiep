<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class OrdersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('orders')->delete();
        
        \DB::table('orders')->insert(array (
            0 => 
            array (
                'id' => 1,
                'user_id' => 1,
                'email' => 'admin@gmail.com',
                'total' => 2495000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'SRMDTA5L',
                'created_at' => '2023-07-01 10:13:20',
                'updated_at' => '2023-07-01 10:13:20',
            ),
            1 => 
            array (
                'id' => 2,
                'user_id' => 2,
                'email' => 'nguoidungkten3@gmail.com',
                'total' => 250000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'WJSCCMXP',
                'created_at' => '2023-07-01 10:17:05',
                'updated_at' => '2023-07-01 10:17:05',
            ),
            2 => 
            array (
                'id' => 3,
                'user_id' => 2,
                'email' => 'nguoidungkten3@gmail.com',
                'total' => 541000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'JNEFMTAW',
                'created_at' => '2023-07-01 10:19:22',
                'updated_at' => '2023-07-01 10:19:22',
            ),
            3 => 
            array (
                'id' => 4,
                'user_id' => 2,
                'email' => 'nguoidungkten3@gmail.com',
                'total' => 398000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'JZ4OQZIN',
                'created_at' => '2023-07-01 10:21:02',
                'updated_at' => '2023-07-01 10:21:02',
            ),
            4 => 
            array (
                'id' => 5,
                'user_id' => 2,
                'email' => 'nguoidungkten3@gmail.com',
                'total' => 220000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'HI3BOZFE',
                'created_at' => '2023-07-01 10:21:43',
                'updated_at' => '2023-07-01 10:21:43',
            ),
            5 => 
            array (
                'id' => 6,
                'user_id' => 1,
                'email' => 'admin@gmail.com',
                'total' => 3014000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'IHZA53II',
                'created_at' => '2023-07-01 10:24:22',
                'updated_at' => '2023-07-01 10:24:22',
            ),
            6 => 
            array (
                'id' => 7,
                'user_id' => 1,
                'email' => 'admin@gmail.com',
                'total' => 1880000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'SC0XPTAE',
                'created_at' => '2023-07-01 10:25:16',
                'updated_at' => '2023-07-01 10:25:16',
            ),
            7 => 
            array (
                'id' => 8,
                'user_id' => 1,
                'email' => 'admin@gmail.com',
                'total' => 2400000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'BDB2RPH1',
                'created_at' => '2023-07-01 10:25:48',
                'updated_at' => '2023-07-01 10:25:48',
            ),
            8 => 
            array (
                'id' => 9,
                'user_id' => 1,
                'email' => 'admin@gmail.com',
                'total' => 420000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'JYSP8L47',
                'created_at' => '2023-07-01 10:26:17',
                'updated_at' => '2023-07-01 10:26:17',
            ),
            9 => 
            array (
                'id' => 10,
                'user_id' => 1,
                'email' => 'admin@gmail.com',
                'total' => 188000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => '8RKISFLF',
                'created_at' => '2023-07-01 10:26:44',
                'updated_at' => '2023-07-01 10:26:44',
            ),
            10 => 
            array (
                'id' => 11,
                'user_id' => 2,
                'email' => 'nguoidungkten3@gmail.com',
                'total' => 430000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'AQEY5ZDK',
                'created_at' => '2023-07-01 10:30:02',
                'updated_at' => '2023-07-01 10:30:02',
            ),
            11 => 
            array (
                'id' => 12,
                'user_id' => 2,
                'email' => 'nguoidungkten3@gmail.com',
                'total' => 1140000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => '9B43MP9P',
                'created_at' => '2023-07-01 10:30:39',
                'updated_at' => '2023-07-01 10:30:39',
            ),
            12 => 
            array (
                'id' => 13,
                'user_id' => 2,
                'email' => 'nguoidungkten3@gmail.com',
                'total' => 1324500.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => '5SY3O885',
                'created_at' => '2023-07-01 10:32:14',
                'updated_at' => '2023-07-01 10:32:14',
            ),
            13 => 
            array (
                'id' => 14,
                'user_id' => 2,
                'email' => 'nguoidungkten3@gmail.com',
                'total' => 680000.0,
                'order_status' => 'Pending',
                'pay_type' => 'VNPAY',
                'order_id_ref' => 'TXTFOKFH',
                'created_at' => '2023-07-01 10:32:56',
                'updated_at' => '2023-07-01 10:32:56',
            ),
        ));
        
        
    }
}