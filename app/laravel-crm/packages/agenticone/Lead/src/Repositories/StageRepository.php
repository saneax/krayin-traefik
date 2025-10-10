<?php

namespace agenticone\Lead\Repositories;

use agenticone\Core\Eloquent\Repository;

class StageRepository extends Repository
{
    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\Lead\Contracts\Stage';
    }
}
