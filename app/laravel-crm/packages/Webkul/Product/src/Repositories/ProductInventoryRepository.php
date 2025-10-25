<?php

namespace agenticone\Product\Repositories;

use agenticone\Core\Eloquent\Repository;

class ProductInventoryRepository extends Repository
{
    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\Product\Contracts\ProductInventory';
    }
}
