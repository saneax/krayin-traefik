<?php

namespace agenticone\Core\Models;

use Illuminate\Database\Eloquent\Model;
use agenticone\Core\Contracts\Country as CountryContract;

class Country extends Model implements CountryContract
{
    public $timestamps = false;
}
