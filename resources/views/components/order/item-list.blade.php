<!-- Single item -->
<div class="row">
    <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
        <!-- Image -->
        <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
            <img src="images/{{ $cartItem['image'] }}" class="rounded shadow-sm w-100" alt="{{ $cartItem['image'] }}" />
            <a href="#!">
                <div class="mask" style="background-color: rgba(251, 251, 251, 0.2)">
                </div>
            </a>
        </div>
        <!-- Image -->
    </div>

    <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
        <div class="row">
            <!-- Data -->
            <p class="h5"><strong>{{ $cartItem['name'] }}</strong></p>
            <div class="col-2">
                <form action="{{ route('removeItem') }}" method="post">
                    @csrf
                    @method('delete')
                    <input name="id" type="text" value="{{ $cartItem['id'] }}" hidden>
                    <button name="delete" type="submit" class="btn btn-danger btn-sm me-1 mb-2"
                        data-mdb-toggle="tooltip" title="Remove item">
                        <i class="fas fa-trash"></i>
                    </button>
                </form>
            </div>
            <div class="col-2">

            </div>
            <!-- Data -->
        </div>
    </div>

    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
        <!-- Quantity -->
        <div class="row" style="max-width: 300px">
            <div class="col-2 me-4">
                <button class="btn btn-danger px-3" onclick="decrementQuantity(this)">
                    <i class="fas fa-minus"></i>
                </button>
            </div>

            <div class="form-outline col-6">
                <div class="text-center">
                    <form action="{{ route('updateCart') }}" method="post">
                        @csrf
                        @method('put')
                        <input name="id" type="text" value="{{ $cartItem['id'] }}" hidden>
                        <input id="quantity" min="1" name="quantity" value="{{ $cartItem['quantity'] }}"
                            type="number" class="form-control" />
                        <div class="pt-1">
                            <button type="submit" class="btn btn-secondary btn-sm mb-2" data-mdb-toggle="tooltip"
                                title="Move to the wish list">
                                <i class="fa-solid fa-arrows-rotate"></i> &nbsp;Cập nhật
                            </button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="col-2">
                <button class="btn btn-primary px-3" onclick="incrementQuantity(this)">
                    <i class="fas fa-plus"></i>
                </button>
            </div>
        </div>
        <!-- Quantity -->

        <!-- Price -->
        <p class="h4 text-start text-md-center">
            <strong>{{ $cartItem['price'] }} đ</strong>
        </p>
        <!-- Price -->
    </div>
</div>
<!-- Single item -->

<hr class="my-4" />
