<?php

namespace agenticone\Email\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\Email\Models\Email::class,
        \agenticone\Email\Models\Attachment::class,
    ];
}
