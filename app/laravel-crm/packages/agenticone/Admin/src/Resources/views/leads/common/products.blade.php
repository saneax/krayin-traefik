{!! view_render_event('admin.leads.create.products.form_controls.before') !!}

<v-product-list :data="products"></v-product-list>

{!! view_render_event('admin.leads.create.products.form_controls.after') !!}

@push('scripts')
    {{-- Product List Template --}}
    <script type="text/x-template" id="v-product-list-template">
        <div class="flex flex-col gap-4">
            {!! view_render_event('admin.leads.create.products.form_controls.table.before') !!}

            <div class="block w-full overflow-x-auto">
                <!-- Table -->
                <x-admin::table>
                    {!! view_render_event('admin.leads.create.products.form_controls.table.head.before') !!}

                    <!-- Table Head -->
                    <x-admin::table.thead>
                        <x-admin::table.thead.tr>
                            <x-admin::table.th>
                                @lang('admin::app.leads.common.products.product-name')
                            </x-admin::table.th>

                            <x-admin::table.th class="text-center">
                                @lang('admin::app.leads.common.products.quantity')
                            </x-admin::table.th>

                            <x-admin::table.th class="text-center">
                                @lang('admin::app.leads.common.products.price')
                            </x-admin::table.th>

                            <x-admin::table.th class="text-center">
                                @lang('admin::app.leads.common.products.amount')
                            </x-admin::table.th>

                            <x-admin::table.th class="text-right">
                                @lang('admin::app.leads.common.products.action')
                            </x-admin::table.th>
                        </x-admin::table.thead.tr>
                    </x-admin::table.thead>

                    {!! view_render_event('admin.leads.create.products.form_controls.table.head.after') !!}

                    {!! view_render_event('admin.leads.create.products.form_controls.table.body.before') !!}

                    <!-- Table Body -->
                    <x-admin::table.tbody>
                        {!! view_render_event('admin.leads.create.products.form_controls.table.body.product_item.before') !!}

                        <!-- Product Item Vue Component -->
                        <v-product-item
                            v-for="(product, index) in products"
                            :key="index"
                            :index="index"
                            :product="product"
                            @onRemoveProduct="removeProduct($event)"
                        ></v-product-item>

                        {!! view_render_event('admin.leads.create.products.form_controls.table.body.product_item.after') !!}
                    </x-admin::table.tbody>

                    {!! view_render_event('admin.leads.create.products.form_controls.table.body.after') !!}
                </x-admin::table>
            </div>

            {!! view_render_event('admin.leads.create.products.form_controls.table.after') !!}

            <!-- Add New Product Item -->
            <button
                type="button"
                class="flex max-w-max items-center gap-2 text-brandColor"
                @click="addProduct"
            >
                <i class="icon-add text-md !text-brandColor"></i>
                @lang('admin::app.leads.common.products.add-more')
            </button>
        </div>
    </script>

    {{-- Product Item Template --}}
    <script type="text/x-template" id="v-product-item-template">
        <x-admin::table.thead.tr>
            <!-- Product Name -->
            <x-admin::table.td>
                <x-admin::form.control-group class="!mb-0">
                    <select
                        class="form-control !mb-2"
                        :name="`${inputName}[product_id]`"
                        v-model="product.product_id"
                        @change="onProductSelect"
                    >
                        <option value="" disabled selected>
                            @lang('admin::app.leads.common.products.select-product')
                        </option>

                        <option
                            v-for="item in allProducts"
                            :key="item.id"
                            :value="item.id"
                        >
                            @{{ item.name }}
                        </option>
                    </select>

                    <input type="hidden" :name="`${inputName}[name]`" v-model="product.name" />

                    <x-admin::form.control-group.control
                        type="hidden"
                        ::name="`${inputName}[product_id]`"
                        v-model="product.product_id"
                        rules="required"
                        :label="trans('admin::app.leads.common.products.product-name')"
                    />

                    <x-admin::form.control-group.error ::name="`${inputName}[product_id]`" />
                </x-admin::form.control-group>
            </x-admin::table.td>

            <!-- Quantity -->
            <x-admin::table.td class="text-right">
                <x-admin::form.control-group>
                    <x-admin::form.control-group.control
                        type="inline"
                        ::name="`${inputName}[quantity]`"
                        ::value="product.quantity"
                        rules="required|decimal:4"
                        :label="trans('admin::app.leads.common.products.quantity')"
                        @on-change="(event) => product.quantity = event.value"
                        position="center"
                    />
                </x-admin::form.control-group>
            </x-admin::table.td>

            <!-- Price -->
            <x-admin::table.td class="text-right">
                <x-admin::form.control-group>
                    <x-admin::form.control-group.control
                        type="inline"
                        ::name="`${inputName}[price]`"
                        ::value="product.price"
                        rules="required|decimal:4"
                        :label="trans('admin::app.leads.common.products.price')"
                        @on-change="(event) => product.price = event.value"
                        ::value-label="$admin.formatPrice(product.price)"
                        position="center"
                    />
                </x-admin::form.control-group>
            </x-admin::table.td>

            <!-- Amount -->
            <x-admin::table.td class="text-right">
                <x-admin::form.control-group>
                    <x-admin::form.control-group.control
                        type="inline"
                        ::name="`${inputName}[amount]`"
                        ::value="product.price * product.quantity"
                        rules="required|decimal:4"
                        :label="trans('admin::app.leads.common.products.total')"
                        ::value-label="$admin.formatPrice(product.price * product.quantity)"
                        :allowEdit="false"
                        position="center"
                    />
                </x-admin::form.control-group>
            </x-admin::table.td>

            <!-- Action -->
            <x-admin::table.td class="text-right flex justify-end gap-3">
                <x-admin::form.control-group class="flex items-center gap-2">
                    <!-- View Icon -->
                    <a
                        v-if="product.product_id"
                        :href="`{{ url('admin/products/view/') }}/${product.product_id}`"
                        target="_blank"
                        title="View Product"
                    >
                        <i class="icon-eye cursor-pointer text-2xl text-blue-500 hover:text-blue-700"></i>
                    </a>

                    <!-- Delete Icon -->
                    <i
                        @click="removeProduct"
                        class="icon-delete cursor-pointer text-2xl text-red-500 hover:text-red-700"
                        title="Delete Product"
                    ></i>
                </x-admin::form.control-group>
            </x-admin::table.td>
        </x-admin::table.thead.tr>
    </script>

    {{-- Vue Components --}}
    <script type="module">
        app.component('v-product-list', {
            template: '#v-product-list-template',

            props: ['data'],

            data() {
                return {
                    products: this.data ? this.data : [],
                };
            },

            methods: {
                addProduct() {
                    this.products.push({
                        id: null,
                        product_id: null,
                        name: '',
                        quantity: 1,
                        price: 0,
                        amount: null,
                    });
                },

                removeProduct(product) {
                    const index = this.products.indexOf(product);
                    if (index > -1) {
                        this.products.splice(index, 1);
                    }
                },
            },
        });

        app.component('v-product-item', {
            template: '#v-product-item-template',

            props: ['index', 'product'],

            data() {
                return {
                    allProducts: [],
                    loading: false,
                };
            },

            computed: {
                inputName() {
                    return this.product.id
                        ? `products[${this.product.id}]`
                        : `products[product_${this.index}]`;
                },
            },

            mounted() {
                this.fetchProducts();
            },

            methods: {
                async fetchProducts() {
                    this.loading = true;
                    try {
                        const response = await fetch('{{ route('admin.products.search') }}');
                        const result = await response.json();
                        this.allProducts = result.data ?? result;
                    } catch (error) {
                        console.error('Error fetching products:', error);
                    } finally {
                        this.loading = false;
                    }
                },

                onProductSelect(event) {
                    const selectedId = event.target.value;
                    const selectedProduct = this.allProducts.find(p => p.id == selectedId);

                    if (selectedProduct) {
                        this.product.product_id = selectedProduct.id;
                        this.product.name = selectedProduct.name;
                        this.product.price = selectedProduct.price ?? 0;
                        this.product.quantity = 1;
                    }
                },

                removeProduct() {
                    this.$emit('onRemoveProduct', this.product);
                },
            },
        });
    </script>

    <style>
        .icon-eye, .icon-delete {
            transition: color 0.2s ease;
        }
    </style>
@endpush
