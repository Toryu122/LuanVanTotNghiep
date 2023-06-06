<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    @include('cdn')
</head>

<body>
    <x-header title="Giỏ Hàng" />
    <div class="container-fluid pt-3">
        <div class="container shadow">
            <section class="h-100">
                <div class="container py-5">
                    <div class="row d-flex justify-content-center my-4">

                        {{-- Item List --}}
                        <div class="col-md-8">
                            <div class="card mb-4">
                                <div class="card-header py-3">
                                    {{-- If the session has cart in it get total quantity --}}
                                    @if (Session::has('cart'))
                                        {{-- Similar to normal PHP open tag --}}
                                        @php
                                            $quantity = 0;
                                        @endphp
                                        @foreach ((array) session('cart') as $id => $details)
                                            @php
                                                $quantity += $details['quantity'];
                                            @endphp
                                        @endforeach
                                        <h5 class="mb-0">Giỏ hàng - {{ $quantity }} món</h5>
                                    @else
                                        <h5 class="mb-0">Giỏ hàng - 0 món</h5>
                                    @endif
                                </div>
                                <div class="card-body">
                                    @if (Session::has('cart'))
                                        @foreach ((array) session('cart') as $id => $details)
                                            <x-order.item-list :cart-item="$details" />
                                        @endforeach
                                    @else
                                        <p class="h3 mb-0">Giỏ hàng trống!</p>
                                    @endif
                                </div>

                            </div>
                        </div>
                        {{-- Item List --}}

                        {{-- Payment --}}
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <div class="card-header py-3">
                                    <h5 class="mb-0">Thanh toán</h5>
                                </div>
                                <div class="card-body">
                                    <ul class="list-group list-group-flush">
                                        @php
                                            $total = 0;
                                        @endphp
                                        @if (Session::has('cart'))
                                            @foreach ((array) session('cart') as $id => $details)
                                                <li
                                                    class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                                                    {{ $details['name'] }}
                                                    <span>{{ $details['price'] }} đ</span>
                                                </li>
                                                @php
                                                    $total += $details['price'] * $details['quantity'];
                                                @endphp
                                            @endforeach
                                        @endif
                                        <li
                                            class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                            <div>
                                                <strong>Tổng cộng</strong>
                                            </div>
                                            <span><strong>{{ $total }} đ</strong></span>
                                        </li>
                                    </ul>

                                    @if (Session::has('cart'))
                                        <button type="button" class="btn btn-primary btn-lg btn-block">
                                            Go to checkout
                                        </button>
                                    @else
                                        <a href="{{ route('index') }}" class="text-decoration-none text-white">
                                            <button type="button" class="btn btn-primary btn-lg btn-block">
                                                Về trang chủ
                                            </button>
                                        </a>
                                    @endif
                                </div>
                            </div>
                        </div>
                        {{-- Payment --}}
                    </div>
                </div>
            </section>
        </div>
    </div>

</body>

<footer>
    <x-footer />
</footer>
</html>