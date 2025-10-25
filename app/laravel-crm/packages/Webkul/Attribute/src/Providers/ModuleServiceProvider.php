<?php

namespace agenticone\Attribute\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\Attribute\Models\Attribute::class,
        \agenticone\Attribute\Models\AttributeOption::class,
        \agenticone\Attribute\Models\AttributeValue::class,
    ];
}
