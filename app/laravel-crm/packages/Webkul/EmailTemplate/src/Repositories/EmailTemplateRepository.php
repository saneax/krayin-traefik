<?php

namespace agenticone\EmailTemplate\Repositories;

use agenticone\Core\Eloquent\Repository;

class EmailTemplateRepository extends Repository
{
    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\EmailTemplate\Contracts\EmailTemplate';
    }
}
