<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @include('cdn')
</head>

<body>
    <div>
        <x-header title="Đăng Ký" />
    </div>
    <div class="container col-8 pt-3">
        <div class="text-center">
            @if (Session::has('signup_success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong class="h4">{{ Session::get('signup_success') }}</strong>
                    <hr class="py-0 text-success" />
                    <p>
                        Hãy kiểm tra email bạn vừa đăng ký để xác thực tài khoản
                    </p>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif
        </div>
    </div>
    <section class="backgroundBody pb-5">
        <div class="container-fluid col-md-4 col-sm-12  mt-4 text-white ">
            <div class="loginForm py-4 px-4">
                <h1 class="text-center">
                    <stroke>Đăng Ký</stroke><br>
                </h1>
                <div class="text-center">
                    @if (Session::has('user_already_exist'))
                        <div class="invalid-feedback d-block" role="alert">
                            <strong>{{ Session::get('user_already_exist') }}</strong>
                        </div>
                    @endif
                </div>
                <form action="{{ route('createUser') }}" method="POST">
                    @csrf

                    <div class="form-group">
                        <label>Email</label>
                        <input name="email" type="email" class="form-control" placeholder="Email">
                        @error('email')
                            <div class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </div>
                        @enderror
                    </div>
                    <div class="form-group pt-3">
                        <label>Họ tên</label>
                        <input name="name" type="text" class="form-control" placeholder="Họ tên">
                        @error('name')
                            <div class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </div>
                        @enderror
                    </div>
                    <div class="form-group pt-3">
                        <label>Mật Khẩu</label>
                        <input name="password" type="password" class="form-control" placeholder="Mật khẩu">
                        @error('password')
                            <div class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </div>
                        @enderror
                    </div>
                    <div class="form-group pt-3">
                        <label>Nhập Lại Mật Khẩu</label>
                        <input name="password_confirmation" type="password" class="form-control"
                            placeholder="Nhập lại mật khẩu">
                        @error('password_confirmation')
                            <div class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </div>
                        @enderror
                    </div>
                    <div class="form-group pt-4">
                        <button type="submit" class="btn btn-primary col-12">Đăng Ký</button>
                    </div>
                </form>
                <div class="text-center pt-4">
                    <a href="{{ route('login') }}">
                        Bạn đã có tài khoản? Đăng nhập ngay
                    </a>
                </div>
            </div>
        </div>
    </section>

</body>

</html>
