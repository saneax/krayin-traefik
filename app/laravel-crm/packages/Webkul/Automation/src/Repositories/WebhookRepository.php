<?php

namespace agenticone\Automation\Repositories;

use agenticone\Automation\Contracts\Webhook;
use agenticone\Core\Eloquent\Repository;

class WebhookRepository extends Repository
{
    /**
     * Specify Model class name.
     */
    public function model(): string
    {
        return Webhook::class;
    }
}
