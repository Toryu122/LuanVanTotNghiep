<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    @include('cdn')
</head>

<body class="d-flex flex-column min-vh-100">
    <x-header title="Cài Đặt Tài Khoản" />
    <div class="container p-0">
        <h1 class="h3 mb-3">&nbsp;</h1>

        <div class="row">
            {{-- Tab Menu --}}
            <div class="col-md-5 col-xl-4">
                <div class="card info">
                    <div class="card-header">
                        <h5 class="card-title mb-0">Cài đặt tài khoản</h5>
                    </div>

                    <div class="list-group list-group-flush" role="tablist">
                        <a class="list-group-item list-group-item-action active" data-bs-toggle="list" href="#account"
                            role="tab">
                            Thông tin tài khoản
                        </a>
                        <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#password"
                            role="tab">
                            Đổi mật khẩu
                        </a>
                        <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#order"
                            role="tab">
                            Lịch sử mua hàng
                        </a>
                    </div>
                </div>
            </div>
            {{-- Tab Menu --}}

            {{-- Content --}}
            <div class="col-md-7 col-xl-8">
                <div class="tab-content">

                    <x-user.basic-info />

                    <x-user.change-password />

                    <x-user.order-history />

                </div>
            </div>
            {{-- Content --}}
        </div>
    </div>
</body>

<footer class="mt-auto">
    <x-footer />
</footer>

</html>
