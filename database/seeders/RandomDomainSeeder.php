<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RandomDomainSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        //First Domain
        $tenant1 = \App\Models\Tenant::create(['id' => 'propel']);

        $tenant1->domains()->create(['domain' => 'propel.localhost']);


        //Second Domain
        $tenant2 = \App\Models\Tenant::create(['id' => 'sahm']);

        $tenant2->domains()->create(['domain' => 'sahm.localhost']);


        }
}
