<?php

namespace agenticone\Tag\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\Tag\Models\Tag::class,
    ];
}
