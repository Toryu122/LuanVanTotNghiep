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
        <x-header title="Trang Chủ" />
    </div>

    {{-- <div class="container py-4">
        <swiper-container style="--swiper-navigation-color: #3faede; --swiper-pagination-color: #fff"
            class="mySwiper shadow-sm rounded" navigation="true" loop="true" space-between="30" centered-slides="true"
            autoplay-delay="2500" autoplay-disable-on-interaction="false">
            @foreach ($banner as $new)
                <x-books.carouselitem :banner="$new" />
            @endforeach
        </swiper-container>
    </div> --}}

    <div class="container">
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

    
</body>

</html>
