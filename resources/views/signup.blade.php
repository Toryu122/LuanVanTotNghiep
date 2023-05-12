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

    <section class="backgroundBody pb-5">
        <div class="container-fluid col-4 mt-4 text-white ">
            <div class="loginForm py-4 px-4">
                <h1 class="text-center">
                    <stroke>Đăng Ký</stroke><br>
                </h1>
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
            </div>
        </div>
    </section>

</body>

</html>
