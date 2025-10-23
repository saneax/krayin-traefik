<?php

namespace agenticone\Product\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use agenticone\Activity\Models\ActivityProxy;
use agenticone\Activity\Traits\LogsActivity;
use agenticone\Attribute\Traits\CustomAttribute;
use agenticone\Product\Contracts\Product as ProductContract;
use agenticone\Tag\Models\TagProxy;
use agenticone\Warehouse\Models\LocationProxy;
use agenticone\Warehouse\Models\WarehouseProxy;

class Product extends Model implements ProductContract
{
    use CustomAttribute, LogsActivity;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'sku',
        'description',
        'quantity',
        'price',
    ];

    /**
     * Get the product warehouses that owns the product.
     */
    public function warehouses(): BelongsToMany
    {
        return $this->belongsToMany(WarehouseProxy::modelClass(), 'product_inventories');
    }

    /**
     * Get the product locations that owns the product.
     */
    public function locations(): BelongsToMany
    {
        return $this->belongsToMany(LocationProxy::modelClass(), 'product_inventories', 'product_id', 'warehouse_location_id');
    }

    /**
     * Get the product inventories that owns the product.
     */
    public function inventories(): HasMany
    {
        return $this->hasMany(ProductInventoryProxy::modelClass());
    }

    /**
     * The tags that belong to the Products.
     */
    public function tags()
    {
        return $this->belongsToMany(TagProxy::modelClass(), 'product_tags');
    }

    /**
     * Get the activities.
     */
    public function activities()
    {
        return $this->belongsToMany(ActivityProxy::modelClass(), 'product_activities');
    }
}
