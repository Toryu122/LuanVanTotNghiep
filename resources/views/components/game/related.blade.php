<div class="col-3 py-3 mb-3 game">
    <div class="card h-100 border-0">
        <a data-bs-toggle="tooltip" data-bs-placement="top" title="{{ $related->name }}" href="{{ route('detailgame',['id'=>$related->id])}}">
            <img class="card-img-top game-img center-img" src="../images/{{ $related->image }}" alt="..."
                loading="lazy" />
        </a>
        <div class="card-body">
            <div class="text-center">
                <a class="text-decoration-none text-dark" data-bs-toggle="tooltip" data-bs-placement="top"
                    title="{{ $related->name }}" href="{{ route('detailgame',['id'=>$related->id]) }}">
                    <p class="">{{ $related->name }}</p>
                </a>
            </div>
        </div>
        <div class="text-center d-flex justify-content-center align-items-end">
            <h5 class="text-danger">{{ $related->price }} đ</h5>
        </div>
    </div>
</div>



<!-- Nothing worth having comes easy. - Theodore Roosevelt -->
