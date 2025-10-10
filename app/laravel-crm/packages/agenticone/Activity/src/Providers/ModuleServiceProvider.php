<?php

namespace agenticone\Activity\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\Activity\Models\Activity::class,
        \agenticone\Activity\Models\File::class,
        \agenticone\Activity\Models\Participant::class,
    ];
}
