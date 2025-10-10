<?php

namespace agenticone\Marketing\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    /**
     * Define the module's array.
     *
     * @var array
     */
    protected $models = [
        \agenticone\Marketing\Models\Event::class,
        \agenticone\Marketing\Models\Campaign::class,
    ];
}
