<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::create([
            'name' => 'Karyawan 1',
            'email' => 'karyawan1@gmail.com',
            'password' => bcrypt('karyawan1'),
        ]);
        // User::create([
        //     'name' => 'Moa Kikuchi',
        //     'email' => 'moakikuchi@gmail.com',
        //     'password' => bcrypt('rafly&moa'),
        // ]);
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
