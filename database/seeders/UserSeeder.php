<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create specific admin user Alex
        User::factory()->create([
            'name' => 'alex',
            'email' => 'alexadmin@gmail.com',
            'password' => Hash::make('alexadmin'),
            'role' => 'admin',
        ]);


        // Create 5 additional random users
        User::factory(5)->create();
    }
}
