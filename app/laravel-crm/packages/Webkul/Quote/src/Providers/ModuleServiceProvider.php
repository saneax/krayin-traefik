<?php

namespace agenticone\Quote\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    protected $models = [
        \agenticone\Quote\Models\Quote::class,
        \agenticone\Quote\Models\QuoteItem::class,
    ];
}
