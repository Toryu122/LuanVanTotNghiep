<?php

use App\Common\Constant;
use App\Models\Game;
use App\Models\Genre;
use App\Models\Order;
use App\Models\Publisher;
use App\Models\User;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBase extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id')->unique();
            $table->string('name')->nullable(false);
            $table->string('email')->nullable(false)->unique();
            $table->boolean('verified')->default(false);
            $table->string('otp', Constant::OTP_LENGTH)->nullable(true);
            $table->string('password')->nullable(false);
            $table->dateTime('last_sent')->nullable();
            $table->rememberToken()->default(null);
            $table->enum('gender', User::GENDERS)->default(User::GENDERS[0]);
            $table->string('biography')->nullable();
            $table->string('address')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });

        Schema::create(Game::retrieveTableName(), function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->longText('description')->nullable(false);
            $table->double('price')->nullable(false)->default(0);
            $table->string('image');
            $table->unsignedInteger('publisher_id')->nullable(false);
            $table->foreign('publisher_id')->references('id')->on(Publisher::retrieveTableName());

            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });

        Schema::create(Genre::retrieveTableName(), function (Blueprint $table) {
            $table->id();
            $table->string('name');

            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });

        Schema::create(Publisher::retrieveTableName(), function (Blueprint $table) {
            $table->id();
            $table->string('name');

            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });

        Schema::create(Genre::INTERMEDIATE_TABLE[0], function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('game_id')->nullable(false);
            $table->unsignedInteger('genre_id')->nullable(false);
            $table->foreign('game_id')->references('id')->on(Game::retrieveTableName());
            $table->foreign('genre_id')->references('id')->on(Genre::retrieveTableName());
        });

        Schema::create(Order::retrieveTableName(), function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('user_id')->nullable(false);
            $table->foreign('user_id')->references('id')->on('users');
            $table->string('email');
            $table->double('total')->nullable(false);
            $table->enum('order_status', Order::ORDER_STATUS)->default(Order::ORDER_STATUS[0]);
            $table->enum('pay_type', Order::PAY_TYPE);
            $table->string('order_id_ref')->nullable(false);

            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });

        Schema::create('order_details', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('order_id')->nullable(false);
            $table->unsignedInteger('game_id')->nullable(false);
            $table->string('name')->nullable(false);
            $table->foreign('order_id')->references('id')->on(Order::retrieveTableName());
            $table->foreign('game_id')->references('id')->on(Game::retrieveTableName());
            $table->double('price')->nullable(false);
            $table->unsignedInteger('quantity')->nullable(false);

            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
        Schema::dropIfExists(Game::retrieveTableName());
        Schema::dropIfExists(Genre::retrieveTableName());
        Schema::dropIfExists(Publisher::retrieveTableName());
        Schema::dropIfExists(Genre::INTERMEDIATE_TABLE[0]);
        Schema::dropIfExists(Order::retrieveTableName());
        Schema::dropIfExists('order_details');
    }
}
