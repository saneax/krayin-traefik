<?php

namespace agenticone\Marketing\Repositories;

use agenticone\Core\Eloquent\Repository;
use agenticone\Marketing\Contracts\Campaign;

class CampaignRepository extends Repository
{
    /**
     * Specify Model class name.
     */
    public function model(): string
    {
        return Campaign::class;
    }
}
