<?php

namespace agenticone\Lead\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\Lead\Models\Lead::class,
        \agenticone\Lead\Models\Pipeline::class,
        \agenticone\Lead\Models\Product::class,
        \agenticone\Lead\Models\Source::class,
        \agenticone\Lead\Models\Stage::class,
        \agenticone\Lead\Models\Type::class,
    ];
}
