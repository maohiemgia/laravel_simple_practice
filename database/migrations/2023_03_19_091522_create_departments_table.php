<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Create departments table with the specified columns and constraints
        Schema::create('departments', function (Blueprint $table) {
            $table->id();
            $table->string('name', 40);
            $table->string('location', 60);
            $table->string('phone_number', 10);
            $table->string('email', 30);
            $table->string('fax', 30);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('departments');
    }
};
