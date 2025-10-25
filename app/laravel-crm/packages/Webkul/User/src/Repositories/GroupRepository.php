<?php

namespace agenticone\User\Repositories;

use agenticone\Core\Eloquent\Repository;

class GroupRepository extends Repository
{
    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\User\Contracts\Group';
    }
}
