<?php

namespace agenticone\Tag\Repositories;

use agenticone\Core\Eloquent\Repository;

class TagRepository extends Repository
{
    /**
     * Searchable fields
     */
    protected $fieldSearchable = [
        'name',
        'color',
        'user_id',
    ];

    /**
     * Specify Model class name
     *
     * @return mixed
     */
    public function model()
    {
        return 'agenticone\Tag\Contracts\Tag';
    }
}
