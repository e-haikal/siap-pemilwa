<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Website Voting Pemilwa Amikom">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Pemilwa Amikom - Web Pemilihan Suara</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/css/main.css'); ?>">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body class="app sidebar-mini">
    <!-- Navbar-->
    <?php $this->load->view('./admin/_partials/navbar'); ?>
    <!-- Sidebar menu-->
    <?php $this->load->view('./admin/_partials/sidebar'); ?>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i> Dashboard</h1>
        </div>
      </div>
      <div class="row">
      <div class="col-md-12">
          <div class="tile">
            <h3 class="tile-title">Tambah Kandidat</h3>
            <div class="tile-body">
              <form action="<?= base_url('admin/kandidat/simpan'); ?>" method="POST" enctype="multipart/form-data">
                <div class="form-group">
                  <label class="control-label">Nama kandidat</label>
                  <input class="form-control" type="text" name="nama" placeholder="Nama Kandidat">
                </div>
                <div class="form-group">
                  <label class="control-label">Nomor Kandidat</label>
                  <input class="form-control" type="text" name="nomor" placeholder="Nomor Kandidat">
                </div>
                <div class="form-group">
                  <label class="control-label">Foto</label>
                  <input class="form-control-file" type="file" name="foto">
                </div>
                <div class="tile-footer">
                    <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Simpan</button>
                </div>
              </form>
            </div>
            
          </div>
        </div>


    </main>
    <?php $this->load->view('./admin/_partials/bottom'); ?>

</body>
</html>