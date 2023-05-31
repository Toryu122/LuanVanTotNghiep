<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @include('cdn')
</head>

<body>
    <div>
        <x-header title="Thông tin trò chơi" />
    </div>

    <div class="container">
        <!-- col-lg-10 border p-3 main-section bg-white -->
        <div class="col-lg-10 border main-section p-3 bg-white">
            <div class="row m-0">
                <div class="col-lg-4 left-side-product-box pb-3">
                    <img src="../images/{{ $game->image }}" class=" border-0 p-3 " />
                </div>
                <div class="col-lg-8">
                    <div class="right-side-pro-detail border-0 p-3 m-0">
                        <div class="row">
                            <div class="col-lg-12">
                                <p class="m-0 p-0">{{ $game->name }}</p>
                            </div>
                            <div class="col-lg-12">
                                <p class="m-0 p-0 price-pro">{{ $game->price }} đ</p>
                                <hr class="p-0 m-0" />
                            </div>
                            <div class="col-lg-12 pt-2">
                                <h5>Mô tả</h5>
                                <span>{{ $game->description }}</span>
                                <hr class="m-0 pt-2 mt-2" />
                            </div>
                            <div class="col-lg-12">
                                <h6>Quantity :</h6>
                                <input type="number" class="form-control text-center w-100" value="1" />
                            </div>
                            <div class="col-lg-12 mt-3">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <a href="#" class="btn btn-primary w-100"><i
                                                class="fa-solid fa-credit-card"></i> Mua ngay</a>
                                    </div>
                                    <div class="col-lg-6 pb-2">
                                        <a href="#" class="btn btn-secondary w-100"><i
                                                class="fa-solid fa-cart-shopping"></i> Thêm vào
                                            giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Khung Sản Phẩm -->

    <!-- Bài Viết Của Sản Phẩm -->
    <div class="container">

    </div>
    <!-- Bài Viết Của Sản Phẩm -->

    <!-- Sản Phẩm Liên Quan -->
    <div class="container pt-5">
        <div class="container">
            <p class="h3">Sản phẩm liên quan</p>
            <div class="row">
                @foreach ($related as $item)
                    <x-game.related :related="$item" />
                @endforeach
            </div>
        </div>
    </div>
    <!-- Sản Phẩm Liên Quan -->

    <script src="./js/script.js"></script>

</body>

</html>
