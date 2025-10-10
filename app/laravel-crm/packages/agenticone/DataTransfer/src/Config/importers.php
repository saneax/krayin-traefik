<?php

return [
    'persons' => [
        'title'       => 'data_transfer::app.importers.persons.title',
        'importer'    => 'agenticone\DataTransfer\Helpers\Importers\Persons\Importer',
        'sample_path' => 'data-transfer/samples/persons.csv',
    ],

    'products' => [
        'title'       => 'data_transfer::app.importers.products.title',
        'importer'    => 'agenticone\DataTransfer\Helpers\Importers\Products\Importer',
        'sample_path' => 'data-transfer/samples/products.csv',
    ],

    'leads' => [
        'title'       => 'data_transfer::app.importers.leads.title',
        'importer'    => 'agenticone\DataTransfer\Helpers\Importers\Leads\Importer',
        'sample_path' => 'data-transfer/samples/leads.csv',
    ],
];
