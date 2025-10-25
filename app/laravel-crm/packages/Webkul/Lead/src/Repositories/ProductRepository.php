<?php

namespace agenticone\Lead\Repositories;

use agenticone\Core\Eloquent\Repository;

class ProductRepository extends Repository
{
    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\Lead\Contracts\Product';
    }
}
