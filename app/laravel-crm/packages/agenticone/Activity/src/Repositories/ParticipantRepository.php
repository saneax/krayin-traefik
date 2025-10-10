<?php

namespace agenticone\Activity\Repositories;

use agenticone\Core\Eloquent\Repository;

class ParticipantRepository extends Repository
{
    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\Activity\Contracts\Participant';
    }
}
