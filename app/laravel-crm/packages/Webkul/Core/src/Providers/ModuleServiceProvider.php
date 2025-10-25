<?php

namespace agenticone\Core\Providers;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\Core\Models\CoreConfig::class,
        \agenticone\Core\Models\Country::class,
        \agenticone\Core\Models\CountryState::class,
    ];
}
