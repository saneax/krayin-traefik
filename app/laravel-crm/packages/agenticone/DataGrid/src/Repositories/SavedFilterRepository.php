<?php

namespace agenticone\DataGrid\Repositories;

use agenticone\Core\Eloquent\Repository;
use agenticone\DataGrid\Contracts\SavedFilter;

class SavedFilterRepository extends Repository
{
    /**
     * Specify model class name.
     */
    public function model(): string
    {
        return SavedFilter::class;
    }
}
