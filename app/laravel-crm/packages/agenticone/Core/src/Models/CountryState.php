<?php

namespace agenticone\Core\Models;

use Illuminate\Database\Eloquent\Model;
use agenticone\Core\Contracts\CountryState as CountryStateContract;

class CountryState extends Model implements CountryStateContract
{
    public $timestamps = false;
}
