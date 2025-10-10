<?php

namespace agenticone\DataTransfer\Repositories;

use agenticone\Core\Eloquent\Repository;
use agenticone\DataTransfer\Contracts\ImportBatch;

class ImportBatchRepository extends Repository
{
    /**
     * Specify model class name.
     */
    public function model(): string
    {
        return ImportBatch::class;
    }
}
