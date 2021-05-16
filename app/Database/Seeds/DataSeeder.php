<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

class DataSeeder extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create('id_ID');
        for ($i = 0; $i < 100; $i++) {
            $data = [
                'nama' => $faker->name,
                'email'    => $faker->email,
                'created_at' => Time::now(),
                'updated_at' => Time::now()
            ];
            $this->db->table('data')->insert($data);
        }
    }
}
