<?php

namespace agenticone\EmailTemplate\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\EmailTemplate\Models\EmailTemplate::class,
    ];
}
