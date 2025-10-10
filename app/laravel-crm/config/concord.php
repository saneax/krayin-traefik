<?php

return [
    'modules' => [
        \agenticone\Activity\Providers\ModuleServiceProvider::class,
        \agenticone\Admin\Providers\ModuleServiceProvider::class,
        \agenticone\Attribute\Providers\ModuleServiceProvider::class,
        \agenticone\Automation\Providers\ModuleServiceProvider::class,
        \agenticone\Contact\Providers\ModuleServiceProvider::class,
        \agenticone\Core\Providers\ModuleServiceProvider::class,
        \agenticone\DataGrid\Providers\ModuleServiceProvider::class,
        \agenticone\EmailTemplate\Providers\ModuleServiceProvider::class,
        \agenticone\Email\Providers\ModuleServiceProvider::class,
        \agenticone\Lead\Providers\ModuleServiceProvider::class,
        \agenticone\Product\Providers\ModuleServiceProvider::class,
        \agenticone\Quote\Providers\ModuleServiceProvider::class,
        \agenticone\Tag\Providers\ModuleServiceProvider::class,
        \agenticone\User\Providers\ModuleServiceProvider::class,
        \agenticone\Warehouse\Providers\ModuleServiceProvider::class,
        \agenticone\WebForm\Providers\ModuleServiceProvider::class,
        \agenticone\DataTransfer\Providers\ModuleServiceProvider::class,
    ],

    'register_route_models' => true,
];
