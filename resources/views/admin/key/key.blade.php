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
                                        <th scope="row">Ngày tạo</th>
                                        <th scope="row">Ngày sửa</th>
                                        <th scope="row" data-sortable="false"></th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th scope="row">Key</th>
                                        <th scope="row">Game</th>
                                        <th scope="row">Ngày tạo</th>
                                        <th scope="row">Ngày sửa</th>
                                        <th scope="row" data-sortable="false"></th>
                                        {{-- <th data-sortable="false"></th> --}}
                                    </tr>
                                </tfoot>
                                <tbody class="table-border-bottom-0">
                                    @foreach ($keys as $item)
                                        <tr>
                                            <td>{{ $item->cd_key }}</td>
                                            <td>{{ $item->game->name }}</td>
                                            <td>{{ date('d-m-Y', strtotime($item->created_at)) }}</td>
                                            <td>{{ date('d-m-Y', strtotime($item->updated_at)) }}</td>
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
                                                                                <div id="datepicker"
                                                                                    class="input-group date"
                                                                                    data-date-format="dd-mm-yyyy">
                                                                                    <input class="form-control"
                                                                                        name="expiredate"
                                                                                        id="expiredate" type="text">
                                                                                    <span class="input-group-addon">
                                                                                        <i
                                                                                            class="glyphicon glyphicon-calendar"></i>
                                                                                    </span>
                                                                                </div>
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
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>

            <div class="modal fade" id="addKey" tabindex="-1" aria-labelledby="addRoleModal" aria-hidden="true">
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
                                <form method="POST" action="{{ route('storekey') }}">
                                    @csrf
                                    <div class="row">
                                        <label class="col-sm-2 col-md-3 form-label" for="cd_key">Key</label>
                                        <div class="col-sm-10 col-md-9">
                                            <input value="" type="text" class="form-control" id="cd_key"
                                                name="cd_key" />
                                        </div>
                                    </div>
                                    <div class="row pt-2">
                                        <label class="col-sm-2 col-md-3 form-label" for="game_id">Game</label>
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
                                            <div id="datepicker" class="input-group date"
                                                data-date-format="dd-mm-yyyy">
                                                <input class="form-control" name="expiredate" id="expiredate"
                                                    type="text">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-calendar"></i>
                                                </span>
                                            </div>
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

            $(function() {
                $("#datepicker").datepicker({
                    autoclose: true,
                    todayHighlight: true
                }).datepicker('update', new Date());
            });
        </script>
</body>

</html>
