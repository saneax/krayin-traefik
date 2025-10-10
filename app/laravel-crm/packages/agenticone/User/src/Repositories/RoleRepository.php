<?php

namespace agenticone\User\Repositories;

use agenticone\Core\Eloquent\Repository;

class RoleRepository extends Repository
{
    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\User\Contracts\Role';
    }
}
