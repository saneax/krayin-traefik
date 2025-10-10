<?php

namespace agenticone\Product\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\Product\Models\Product::class,
        \agenticone\Product\Models\ProductInventory::class,
    ];
}
