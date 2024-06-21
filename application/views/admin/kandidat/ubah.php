<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Ubah Kandidat</title>
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
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <h1><i class="fa fa-laptop"></i> Kelola</h1>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="tile">
          <h3 class="tile-title">Ubah Kandidat</h3>
          <div class="tile-body">
            <?php foreach ($cari as $data) : ?>
              <form action="<?= base_url('admin/kandidat/subah'); ?>" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="kode" value="<?= $data->id_kandidat; ?>">
                <div class="form-group">
                  <label class="control-label">Nama Kandidat</label>
                  <input class="form-control" type="text" name="nama" placeholder="Nama Kandidat" value="<?= $data->nama_kandidat; ?>">
                </div>
                <div class="form-group">
                  <label class="control-label">Nomor Kandidat</label>
                  <input class="form-control" type="text" name="nomor" placeholder="Nomor Kandidat" value="<?= $data->nomor_kandidat; ?>">
                </div>
                <div class="form-group">
                  <label class="control-label">Foto</label>
                  <input class="form-control-file" type="file" name="foto">
                  <?php if (!empty($data->foto_kandidat)) : ?>
                    <p><img src="<?= base_url('gambar/' . $data->foto_kandidat); ?>" class="img-thumbnail" style="width: 150px; height: auto;"></p>
                  <?php endif; ?>
                </div>
                <div class="form-group">
                  <label class="control-label">Visi Misi (max 250 karakter)</label>
                  <textarea class="form-control" name="visi_misi" rows="5" placeholder="Visi dan Misi kandidat"><?= $data->visi_misi; ?></textarea>
                </div>
                <div class="tile-footer">
                  <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i> Simpan</button>
                </div>
              </form>
            <?php endforeach; ?>
          </div>
        </div>
      </div>
    </div>
  </main>
  <?php $this->load->view('./admin/_partials/bottom'); ?>
</body>

</html>
