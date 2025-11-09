<x-admin::layouts>
    <!-- Page Title -->
    <x-slot:title>
        @lang('admin::app.settings.pipelines.edit.title')
    </x-slot>

    {!! view_render_event('admin.settings.pipelines.edit.form.before', ['pipeline' => $pipeline]) !!}

    <x-admin::form
        :action="route('admin.settings.pipelines.update', $pipeline->id)"
        method="POST"
    >
        <!-- Header section -->
        <div class="flex flex-col gap-2 rounded-lg border border-gray-200 bg-white text-sm dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300">
            <div class="flex items-center justify-between px-4 py-2">
                <div class="flex flex-col gap-2">
                    <!-- Breadcrumbs -->
                    <x-admin::breadcrumbs 
                        name="settings.pipelines.edit"
                        :entity="$pipeline"
                    />

                    <!-- Title -->
                    <div class="text-xl font-bold dark:text-white">
                        @lang('admin::app.settings.pipelines.edit.title')
                    </div>
                </div>

                <div class="flex items-center gap-x-2.5">
                    <!-- Save button -->
                    <button
                        type="submit"
                        class="primary-button"
                    >
                        @lang('admin::app.settings.pipelines.edit.save-btn')
                    </button>
                </div>
            </div>

            <div class="flex gap-4 border-t border-gray-200 px-4 py-2 align-top dark:border-gray-800 max-sm:flex-wrap">
                <!-- Pipeline Name -->
                <x-admin::form.control-group>
                    <x-admin::form.control-group.label class="required">
                        @lang('admin::app.settings.pipelines.edit.name')
                    </x-admin::form.control-group.label>

                    <x-admin::form.control-group.control
                        type="text"
                        name="name"
                        id="name"
                        rules="required"
                        :label="trans('admin::app.settings.pipelines.edit.name')"
                        :placeholder="trans('admin::app.settings.pipelines.edit.name')"
                        value="{{ old('name') ?: $pipeline->name }}"
                    />

                    <x-admin::form.control-group.error control-name="name" />
                </x-admin::form.control-group>

                <!-- Role Selection for Pipeline -->
                <x-admin::form.control-group>
                    <x-admin::form.control-group.label>
                        @lang('admin::app.settings.pipelines.edit.role')
                    </x-admin::form.control-group.label>

                    <x-admin::form.control-group.control
                        type="select"
                        name="role_id"
                        id="role_id"
                        :label="trans('admin::app.settings.pipelines.edit.role')"
                        :value="old('role_id', $pipeline->role_id ?? '')"
                    >
                        <option value="">{{ __('Select Any Role') }}</option>
                        @foreach ($roles as $role)
                            <option 
                                value="{{ $role->id }}" 
                                {{ old('role_id', $pipeline->role_id ?? '') == $role->id ? 'selected' : '' }}
                            >
                                {{ $role->name }}
                            </option>
                        @endforeach
                    </x-admin::form.control-group.control>

                    <x-admin::form.control-group.error control-name="role_id" />
                </x-admin::form.control-group>

                <!-- Rotten Days -->
                <x-admin::form.control-group>
                    <x-admin::form.control-group.label class="required">
                        @lang('admin::app.settings.pipelines.edit.rotten-days')
                    </x-admin::form.control-group.label>

                    <x-admin::form.control-group.control
                        type="text"
                        name="rotten_days"
                        id="rotten_days"
                        rules="required|numeric|min_value:1"
                        :label="trans('admin::app.settings.pipelines.edit.rotten-days')"
                        value="{{ old('rotten_days') ?: $pipeline->rotten_days }}"
                    />

                    <x-admin::form.control-group.error control-name="rotten_days" />
                </x-admin::form.control-group>

                <!-- Default Switch -->
                <x-admin::form.control-group class="mt-4 flex items-center gap-4">
                    <x-admin::form.control-group.label class="mb-0">
                        @lang('admin::app.settings.pipelines.edit.mark-as-default')
                    </x-admin::form.control-group.label>

                    <x-admin::form.control-group.control
                        type="switch"
                        class="cursor-pointer"
                        name="is_default"
                        id="is_default"
                        value="1"
                        :checked="(boolean) $pipeline->is_default"
                        :label="trans('admin::app.settings.pipelines.edit.mark-as-default')"
                    />

                    <x-admin::form.control-group.error control-name="is_default" />
                </x-admin::form.control-group>
            </div>
        </div>

        <!-- Stages -->
        <div class="flex gap-2.5 overflow-auto py-3.5 max-xl:flex-wrap">
            <v-stages-component>
                <x-admin::shimmer.pipelines.kanban />
            </v-stages-component>
        </div>
    </x-admin::form>

    @pushOnce('scripts')
        <script type="text/x-template" id="v-stages-component-template">
            <div class="flex gap-4">
                <!-- Draggable Stages -->
                <draggable tag="div" ghost-class="draggable-ghost" v-bind="{animation:200}" item-key="id" :list="stages" class="flex gap-4">
                    <template #item="{ element, index }">
                        <div class="flex min-w-[275px] max-w-[275px] flex-col justify-between rounded-lg border border-gray-200 bg-white dark:border-gray-800 dark:bg-gray-900">
                            <div class="flex flex-col gap-6 px-4 py-3">
                                <!-- Header -->
                                <div class="flex items-center justify-between">
                                    <span class="font-medium">@{{ element.name || 'New Stage' }}</span>
                                    <i class="icon-move cursor-grab p-1 text-2xl"></i>
                                </div>

                                <div>
                                    <!-- Hidden Fields -->
                                    <input type="hidden" :value="slugify(element.name)" :name="'stages[' + element.id + '][code]'"/>
                                    <input type="hidden" :value="index + 1" :name="'stages[' + element.id + '][sort_order]'"/>

                                    <!-- Name -->
                                    <x-admin::form.control-group>
                                        <x-admin::form.control-group.label class="required">
                                            @lang('admin::app.settings.pipelines.edit.name')
                                        </x-admin::form.control-group.label>

                                        <x-admin::form.control-group.control
                                            type="text"
                                            ::name="'stages[' + element.id + '][name]'"
                                            v-model="element.name"
                                            rules="required"
                                            :label="trans('admin::app.settings.pipelines.edit.name')"
                                        />
                                    </x-admin::form.control-group>

                                    <!-- Role -->
                                    <x-admin::form.control-group>
                                        <x-admin::form.control-group.label>
                                            @lang('admin::app.settings.pipelines.edit.role')
                                        </x-admin::form.control-group.label>

                                        <x-admin::form.control-group.control
                                            type="select"
                                            ::name="'stages[' + element.id + '][role_id]'"
                                            v-model="element.role_id"
                                            :label="trans('admin::app.settings.pipelines.edit.role')"
                                        >
                                            <option value="">{{ __('Select Any Role') }}</option>
                                            @foreach ($roles as $role)
                                                <option value="{{ $role->id }}">{{ $role->name }}</option>
                                            @endforeach
                                        </x-admin::form.control-group.control>
                                    </x-admin::form.control-group>

                                    <!-- Probability -->
                                    <x-admin::form.control-group>
                                        <x-admin::form.control-group.label class="required">
                                            @lang('admin::app.settings.pipelines.edit.probability')
                                        </x-admin::form.control-group.label>

                                        <x-admin::form.control-group.control
                                            type="text"
                                            ::name="'stages[' + element.id + '][probability]'"
                                            v-model="element.probability"
                                            rules="required|numeric|min_value:0|max_value:100"
                                            :label="trans('admin::app.settings.pipelines.edit.probability')"
                                        />
                                    </x-admin::form.control-group>
                                </div>
                            </div>

                            <!-- Delete Button -->
                            <div class="flex cursor-pointer items-center gap-2 border-t border-gray-200 p-2 text-red-600 dark:border-gray-800" @click="remove(element)">
                                <i class="icon-delete text-2xl"></i>
                                @lang('admin::app.settings.pipelines.edit.delete-stage')
                            </div>
                        </div>
                    </template>
                </draggable>

                <!-- Add Stage -->
                <div class="flex min-h-[400px] min-w-[275px] flex-col items-center justify-center rounded-lg border border-gray-200 bg-white dark:border-gray-800 dark:bg-gray-900">
                    <button class="secondary-button" @click="addStage" type="button">
                        @lang('admin::app.settings.pipelines.edit.stage-btn')
                    </button>
                </div>
            </div>
        </script>

        <script type="module">
            app.component('v-stages-component', {
                template: '#v-stages-component-template',
                data() {
                    return {
                        stages: {!! json_encode(
                            $pipeline->stages->map(fn($s) => [
                                'id'          => $s->id,
                                'name'        => $s->name,
                                'probability' => $s->probability,
                                'role_id'     => $s->role_id ?? ''
                            ])
                ) !!},
                        stageCount: 1000,
                    };
                },
                methods: {
                    addStage() {
                        this.stages.push({
                            id: 'stage_' + (++this.stageCount),
                            name: '',
                            probability: 100,
                            role_id: ''
                        });
                    },
                    remove(stage) {
                        this.stages = this.stages.filter(s => s.id !== stage.id);
                    },
                    slugify(name) {
                        return name.toString().toLowerCase().replace(/\s+/g, '-').trim();
                    },
                },
            });
        </script>
    @endPushOnce
</x-admin::layouts>
