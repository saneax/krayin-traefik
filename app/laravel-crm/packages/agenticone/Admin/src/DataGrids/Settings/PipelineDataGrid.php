<?php

namespace agenticone\Admin\DataGrids\Settings;

use Illuminate\Database\Query\Builder;
use Illuminate\Support\Facades\DB;
use agenticone\DataGrid\DataGrid;

class PipelineDataGrid extends DataGrid
{
    /**
     * Prepare query builder.
     */
    public function prepareQueryBuilder(): Builder
    {
        $queryBuilder = DB::table('lead_pipelines')
            ->leftJoin('roles', 'lead_pipelines.role_id', '=', 'roles.id')
            ->addSelect(
                'lead_pipelines.id',
                'lead_pipelines.name',
                'roles.name as role_name',
                'lead_pipelines.rotten_days',
                'lead_pipelines.is_default'
            );

        $this->addFilter('id', 'lead_pipelines.id');

        return $queryBuilder;
    }

    /**
     * Prepare columns.
     */
    public function prepareColumns(): void
    {
        $this->addColumn([
            'index'    => 'id',
            'label'    => trans('admin::app.settings.pipelines.index.datagrid.id'),
            'type'     => 'string',
            'sortable' => true,
        ]);

        $this->addColumn([
            'index'      => 'name',
            'label'      => trans('admin::app.settings.pipelines.index.datagrid.name'),
            'type'       => 'string',
            'searchable' => true,
            'filterable' => true,
            'sortable'   => true,
        ]);

        // ✅ New Role column
        $this->addColumn([
            'index'      => 'role_name',
            'label'      => trans('admin::app.settings.pipelines.index.datagrid.role'),
            'type'       => 'string',
            'sortable'   => true,
        ]);

        $this->addColumn([
            'index'    => 'rotten_days',
            'label'    => trans('admin::app.settings.pipelines.index.datagrid.rotten-days'),
            'type'     => 'string',
            'sortable' => true,
        ]);

        $this->addColumn([
            'index'      => 'is_default',
            'label'      => trans('admin::app.settings.pipelines.index.datagrid.is-default'),
            'type'       => 'boolean',
            'searchable' => true,
            'filterable' => true,
            'sortable'   => true,
            'closure'    => fn ($value) => trans('admin::app.settings.pipelines.index.datagrid.'.($value->is_default ? 'yes' : 'no')),
        ]);
    }

    /**
     * Prepare actions.
     */
    public function prepareActions(): void
    {
        if (bouncer()->hasPermission('settings.lead.pipelines.edit')) {
            $this->addAction([
                'index'  => 'edit',
                'icon'   => 'icon-edit',
                'title'  => trans('admin::app.settings.pipelines.index.datagrid.edit'),
                'method' => 'GET',
                'url'    => fn ($row) => route('admin.settings.pipelines.edit', $row->id),
            ]);
        }

        if (bouncer()->hasPermission('settings.lead.pipelines.delete')) {
            $this->addAction([
                'index'  => 'delete',
                'icon'   => 'icon-delete',
                'title'  => trans('admin::app.settings.pipelines.index.datagrid.delete'),
                'method' => 'DELETE',
                'url'    => fn ($row) => route('admin.settings.pipelines.delete', $row->id),
            ]);
        }
    }
}
