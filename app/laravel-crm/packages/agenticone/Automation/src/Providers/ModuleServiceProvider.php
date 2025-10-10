<?php

namespace agenticone\Automation\Providers;

use agenticone\Automation\Models\Webhook;
use agenticone\Automation\Models\Workflow;
use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    /**
     * Define the modals to map with this module.
     *
     * @var array
     */
    protected $models = [
        Workflow::class,
        Webhook::class,
    ];
}
