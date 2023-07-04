<div class="tab-pane fade" id="order" role="tabpanel">
    <div class="card info">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Lịch sử mua hàng
        </div>
        <div class="card-body">
            <div class="rounded">
                <div class="mt-3">
                    <table class="" id="datatablesSimple" style="border: 1px solid #ccc; padding: 8px;">
                        <thead>
                            <tr>
                                <th scope="row">Mã đơn</th>
                                <th scope="row">Loại thanh toán</th>
                                <th scope="row">Ngày thanh toán</th>
                                <th scope="row">Trạng thái</th>
                                <th scope="row">Tổng tiền</th>
                                <th scope="row" data-sortable=false></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th scope="row">Mã đơn hàng</th>
                                <th scope="row">Loại thanh toán</th>
                                <th scope="row">Ngày thanh toán</th>
                                <th scope="row">Trạng thái</th>
                                <th scope="row">Tổng tiền</th>
                                <th scope="row" data-sortable=false></th>
                            </tr>
                        </tfoot>
                        <tbody class="table-border-bottom-0">
                            @foreach ($orders as $item)
                                <tr>
                                    <td>{{ $item->order_id_ref }}</td>
                                    <td>{{ $item->pay_type }}</td>
                                    <td>{{ date('d-m-Y', strtotime($item->created_at)) }}</td>
                                    <td>{{ $item->order_status }}</td>
                                    <td>{{ number_format($item->total, 0, ',', '.') }}đ</td>
                                    <td>
                                        <button type="button" class="btn btn-outline-primary btn-sm" data-bs-toggle="modal"
                                            data-bs-target="#{{ $item->order_status }}_{{ $item->order_id_ref }}">
                                            <i class="fas fa-info me-2"></i> Chi tiết
                                        </button>

                                        <div class="modal fade" id="{{ $item->order_status }}_{{ $item->order_id_ref }}"
                                            tabindex="-1" aria-labelledby="orderDetailModal" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header border-bottom-0">
                                                        
                                                        <p class="h3 mb-0" style="color: #35558a;">Chi tiết đơn hàng</p>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body text-start text-black p-4">
                                                        <hr class="mt-2 mb-4"
                                                            style="height: 0; background-color: transparent; opacity: .75; border-top: 2px dashed #9e9e9e;">
                                                        @foreach ($item->orderDetails as $detail)
                                                            <div class="d-flex justify-content-between">
                                                                <p class="fw-bold mb-0">
                                                                    {{ $detail->name }} x{{ $detail->quantity }}
                                                                </p>
                                                                <p class="text-muted mb-0">
                                                                    {{ number_format($detail->price, 0, ',', '.') }}đ
                                                                </p>
                                                            </div>
                                                        @endforeach

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
