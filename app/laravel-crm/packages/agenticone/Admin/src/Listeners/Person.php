<?php

namespace agenticone\Admin\Listeners;

use agenticone\Email\Repositories\EmailRepository;

class Person
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(protected EmailRepository $emailRepository) {}

    /**
     * @param  \agenticone\Contact\Models\Person  $person
     * @return void
     */
    public function linkToEmail($person)
    {
        if (! request('email_id')) {
            return;
        }

        $this->emailRepository->update([
            'person_id' => $person->id,
        ], request('email_id'));
    }
}
