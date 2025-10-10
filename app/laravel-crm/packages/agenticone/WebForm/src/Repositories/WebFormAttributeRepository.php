<?php

namespace agenticone\WebForm\Repositories;

use agenticone\Core\Eloquent\Repository;

class WebFormAttributeRepository extends Repository
{
    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\WebForm\Contracts\WebFormAttribute';
    }
}
