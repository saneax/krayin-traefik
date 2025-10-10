<?php

namespace agenticone\Activity\Repositories;

use agenticone\Core\Eloquent\Repository;

class FileRepository extends Repository
{
    /**
     * Specify model class name.
     *
     * @return mixed
     */
    public function model()
    {
        return \agenticone\Activity\Contracts\File::class;
    }
}
