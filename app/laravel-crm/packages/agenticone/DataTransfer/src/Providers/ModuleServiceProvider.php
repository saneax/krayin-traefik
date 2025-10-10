<?php

namespace agenticone\DataTransfer\Providers;

use agenticone\Core\Providers\BaseModuleServiceProvider;

class ModuleServiceProvider extends BaseModuleServiceProvider
{
    /**
     * Define models to map with repository interfaces.
     *
     * @var array
     */
    protected $models = [
        \agenticone\DataTransfer\Models\Import::class,
        \agenticone\DataTransfer\Models\ImportBatch::class,
    ];
}
