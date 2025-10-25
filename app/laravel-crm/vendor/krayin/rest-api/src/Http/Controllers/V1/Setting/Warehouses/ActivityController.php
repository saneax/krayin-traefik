<?php

namespace agenticone\RestApi\Http\Controllers\V1\Setting\Warehouses;

use Illuminate\Http\Resources\Json\JsonResource;
use agenticone\Activity\Repositories\ActivityRepository;
use agenticone\Email\Repositories\EmailRepository;
use agenticone\RestApi\Http\Controllers\V1\Controller;
use agenticone\RestApi\Http\Resources\V1\Activity\ActivityResource;

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
     */
    public function index(int $id): JsonResource
    {
        $activities = $this->activityRepository
            ->leftJoin('warehouse_activities', 'activities.id', '=', 'warehouse_activities.activity_id')
            ->where('warehouse_activities.warehouse_id', $id)
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
