<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Core</div>
                    <a class="nav-link" href="{{ route('admindashboard') }}">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-chart-line"></i></div>
                        Dashboard
                    </a>
                    <div class="sb-sidenav-menu-heading">Interface</div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                        data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-user"></i></div>
                        User Manage
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse show" id="collapseLayouts" aria-labelledby="headingOne"
                        data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="layout-static.html"><i
                                    class="fa-solid fa-user-group"></i>&nbsp; Users</a>
                            <a class="nav-link" href="layout-sidenav-light.html"><i
                                    class="fa-solid fa-user-shield"></i>&nbsp; Permissions</a>
                            <a class="nav-link" href="layout-sidenav-light.html"><i
                                    class="fa-solid fa-tag"></i>&nbsp; Roles</a>
                        </nav>
                    </div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages"
                        aria-expanded="false" aria-controls="collapsePages">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-gamepad"></i></div>
                        Games / Genres
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
                        data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                            <table>
                                <th>
                                    <a class="nav-link" href="{{ route('admingame') }}"><i class="fa-solid fa-gamepad"></i>&nbsp;
                                    Games </a>
                                </th>
                                <th>
                                    <a href="{{ route('addgame') }}"type="submit" class="nav-link"> + </a>
                                </th>
                            </table>
                            <table>
                                <th>
                                    <a class="nav-link" href="layout-static.html"><i class="fa-solid fa-tags"></i>&nbsp;
                                        Genres</a>
                                </th>
                                <th>
                                    <a href="{{ route('addgame') }}"type="submit" class="nav-link"> + </a>
                                </th>
                            </table>                                                                            
                        </nav>
                    </div>
                    <a class="nav-link" href="layout-static.html">
                        <div class="sb-nav-link-icon">
                            <i class="fa-solid fa-user-tie"></i>
                        </div>
                        Publishers
                    </a>
                    <div class="sb-sidenav-menu-heading">Orders</div>
                    <a class="nav-link" href="charts.html">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-receipt"></i></div>
                        Orders
                    </a>
                    <a class="nav-link" href="tables.html">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-circle-info"></i></div>
                        Orders Detail
                    </a>
                </div>
            </div>
        </nav av>
    </div>
</div>