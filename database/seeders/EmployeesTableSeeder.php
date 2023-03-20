<?php

namespace Database\Seeders;

use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EmployeesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $faker = Factory::create();
        $id_departments = DB::table('departments')->pluck('id');

        for ($i = 0; $i < count($id_departments); $i++) {
            for ($j = 0; $j < 10; $j++) {
                DB::table('employees')->insert(
                    [
                        'name' => $faker->name(),
                        'email' => $faker->email(),
                        'phone_number' => $faker->numerify('09########'),
                        'date_of_birth' => $faker->date($format = 'Y-m-d', $max = '25-11-2002'),
                        'department_id' => $id_departments[$i],
                        'created_at' => now(),
                        'updated_at' => now()
                    ]

                );
            }
        }
    }
}
