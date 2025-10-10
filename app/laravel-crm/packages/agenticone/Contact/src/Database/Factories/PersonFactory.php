<?php

namespace agenticone\Contact\Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use agenticone\Contact\Models\Person;

class PersonFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Person::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'            => $this->faker->name(),
            'emails'          => [$this->faker->unique()->safeEmail()],
            'contact_numbers' => [$this->faker->randomNumber(9)],
        ];
    }
}
