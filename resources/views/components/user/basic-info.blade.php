<div class="tab-pane fade show active" id="account" role="tabpanel">
    <div class="card info">
        <div class="card-header">
            <div class="card-actions float-right">
            </div>
            <h5 class="card-title mb-0">Thông tin cơ bản</h5>
        </div>
        <div class="card-body">
            <form method="post" action="{{ route('editUser') }}" enctype="multipart/form-data">
                @csrf
                <input name="form"type="text" value="1" hidden />
                <div class="row">
                    <div class="col-md-12">
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
                </div>

                <div class="pt-2">
                    <button type="submit" class="btn btn-primary">
                        Lưu thay đổi
                    </button>
                </div>
            </form>
        </div>
    </div>

    <div class="card info">
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
                <input name="form"type="text" value="2"hidden />
                <div class="form-group">
                    <label for="email">Email</label>
                    <input readonly name="email" type="email" class="form-control" id="email"
                        placeholder="Nhập email" value=" {{ auth()->user()->email }}" />
                    @error('email')
                        <div class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </div>
                    @enderror
                </div>
                <div class="form-group pt-2">
                    <label for="gender">Giới tính</label>
                    <select id="gender" name="gender" class="form-select">
                        <option value="Male" {{ auth()->user()->gender == 'Male' ? 'selected' : '' }}>Nam</option>
                        <option value="Female" {{ auth()->user()->gender == 'Female' ? 'selected' : '' }}>Nữ</option>
                        <option value="Other" {{ auth()->user()->gender == 'Other' ? 'selected' : '' }}>Khác</option>
                    </select>
                    @error('gender')
                        <div class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </div>
                    @enderror
                </div>
                <div class="form-group pt-2">
                    <label for="address">Địa chỉ</label>
                    <input value="{{ auth()->user()->address }}" name="address" type="text" class="form-control"
                        id="address" placeholder="Nhập địa chỉ" />
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
