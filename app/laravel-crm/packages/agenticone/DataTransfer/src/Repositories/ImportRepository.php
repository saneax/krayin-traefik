<?php

namespace agenticone\DataTransfer\Repositories;

use agenticone\Core\Eloquent\Repository;
use agenticone\DataTransfer\Contracts\Import;

class ImportRepository extends Repository
{
    /**
     * Specify model class name.
     */
    public function model(): string
    {
        return Import::class;
    }
}
