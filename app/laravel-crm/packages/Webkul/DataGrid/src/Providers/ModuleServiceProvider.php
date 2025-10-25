<?php

namespace agenticone\DataGrid\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\DataGrid\Models\SavedFilter::class,
    ];
}
