<div class="swiper-slide swiper-slide--item">
    <img src="images/{{ $item->image }}" alt="">
    <div class="pt-1">
        <a class="text-decoration-none" href="{{ route('detailgame', ['id'=>$item->id]) }}">
            <h2>{{ $item->name }}</h2>
        </a>
        <p>{{ $item->description }}</p>
        <div class="pt-0">
            &nbsp;
        </div>
    </div>
</div>
