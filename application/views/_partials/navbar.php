<header class="app-header">
  <!-- <a class="app-header__logo" href="utama">Siap Pemilwa</a>
 -->
  <!-- Logo with maximum size of 200x60 -->
  <a class="app-header__logo" href="utama">
    <img src="<?= base_url('assets/images/siap-pemilwa-horizontal-white.png'); ?>" alt="Logo" style="max-width: 200px; max-height: 60px;">
  </a>
  <!-- Sidebar toggle button--><a class="app-sidebar__toggle mt-1" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
  <!-- Navbar Right Menu-->
  <ul class="app-nav">
    <!-- User Menu-->
    <li class="dropdown"><a class="app-nav__item mt-1" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
      <ul class="dropdown-menu settings-menu dropdown-menu-right">
        <!-- <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
            <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> Profile</a></li> -->
        <li><a class="dropdown-item" href="<?= base_url('masuk/logout'); ?>"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
      </ul>
    </li>
  </ul>
</header>