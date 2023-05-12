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
        <x-header title="Đăng Nhập" />
    </div>
    <section class="container-fluid backgroundBody pb-5">
        <div class="container-fluid col-4 mt-4 text-white ">
            <div class="loginForm py-4 px-4">
                <h1 class="text-center">
                    <stroke class="mb-2">Đăng Nhập</stroke>
                </h1>
                <div class="text-center">
                    <small>
                        <i>Đăng nhập để được nhiều ưu đãi và bảo mật thông
                            tin!</i>
                    </small>
                </div>
                <form action="{{ route('loginUser') }}" method="POST">
                    @csrf
                    <div class="form-group pt-3">
                        <label for="exampleInputEmail1">Email</label>
                        <input name="email" type="email" class="form-control" placeholder="Email">
                        @error('email')
                            <div class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </div>
                        @enderror
                    </div>
                    <div class="form-group pt-3">
                        <label for="exampleInputPassword1">Mật Khẩu</label>
                        <input name="password" type="password" class="form-control" id="exampleInputPassword1"
                            placeholder="Mật khẩu">
                        @error('password')
                            <div class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </div>
                        @enderror
                    </div>
                    <div class="form-group pt-4">
                        <button type="submit" class="btn pt-2 btn-primary col-12">Đăng Nhập</button>
                    </div>
                </form>
                <div class="text-center pt-2"><a href="{{ route('signup') }}">Bạn chưa có tài khoản?</a></div>
            </div>
        </div>
    </section>
</body>

</html>
