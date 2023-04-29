<?php

use App\Models\Game;
use App\Models\Genre;
use App\Models\Publisher;
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
            $table->string('password')->nullable(false);
            $table->rememberToken()->default(null);
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
            $table->foreign('game_id')->references('id')->on('game');
            $table->foreign('genre_id')->references('id')->on('genre');
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
    }
}
