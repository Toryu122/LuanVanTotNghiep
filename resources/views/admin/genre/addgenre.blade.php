<div>
    <!-- It is quality rather than quantity that matters. - Lucius Annaeus Seneca -->
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
                    </h4>
                    <div class="col-xxl">
                        <div class="card mb-4">
                            <div class="card-header d-flex align-items-center justify-content-between">
                                <h5 class="mb-0">Thêm thể loại</h5>
                                {{-- <small class="text-muted float-end">Default label</small> --}}
                            </div>
                            <div class="card-body">
                                <form action="{{ route('storegenre') }}" method="POST">
                                    @csrf
                                    <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">Tên thể
                                            loại</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="genre"
                                                name="name" />
                                        </div>
                                    </div>
                                    <div class="row justify-content-end">
                                        <div class="col-sm-10">
                                            <button type="submit" class="btn btn-primary">Thêm thể loại</button>
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
</body>

</html>
