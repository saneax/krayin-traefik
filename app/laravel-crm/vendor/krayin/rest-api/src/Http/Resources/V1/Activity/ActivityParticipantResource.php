<?php

namespace agenticone\RestApi\Http\Resources\V1\Activity;

use Illuminate\Http\Resources\Json\JsonResource;
agenticone\RestApi\Http\Resources\V1\Contact\PersonResource;
agenticone\RestApi\Http\Resources\V1\Setting\UserResource;

class ActivityParticipantResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'user'   => $this->when($this->user, new UserResource($this->user)),
            'person' => $this->when($this->person, new PersonResource($this->person)),
        ];
    }
}
