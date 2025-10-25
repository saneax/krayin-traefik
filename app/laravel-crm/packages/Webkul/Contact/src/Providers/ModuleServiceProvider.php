<?php

namespace agenticone\Contact\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\Contact\Models\Person::class,
        \agenticone\Contact\Models\Organization::class,
    ];
}
