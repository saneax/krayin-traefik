<?php

namespace agenticone\RestApi\Http\Controllers\V1\Contact\Persons;

agenticone\Activity\Repositories\ActivityRepository;
agenticone\Email\Repositories\EmailRepository;
agenticone\RestApi\Http\Controllers\V1\Controller;
agenticone\RestApi\Http\Resources\V1\Activity\ActivityResource;

class ActivityController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(
        protected ActivityRepository $activityRepository,
        protected EmailRepository $emailRepository
    ) {}

    /**
     * Display a listing of the resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $activities = $this->activityRepository
            ->leftJoin('person_activities', 'activities.id', '=', 'person_activities.activity_id')
            ->where('person_activities.person_id', $id)
            ->get();

        return ActivityResource::collection($this->concatEmail($activities));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function concatEmail($activities)
    {
        return $activities->sortByDesc('id')->sortByDesc('created_at');
    }
}
