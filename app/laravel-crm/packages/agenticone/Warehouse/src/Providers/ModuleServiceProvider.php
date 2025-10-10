<?php

namespace agenticone\Warehouse\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\Warehouse\Models\Location::class,
        \agenticone\Warehouse\Models\Warehouse::class,
    ];
}
