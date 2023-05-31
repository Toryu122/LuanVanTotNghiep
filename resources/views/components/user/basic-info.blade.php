<div class="tab-pane fade show active" id="account" role="tabpanel">
    <div class="card">
        <div class="card-header">
            <div class="card-actions float-right">
            </div>
            <h5 class="card-title mb-0">Thông tin cơ bản</h5>
        </div>
        <div class="card-body">
            <form>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="name">Tên người dùng</label>
                            <input name="name" type="text" class="form-control" id="name" placeholder="Tên người dùng"
                                value="{{ auth()->user()->name }}" />
                        </div>
                        <div class="form-group pt-2">
                            <label for="bio">Ghi chú</label>
                            <textarea name="bio" rows="4" class="form-control" id="bio" placeholder="Mô tả ngắn gọn về bạn"></textarea>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="text-center">
                            <p class="h5">Ảnh đại diện</p>
                            <img alt="avatar.jpg" src="https://bootdey.com/img/Content/avatar/avatar1.pngasdasd"
                                class="rounded-circle img-responsive mt-2" width="128" height="128" />
                            <div class="mt-2">
                                <span class="btn btn-primary"><i class="fa fa-upload"></i></span>
                            </div>
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

    <div class="card">
        <div class="card-header">
            <div class="card-actions float-right">
            </div>
            <h5 class="card-title mb-0">
                Thông tin khác
            </h5>
        </div>
        <div class="card-body">
            <form>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input name="email"  type="email" class="form-control" id="email" placeholder="Nhập email"
                        value=" {{ auth()->user()->email }}" />
                </div>
                <div class="form-group pt-2">
                    <label for="gender">Giới tính</label>
                    <select id="gender" name="gender" class="form-select">
                        <option selected>Giới tính</option>
                        <option value="Male">Nam</option>
                        <option value="Female">Nữ</option>
                        <option value="Other">Khác</option>
                    </select>
                </div>
                <div class="form-group pt-2">
                    <label for="address">Địa chỉ</label>
                    <input name="address" type="text" class="form-control" id="address" placeholder="Nhập địa chỉ" />
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
