    <div id="tab-shopping">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="panel panel-primary">
                                <div class="panel-heading">Orders</div>
                                <div class="panel-body">
                                    <div id="sp-chart-orders" style="width: 100%; height:300px"></div>
                                    <div class="order-detail">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="revenue-total">$<span id='revenue-number'>0</span></div>
                                                <div class="revenue-title">Revenue</div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="tax-total">$<span id='tax-number'>0</span></div>
                                                <div class="tax-title">Tax</div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="shipping-total">$<span id='shipping-number'>0</span></div>
                                                <div class="shipping-title">Shipping</div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="quantity-total">$<span id='quantity-number'>0</span></div>
                                                <div class="quantity-title">Tax</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel">
                                <div class="panel-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#tab-bestsellers" data-toggle="tab">Bestsellers</a></li>
                                        <li><a href="#tab-most-viewed-products" data-toggle="tab">Most Viewed Products</a></li>
                                        <li><a href="#tab-new-customers" data-toggle="tab">New Customers</a></li>
                                        <li><a href="#tab-customers" data-toggle="tab">Customers</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div id="tab-bestsellers" class="tab-pane fade in active">
                                            <table class="table table-border-dashed table-hover mbn">
                                                <thead>
                                                <tr>
                                                    <th>Product Name</th>
                                                    <th class="text-right">Price</th>
                                                    <th class="text-right">Quantity Ordered</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td><a href="#">HTC Touch Diamond</a></td>
                                                    <td class="text-right">$750.00</td>
                                                    <td class="text-right">3</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">Iphone 5s</a></td>
                                                    <td class="text-right">$600.50</td>
                                                    <td class="text-right">2</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">Pure Tulip</a></td>
                                                    <td class="text-right">$390.49</td>
                                                    <td class="text-right">26</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">Sneaky Rose</a></td>
                                                    <td class="text-right">$240.74</td>
                                                    <td class="text-right">12</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">Nokia N9</a></td>
                                                    <td class="text-right">$350.50</td>
                                                    <td class="text-right">1</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">Jasmines</a></td>
                                                    <td class="text-right">$590.29</td>
                                                    <td class="text-right">45</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div id="tab-most-viewed-products" class="tab-pane fade">...</div>
                                        <div id="tab-new-customers" class="tab-pane fade">...</div>
                                        <div id="tab-customers" class="tab-pane fade">...</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="lifetime-sales">
                                        <div class="row">
                                            <div class="col-md-4 text-center">
                                                <div class="ls-chart"><input type="text" rel="75" value="0" data-width="75" data-height="75" data-readOnly="true" data-min="0" data-max="100" class="dial"/></div>
                                            </div>
                                            <div class="col-md-8 mts">
                                                <div class="ls-total">$<span id='ls-number'>0</span></div>
                                                <div class="ls-title">Lifetime Sales</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="average-orders">
                                        <div class="row">
                                            <div class="col-md-4 text-center">
                                                <div class="ao-chart"><input type="text" rel="35" value="0" data-width="75" data-height="75" data-readOnly="true" data-min="0" data-max="100" class="dial"/></div>
                                            </div>
                                            <div class="col-md-8 mts">
                                                <div class="ao-total">$<span id='ao-number'>0</span></div>
                                                <div class="ao-title">Average Orders</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-primary">
                                <div class="panel-heading">Last 5 Orders</div>
                                <div class="panel-body">
                                    <table class="table table-border-dashed table-hover mbn">
                                        <thead>
                                        <tr>
                                            <th>Customer</th>
                                            <th class="text-right">Items</th>
                                            <th class="text-right">Grand Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><a href="#">John Doe</a></td>
                                            <td class="text-right">3</td>
                                            <td class="text-right">$1,129.94</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Arthur Bishop</a></td>
                                            <td class="text-right">1</td>
                                            <td class="text-right">$816.00</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Jerry Rice</a></td>
                                            <td class="text-right">1</td>
                                            <td class="text-right">$362.00</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Luis Gjoni</a></td>
                                            <td class="text-right">2</td>
                                            <td class="text-right">$124.00</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Martha Palmer</a></td>
                                            <td class="text-right">5</td>
                                            <td class="text-right">$1,724.00</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel panel-primary">
                                <div class="panel-heading">Last 5 Search Terms</div>
                                <div class="panel-body">
                                    <table class="table table-border-dashed table-hover mbn">
                                        <thead>
                                        <tr>
                                            <th>Search Term</th>
                                            <th class="text-right">Results</th>
                                            <th class="text-right">Number Uses</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><a href="#">MALE</a></td>
                                            <td class="text-right">0</td>
                                            <td class="text-right">1</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">gender</a></td>
                                            <td class="text-right">0</td>
                                            <td class="text-right">1</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">shirt</a></td>
                                            <td class="text-right">5</td>
                                            <td class="text-right">440</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Shoes</a></td>
                                            <td class="text-right">5</td>
                                            <td class="text-right">1</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">FOOD</a></td>
                                            <td class="text-right">1</td>
                                            <td class="text-right">371</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>