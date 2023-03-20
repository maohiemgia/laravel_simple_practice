<?php

namespace Database\Seeders;

use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DepartmentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();
        $departments_arr = ['phòng Hành chính', 'phòng Kinh Doanh', 'phòng Chăm sóc KH', 'phòng Phát triển', 'phòng Tuyển dụng'];

        for ($i = 0; $i < count($departments_arr); $i++) {
            DB::table('departments')->insert(
                [
                    [
                        'name' => $departments_arr[$i],
                        'location' => $faker->address,
                        'phone_number' => $faker->numerify('09########'),
                        'email' => $faker->unique()->safeEmail,
                        'fax' => $faker->phoneNumber,
                        'created_at' => now(),
                        'updated_at' => now()
                    ]
                ]
            );
        }
    }
}
