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
    <x-header title="Trang Quản Trị Game" />
</head>

<body>
    <div id="layoutSidenav">
        <x-admin.layouts.sidenav />
        <!--Vi tri content margin-left: 20px !important -->
        <div id="layoutSidenav_content">
            <table class="table table-dark">
                <thead>
                    <tr>
                        <th>Ảnh</th>
                        <th>Mã game</th>
                        <th>Tên</th>
                        <th>Giá</th>
                        <th>Ngày Tạo</th>
                        <th>Ngày Sửa</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0 text-light">
                    @foreach ($games as $item)
                        <tr>
                            <td><img src="../images/{{ $item->image }}"width="150" height="100" /></td>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->name }}</td>
                            <td>{{ $item->price }}</td>
                            <td>{{ date('d-m-Y', strtotime($item->created_at)) }}</td>
                            <td>{{ date('d-m-Y', strtotime($item->updated_at)) }}</td>
                            <td><a href="{{ route('editgame', ['id' => $item->id]) }}" type="submit"
                                    class="btn btn-outline-warning">Sửa</a></td>
                            <td><a href="{{ route('deletegame', ['id' => $item->id]) }}" type="submit"
                                    class="btn btn-outline-danger">Xóa</a></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</body>
<x-footer />

</html>
