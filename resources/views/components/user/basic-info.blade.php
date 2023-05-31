
<div class="tab-pane fade show active" id="account" role="tabpanel">
    <div class="card">
        <div class="card-header">
            <div class="card-actions float-right">
            </div>
            <h5 class="card-title mb-0">Thông tin cơ bản</h5>
        </div>
        <div class="card-body">
            <form method="post" action="{{ route('editUser') }}" enctype="multipart/form-data">
                @csrf
                <input name="form"type="text" value="1" hidden/>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="name">Tên người dùng</label>
                            <input name="name" type="text" class="form-control" id="name"
                                placeholder="Tên người dùng" value="{{ auth()->user()->name }}" />
                                @error('name')
                            <div class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </div>
                        @enderror
                        </div>
                        
                        <div class="form-group pt-2">
                            <label for="bio">Ghi chú</label>
                            <textarea name="bio" rows="4" class="form-control" id="bio" placeholder="Mô tả ngắn gọn về bạn"></textarea>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="text-center">
                            <p class="h5">Ảnh đại diện</p>

                            <img alt="{{ auth()->user()->avatar }}" src="../images/avatars/{{ auth()->user()->avatar }}')"
                                class="rounded-circle img-responsive mt-2" width="128" height="128"
                                name="" />
                            <div class="mt-2">

                                <input name="avatar" type="file" class="form-control" id="avatar"/>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="pt-2">
                    <button type="submit" class="btn btn-primary">
                        Lưu thay đổi
                    </button>
                </div>
            </form >
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <div class="card-actions float-right">
            </div>
            <h5 class="card-title mb-0">
                Thông tin khác
            </h5>
        </div>
        <div class="card-body">
            <form method="post" action="{{ route('editUser') }}" enctype="multipart/form-data">
                @csrf
                <input name="form"type="text" value="2"hidden/>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input readonly name="email" type="email" class="form-control" id="email" placeholder="Nhập email"
                        value=" {{ auth()->user()->email }}" />
                        @error('email')
                            <div class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </div>
                        @enderror
                </div>
                <div class="form-group pt-2">
                    <label for="gender">Giới tính</label>
                    <select id="gender" name="gender" class="form-select">
                        @if(auth()->user()->gender == 'Male')
                            <option selected value="Male">Nam</option>
                            <option value="Female">Nữ</option>
                            <option value="Other">Khác</option>
                        @elseif(auth()->user()->gender == 'Female')
                            <option value="Male">Nam</option>
                            <option selected value="Female">Nữ</option>
                            <option value="Other">Khác</option>
                        @else
                            <option value="Male">Nam</option>
                            <option value="Female">Nữ</option>
                            <option selected value="Other">Khác</option>
                        @endif
                    </select>
                    @error('gender')
                            <div class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </div>
                        @enderror
                </div>
                <div class="form-group pt-2">
                    <label for="address">Địa chỉ</label>
                    <input name="address" type="text" class="form-control" id="address"
                        placeholder="Nhập địa chỉ" />
                </div>
                <div class="form-group pt-2">
                    <button type="submit" class="btn btn-primary">
                        Lưu thay đổi
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
