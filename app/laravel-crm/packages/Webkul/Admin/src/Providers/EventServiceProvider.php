<?php

namespace agenticone\Admin\Providers;

use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event handler mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        'contacts.person.create.after' => [
            'agenticone\Admin\Listeners\Person@linkToEmail',
        ],

        'lead.create.after' => [
            'agenticone\Admin\Listeners\Lead@linkToEmail',
        ],

        'activity.create.after' => [
            'agenticone\Admin\Listeners\Activity@afterUpdateOrCreate',
        ],

        'activity.update.after' => [
            'agenticone\Admin\Listeners\Activity@afterUpdateOrCreate',
        ],
    ];
}
