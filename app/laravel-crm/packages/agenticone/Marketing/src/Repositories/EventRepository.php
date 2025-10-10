<?php

namespace agenticone\Marketing\Repositories;

use agenticone\Core\Eloquent\Repository;
use agenticone\Marketing\Contracts\Event;

class EventRepository extends Repository
{
    /**
     * Specify Model class name.
     */
    public function model(): string
    {
        return Event::class;
    }
}
