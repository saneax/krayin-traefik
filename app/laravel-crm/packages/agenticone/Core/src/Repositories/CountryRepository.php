<?php

namespace agenticone\Core\Repositories;

use Prettus\Repository\Traits\CacheableRepository;
use agenticone\Core\Eloquent\Repository;

class CountryRepository extends Repository
{
    use CacheableRepository;

    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\Core\Contracts\Country';
    }
}
