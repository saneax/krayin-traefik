<?php

namespace agenticone\Automation\Repositories;

use agenticone\Automation\Contracts\Workflow;
use agenticone\Core\Eloquent\Repository;

class WorkflowRepository extends Repository
{
    /**
     * Specify Model class name.
     */
    public function model(): string
    {
        return Workflow::class;
    }
}
