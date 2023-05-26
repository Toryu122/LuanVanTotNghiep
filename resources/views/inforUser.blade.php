
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    @include('cdn')
</head>
<body>
    <x-header title="Thông Tin Tài Khoản"/>
    <div class="card container col-4">
        <h5 class="card-header">Thông tin tài khoản</h5>
        <div class="table-responsive text-nowrap">
          <p >Tên tài khoản: {{ auth()->user()->name }} </p>  
          <p>Mail: {{ auth()->user()->email }} </p>  
        </div>
    </div>
</body>
</html>