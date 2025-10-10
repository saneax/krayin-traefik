<?php

namespace agenticone\WebForm\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\WebForm\Models\WebForm::class,
        \agenticone\WebForm\Models\WebFormAttribute::class,
    ];
}
