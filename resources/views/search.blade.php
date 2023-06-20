<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    @include('cdn')
</head>

<body>
    <x-header title="Tìm kiếm sản phẩm" />

    {{ $query }}
    {{-- {{ dd($games) }} --}}
    <div id="filter" class="container pt-3">
        <div class="fw-bold">
            <h3>Tìm kiếm sản phẩm</h3>
        </div>
        <form action="{{ route('searchPage') }}" method="GET">
            <div class="row">
                <div class="col-2">
                    <div class="form-floating">
                        <select class="form-select mb-3" name="genre" id="genre">
                            <option value="">Tất cả</option>
                            <x-genre-option />
                        </select>
                        <label for="genre">Chọn thể loại</label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-floating mb-3">
                                <input type="number" name="fromPrice" class="form-control" id="fromPrice"
                                    placeholder="Mức giá từ" />
                                <label for="fromPrice">Mức giá từ</label>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-floating">
                                <input type="number" name="toPrice" class="form-control" id="toPrice"
                                    placeholder="Mức giá đến" />
                                <label for="toPrice">Mức giá đến</label>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-2">
                    <div class="form-floating">
                        <select class="form-select mb-3" name="sortBy" id="sortBy">
                            <option value="">Mặc định</option>
                            <option value="bestSale">Bán chạy nhất</option>
                            <option value="lowest">Giá thấp nhất</option>
                            <option value="highest">Giá cao nhất</option>
                            <option value="AZ">Theo tên A => Z</option>
                            <option value="ZA">Theo tên Z => A</option>
                        </select>
                        <label for="sortBy">Sắp xếp theo</label>
                    </div>
                </div>
                <div class="col-2">
                    <button class="col-md-12 btn btn-info btn-lg">
                        <i class="fa-solid fa-filter"></i> Lọc sản phẩm
                    </button>
                </div>
            </div>
        </form>
    </div>

    <div class="container" id="content">
        <div class="container" id="game-list">
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
    </div>
</body>

<footer class="mt-auto">
    <x-footer />
</footer>

</html>
