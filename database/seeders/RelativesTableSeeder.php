<?php

namespace Database\Seeders;

use Faker\Factory;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RelativesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();
        $id_employees = DB::table('employees')->pluck('id');

        for ($i = 0; $i < count($id_employees); $i++) {
            for ($j = 0; $j < 5; $j++) {
                DB::table('relatives')->insert(
                    [
                        'name' => $faker->name(),
                        'gender' => $faker->boolean,
                        'relations' => $faker->randomElement(['wife', 'son', 'father', 'mother']),
                        'employee_id' => $id_employees[$i],
                        'created_at' => now(),
                        'updated_at' => now()
                    ]

                );
            }
        }
    }
}
