<div>
    <!-- The best way to take care of the future is to take care of the present moment. - Thich Nhat Hanh -->
</div>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @include('cdn')

    <link rel="stylesheet" href="{{ asset('css/admin.style.css') }}">
</head>

<body>

    <x-admin.home.header title="Game" />

    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <x-admin.home.sidebar />
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-xxl flex-grow-1 container-p-y">
                    <div class="text-center">
                        @if ($errors->any())
                            <div class="text-danger h3 text-lg-start fw-bold">
                                Something went wrong...
                            </div>
                            <ul class="list-group list-unstyled">
                                @foreach ($errors->all() as $item)
                                    <li class="alert alert-danger">{{ $item }}</li>
                                @endforeach
                            </ul>
                        @endif
                    </div>
                    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Admin/</span>
                    </h4>
                    <div class="col-xxl">
                        <div class="card mb-4">
                            <div class="card-header d-flex align-items-center justify-content-between">
                                <h5 class="mb-0">Sửa thông tin game</h5>
                                {{-- <small class="text-muted float-end">Default label</small> --}}
                            </div>
                            <div class="card-body">
                                <form action="{{ route('updategame') }}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row mb-3 align-items-center">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">Ảnh</label>
                                        <div class="col-sm-10 ">
                                            <table>
                                                <td>
                                                    <img value="{{ $game->image }}"
                                                        src="{{ asset('images/' . $game->image) }}"width="150"
                                                        height="100" />
                                                </td>
                                                <td>
                                                    <input class="form-control" type="file" id="img"
                                                        name="img" />
                                                </td>
                                            </table>
                                        </div>
                                    </div>
                                    <input type="hidden" value="{{ $game->id }}" name="id" />
                                    <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">ID</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="game_id" name="game_id"
                                                value="{{ $game->id }}" readonly />
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">Tên Game</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="game_name" name="game_name"
                                                value="{{ $game->name }}" />
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">Mô tả</label>
                                        <div class="col-sm-10">
                                            <textarea class="form-control" name="description" id="description" cols="30" rows="10">{{ trim($game->description) }}</textarea>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">Chọn thể
                                            loại</label>
                                        <div class="col-sm-10">
                                            <input id='genres' type='hidden' name='my_match[]' />
                                            <div class='controls'>
                                                @foreach ($genres as $gen)
                                                    <div>
                                                        <label class="checkbox">
                                                            <input type="checkbox" name="my_match[]"
                                                                value="{{ $gen->id }}">{{ $gen->name }}</label>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">Chọn nhà sản
                                            xuất</label>
                                        <div class="col-sm-10">
                                            <select class="form-select" id="pub_id" name="pub_id"
                                                aria-label="Default select example">
                                                @foreach ($pubs as $nsx)
                                                    @if ($nsx->id == $game->publisher_id)
                                                        <option selected value="{{ $nsx->id }}">
                                                            {{ $nsx->name }}
                                                        </option>
                                                    @else
                                                        <option value="{{ $nsx->id }}">{{ $nsx->name }}
                                                        </option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">Giá</label>
                                        <div class="col-sm-10">
                                            <input type="number" class="form-control" id="price" name="price"
                                                value="{{ $game->price }}" />
                                        </div>
                                    </div>
                                    <div class="row justify-content-end">
                                        <div class="col-sm-10">
                                            <button type="submit" class="btn btn-primary">Sửa thông tin game</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>


    <script>
        window.addEventListener('DOMContentLoaded', event => {

            // Toggle the side navigation
            const sidebarToggle = document.body.querySelector('#sidebarToggle');
            if (sidebarToggle) {
                // Uncomment Below to persist sidebar toggle between refreshes
                // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
                //     document.body.classList.toggle('sb-sidenav-toggled');
                // }
                sidebarToggle.addEventListener('click', event => {
                    event.preventDefault();
                    document.body.classList.toggle('sb-sidenav-toggled');
                    localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains(
                        'sb-sidenav-toggled'));
                });
            }

        });

        window.addEventListener('DOMContentLoaded', event => {
            // Simple-DataTables
            // https://github.com/fiduswriter/Simple-DataTables/wiki

            const datatablesSimple = document.getElementById('datatablesSimple');
            if (datatablesSimple) {
                new simpleDatatables.DataTable(datatablesSimple);
            }
        });
    </script>
</body>

</html>
