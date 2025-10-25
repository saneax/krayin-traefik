<?php

namespace agenticone\User\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\User\Models\Group::class,
        \agenticone\User\Models\Role::class,
        \agenticone\User\Models\User::class,
    ];
}
