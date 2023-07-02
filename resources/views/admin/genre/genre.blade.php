<div>
    <!-- Be present above all else. - Naval Ravikant -->
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

    <x-admin.home.header title="Genre" />

    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <x-admin.home.sidebar />
        </div>
        <!--Vi tri content margin-left: 20px !important -->

        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <div class="text-center">
                        @if (Session::has('game_existed'))
                            <div class="alert alert-danger" role="alert">
                                <strong>{{ Session::get('game_existed') }}</strong>
                            </div>
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
                            Genres
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        {{-- <th>Ảnh</th> --}}
                                        {{-- <th>Mã game</th> --}}
                                        <th>Tên</th>
                                        <th>Ngày Tạo</th>
                                        <th>Ngày Sửa</th>
                                        <th data-sortable="false"></th>
                                        <th data-sortable="false"></th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        {{-- <th>Ảnh</th> --}}
                                        {{-- <th>Mã game</th> --}}
                                        <th>Tên</th>
                                        <th>Ngày Tạo</th>
                                        <th>Ngày Sửa</th>
                                        <th data-sortable="false"></th>
                                        <th data-sortable="false"></th>
                                    </tr>
                                </tfoot>
                                <tbody class="table-border-bottom-0">
                                    @foreach ($genres as $item)
                                        <tr>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ date('d-m-Y', strtotime($item->created_at)) }}</td>
                                            <td>{{ date('d-m-Y', strtotime($item->updated_at)) }}</td>
                                            <td>
                                                <form method="GET"
                                                    action="{{ route('editgenre', ['id' => $item->id]) }}">
                                                    @csrf
                                                    <button class="btn btn-warning">Sửa</button>
                                                </form>
                                            </td>
                                            <td>
                                                <form method="post"
                                                    action="{{ route('deletegenre', ['id' => $item->id]) }}">
                                                    @csrf
                                                    @method('delete')
                                                    <button class="btn btn-danger">Xóa</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
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
