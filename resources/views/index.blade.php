<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @include('cdn')


</head>

<body class="d-flex flex-column min-vh-100">
    <div>
        <x-header title="Trang Chủ" />
    </div>

    <div class="container pt-3">
        <x-carousel />
    </div>

    <div class="container pt-5">
        <p class="h3">Lọc theo giá</p>
        <x-recommend-price />
    </div>

    <div class="container">
        <p class="h3">Sản phẩm nổi bật</p>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            @foreach ($games as $item)
                <x-game.game-item :game="$item" />
            @endforeach
        </div>
    </div>

    <div class="container text-center d-flex justify-content-center">
        <div class="text-center">
            {{ $games->links() }}
        </div>
    </div>


    <script src="{{ asset('js/script.js') }}"></script>
</body>
<footer class="mt-auto">
    <x-footer />
</footer>

</html>
