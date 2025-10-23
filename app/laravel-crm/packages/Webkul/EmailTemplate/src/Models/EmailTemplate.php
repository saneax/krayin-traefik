<?php

namespace agenticone\EmailTemplate\Models;

use Illuminate\Database\Eloquent\Model;
use agenticone\EmailTemplate\Contracts\EmailTemplate as EmailTemplateContract;

class EmailTemplate extends Model implements EmailTemplateContract
{
    protected $fillable = [
        'name',
        'subject',
        'content',
    ];
}
