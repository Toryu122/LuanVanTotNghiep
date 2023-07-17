<div>
    <!-- The whole future lies in uncertainty: live immediately. - Seneca -->
</div>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @include('cdn')
    <link rel="stylesheet" href="{{ asset('css/admin.style.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.css"
        integrity="sha512-oe8OpYjBaDWPt2VmSFR+qYOdnTjeV9QPLJUeqZyprDEQvQLJ9C5PCFclxwNuvb/GQgQngdCXzKSFltuHD3eCxA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>

    <x-admin.home.header title="Key" />

    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <x-admin.home.sidebar />
        </div>
        <!--Vi tri content margin-left: 20px !important -->

        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
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
                    <div class="text-center">
                        @if (Session::has('delete_success'))
                            <div class="alert alert-success" role="alert">
                                <strong>{{ Session::get('delete_success') }}</strong>
                            </div>
                        @endif
                    </div>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            Keys
                        </div>
                        <div class="card-body">

                            <div class="pb-3">
                                <button type="button" class="text-white btn btn-default btn-sm" data-bs-toggle="modal"
                                    data-bs-target="#addKey">
                                    <i class="fa-solid fa-plus"></i> Thêm key
                                </button>
                            </div>

                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th scope="row">Key</th>
                                        <th scope="row">Game</th>
                                        <th scope="row">Status</th>
                                        <th scope="row">Expire Date</th>
                                        <th scope="row" data-sortable="false"></th>
                                        <th scope="row" data-sortable="false"></th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th scope="row">Key</th>
                                        <th scope="row">Game</th>
                                        <th scope="row">Status</th>
                                        <th scope="row">Expire Date</th>
                                        <th scope="row" data-sortable="false"></th>
                                        <th scope="row" data-sortable="false"></th>
                                        {{-- <th data-sortable="false"></th> --}}
                                    </tr>
                                </tfoot>
                                <tbody class="table-border-bottom-0">
                                    @foreach ($keys as $item)
                                        <tr>
                                            <td>{{ Helper::decrypt($item->cd_key, 'cdkey') }}</td>
                                            <td>{{ $item->game->name }}</td>
                                            @if ($item->is_redeemed === 0)
                                                <td>Chưa bán</td>
                                            @else
                                                <td>Đã bán</td>
                                            @endif
                                            @if ($item->expire_date === null)
                                                <td>Không có</td>
                                            @else
                                                <td>{{ date('d-m-Y', strtotime($item->expire_date)) }}</td>
                                            @endif
                                            <td>
                                                <button type="button" class="text-white btn btn-default btn-sm"
                                                    data-bs-toggle="modal" data-bs-target="#key_{{ $item->id }}">
                                                    <i class="fas fa-info me-2"></i> Sửa
                                                </button>

                                                <div class="modal fade" id="key_{{ $item->id }}" tabindex="-1"
                                                    aria-labelledby="userDetailModal" aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-centered modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header border-bottom-0">
                                                                <p class="h3 mb-0" style="color: #35558a;">
                                                                    Sửa key
                                                                </p>
                                                                <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body text-start text-black p-4">
                                                                <div class="mb-3">
                                                                    <form method="POST"
                                                                        action="{{ route('updatekey', ['id' => $item->id]) }}">
                                                                        @csrf
                                                                        @method('put')
                                                                        <div class="row">
                                                                            <label class="col-sm-2 col-md-3 form-label"
                                                                                for="cd_key">Key</label>
                                                                            <div class="col-sm-10 col-md-9">
                                                                                <input value="{{ $item->cd_key }}"
                                                                                    type="text" class="form-control"
                                                                                    id="cd_key" name="cd_key" />
                                                                            </div>
                                                                        </div>
                                                                        <div class="row pt-2">
                                                                            <label class="col-sm-2 col-md-3 form-label"
                                                                                for="expiredate">Ngày hết
                                                                                hạn</label>
                                                                            <div class="col-sm-10 col-md-9">
                                                                                <input class="date form-control"
                                                                                    name="expiredate" type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="row pt-2">
                                                                            <div class="col-md-10">
                                                                            </div>
                                                                            <div
                                                                                class="col-md-2 d-flex justify-content-end">
                                                                                <button type="submit"
                                                                                    class="btn btn-primary">Cập
                                                                                    nhật</button>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <button type="button" class="text-white btn btn-danger"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#deleteKey{{ $item->id }}">
                                                    <i class="fa-solid fa-trash-can"></i> Xóa
                                                </button>

                                                <div class="modal" id="deleteKey{{ $item->id }}"
                                                    tabindex="-1">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">

                                                            <form method="post"
                                                                action="{{ route('deletekey', ['id' => $item->id]) }}">
                                                                @csrf
                                                                @method('delete')<div class="modal-header">
                                                                    <h5 class="modal-title">Xóa key
                                                                    </h5>
                                                                    <button type="button" class="btn-close"
                                                                        data-bs-dismiss="modal"
                                                                        aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <p>Bạn có chắc muốn xóa key này?
                                                                    </p>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button class="btn btn-danger">Xóa</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>




            <div class="modal fade" id="addKey" tabindex="-1" aria-labelledby="addRoleModal"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header border-bottom-0">
                            <p class="h3 mb-0" style="color: #35558a;">
                                Thêm key
                            </p>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body text-start text-black p-4">
                            <div class="mb-3">
                                <!-- Tabs navs -->
                                <ul class="nav nav-tabs nav-justified mb-3" id="ex1" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link active" id="ex3-tab-1" data-bs-toggle="tab"
                                            href="#ex3-tabs-1" role="tab" aria-controls="ex3-tabs-1"
                                            aria-selected="true">Thêm 1 key</a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" id="ex3-tab-2" data-bs-toggle="tab" href="#ex3-tabs-2"
                                            role="tab" aria-controls="ex3-tabs-2" aria-selected="false">Thêm bằng
                                            file (.CSV)</a>
                                    </li>
                                </ul>
                                <!-- Tabs navs -->


                                <!-- Tabs content -->
                                <div class="tab-content" id="ex2-content">
                                    <div class="tab-pane fade show active" id="ex3-tabs-1" role="tabpanel"
                                        aria-labelledby="ex3-tab-1">
                                        <form method="POST" action="{{ route('storekey') }}">
                                            <div class="text-sm">
                                                <small class="text-secondary">Choose one of these format:</small><br>
                                                <small class="text-secondary">
                                                    AAAAA-BBBBB-CCCCC-DDDDD-EEEEE
                                                </small><br>
                                                <small class="text-secondary">
                                                    AAAAA-BBBBB-CCCCC-AAAAA-BBBBB-CCCCC-DDDDD-EEEEE
                                                </small>
                                            </div>
                                            <br>
                                            @csrf
                                            <div class="row">
                                                <label class="col-sm-2 col-md-3 form-label" for="cd_key">Key</label>
                                                <div class="col-sm-10 col-md-9">
                                                    <input value="" type="text" class="form-control"
                                                        id="cd_key" name="cd_key" />
                                                </div>
                                            </div>
                                            <div class="row pt-2">
                                                <label class="col-sm-2 col-md-3 form-label"
                                                    for="game_id">Game</label>
                                                <div class="col-sm-10 col-md-9">
                                                    <select class="form-select" id="pub_id" name="game_id"
                                                        aria-label="Default select example">
                                                        @foreach ($games as $item)
                                                            <option class="form-contorl" value="{{ $item->id }}">
                                                                {{ $item->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row pt-2">
                                                <label class="col-sm-2 col-md-3 form-label" for="expiredate">Ngày hết
                                                    hạn</label>
                                                <div class="col-sm-10 col-md-9">
                                                    <input class="date form-control" name="expiredate"
                                                        type="text">
                                                </div>
                                            </div>
                                            <div class="row pt-2">
                                                <div class="col-md-10">
                                                </div>
                                                <div class="col-md-2 d-flex justify-content-end">
                                                    <button type="submit" class="btn btn-primary">
                                                        Thêm
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="ex3-tabs-2" role="tabpanel"
                                        aria-labelledby="ex3-tab-2">

                                        <form method="POST" action="{{ route('storekey') }}"
                                            enctype="multipart/form-data">
                                            @csrf
                                            <div class="row pt-2">
                                                <label class="col-sm-2 col-md-2 form-label" for="cd_key">Key
                                                    File</label>
                                                <div class="col-sm-10 col-md-10">
                                                    <input type="file" class="form-control" id="csv_file"
                                                        name="csv_file">
                                                    <small class="text-secondary">
                                                        Accepted file extension: .csv, .txt
                                                    </small><br>
                                                    <small class="text-secondary">
                                                        Format: cd_key,game_id,expire_date
                                                    </small>
                                                </div>
                                            </div>
                                            <div class="row pt-2">
                                                <div class="col-md-10">
                                                </div>
                                                <div class="col-md-2 d-flex justify-content-end">
                                                    <button type="submit" class="btn btn-primary">
                                                        Thêm
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- Tabs content -->
                            </div>

                        </div>
                    </div>
                </div>
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

            $('.date').datepicker({
                format: 'mm-dd-yyyy'
            });
        </script>
</body>

</html>
