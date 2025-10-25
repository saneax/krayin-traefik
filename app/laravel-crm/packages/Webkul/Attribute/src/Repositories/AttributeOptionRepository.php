<?php

namespace agenticone\Attribute\Repositories;

use agenticone\Core\Eloquent\Repository;

class AttributeOptionRepository extends Repository
{
    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\Attribute\Contracts\AttributeOption';
    }
}
