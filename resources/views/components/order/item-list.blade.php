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
        <!-- Data -->
        <p class="h5"><strong>{{ $cartItem['name'] }}</strong></p>
        <button type="button" class="btn btn-danger btn-sm me-1 mb-2" data-mdb-toggle="tooltip" title="Remove item">
            <i class="fas fa-trash"></i>
        </button>
        <button type="button" class="btn btn-secondary btn-sm mb-2" data-mdb-toggle="tooltip"
            title="Move to the wish list">
            <i class="fa-solid fa-arrows-rotate"></i>
        </button>
        <!-- Data -->
    </div>

    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
        <!-- Quantity -->
        <div class="row" style="max-width: 300px">
            <div class="col-2 me-4">
                <button class="btn btn-danger px-3"
                    onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                    <i class="fas fa-minus"></i>
                </button>
            </div>

            <div class="form-outline col-6">
                <input id="quantity" min="0" name="quantity" value="{{ $cartItem['quantity'] }}" type="number"
                    class="form-control" />
                <label class="form-label" for="form1">Số lượng</label>
            </div>

            <div class="col-2">
                <button class="btn btn-primary px-3"
                    onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
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
