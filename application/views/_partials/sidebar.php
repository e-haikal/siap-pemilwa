<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="<?= base_url('assets/images/logo.png'); ?>" alt="User Image">
        <div>
          <p class="app-sidebar__user-name"><?= $this->session->userdata['username']; ?></p>
          <p class="app-sidebar__user-designation">Pemilih</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item" href="<?= base_url('utama'); ?>"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
      </ul>
    </aside>
