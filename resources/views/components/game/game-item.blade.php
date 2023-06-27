{{-- <div class="col-3 py-3 mb-3 game" id="game_table">  
    <div class="card h-100 border-0">
        <a href="{{ route('detailgame',['id'=>$game->id]) }}"
            data-bs-toggle="tooltip"
            data-bs-placement="top"
            title="{{ $game->name }}"
        >
            <img class="card-img-top game-img center-img" src="images/{{ $game->image }}" alt="..." loading="lazy" />
        </a>
        <div class="card-body">
            <div class="text-center">
                <a class="text-decoration-none text-dark" data-bs-toggle="tooltip" data-bs-placement="top"
                    title="{{ $game->name }}" href="{{ route('detailgame',$game->id) }}" >
                    <p class="">{{ $game->name }}</p>
                </a>
            </div>
        </div>
        <div class="text-center d-flex justify-content-center align-items-end">
            <h5 class="text-danger ">{{ $game->price }} đ</h5>
        </div>
        <div class="card-footer border-top-0 bg-transparent">
            <div class="align-text-bottom">
                <div>
                    <form action="{{ route('buyNow') }}" method="post">
                        @csrf
                        <input type="text" name="id" value="{{ $game->id }}" hidden>
                        <button class="btn btn-outline-primary col-12">
                            <i class="fa-solid fa-cart-shopping fa-lg"></i> Mua ngay
                        </button>
                    </form>
                </div>
                <div class="pt-2">
                    <form action="{{ route('addToCart') }}" method="post">
                        @csrf
                        <input type="text" name="id" value="{{ $game->id }}" hidden>
                        <button class="btn btn-primary col-12">
                            <i class="fa-solid fa-cart-shopping fa-lg"></i> Thêm vào giỏ
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<div class="col-md-4 border-end border-secondary">
    <div class="title text-center text-capitalize">
        <p class="display-6 text-white">Bán chạy nhất</p>
    </div>
    <hr class="border-bottom border-secondary">
    <div class="product">
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="20xx.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    20XX
                </div>
                <div class="price text-white">
                    165000 đ
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="30xx.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    30XX
                </div>
                <div class="price text-white">
                    188000 đ
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="adofai.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    A Dance of Fire and Ice
                </div>
                <div class="price text-white">
                    80000 đ
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="among-us.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    Among Us
                </div>
                <div class="price text-white">
                    70000
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="angels-of-death.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    Angels of Death
                </div>
                <div class="price text-white">
                    120000 đ
                </div>
            </div>
        </div>
    </div>
</div>

<div class="col-md-4 border-end border-secondary">
    <div class="title text-center text-capitalize">
        <p class="display-6 text-white">Đề cử tuần này</p>
    </div>
    <hr class="border-bottom border-secondary">
    <div class="product">
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="20xx.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    20XX
                </div>
                <div class="price text-white">
                    165000 đ
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="30xx.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    30XX
                </div>
                <div class="price text-white">
                    188000 đ
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="adofai.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    A Dance of Fire and Ice
                </div>
                <div class="price text-white">
                    80000 đ
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="among-us.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    Among Us
                </div>
                <div class="price text-white">
                    70000
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="angels-of-death.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    Angels of Death
                </div>
                <div class="price text-white">
                    120000 đ
                </div>
            </div>
        </div>
    </div>
</div>

<div class="col-md-4">
    <div class="title text-center text-capitalize">
        <p class="display-6 text-white">Được yêu thích nhất</p>
    </div>
    <hr class="border-bottom border-secondary">
    <div class="product">
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="20xx.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    20XX
                </div>
                <div class="price text-white">
                    165000 đ
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="30xx.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    30XX
                </div>
                <div class="price text-white">
                    188000 đ
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="adofai.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    A Dance of Fire and Ice
                </div>
                <div class="price text-white">
                    80000 đ
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="among-us.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    Among Us
                </div>
                <div class="price text-white">
                    70000
                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-5">
                <div class="img">
                    <img class="img-fluid" src="angels-of-death.webp" alt="">
                </div>
            </div>
            <div class="col-md-7">
                <div class="h5 name fw-bolder text-white">
                    Angels of Death
                </div>
                <div class="price text-white">
                    120000 đ
                </div>
            </div>
        </div>
    </div>
</div>
