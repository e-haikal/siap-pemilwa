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
  <title>Login - Pemilwa Amikom</title>
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
    <?php $this->load->view('./admin/_partials/card'); ?>

    <div class="row">
      <?php foreach ($kndt as $data) : ?>
        <div class="col-md-6 mb-3">
          <div class="card">
            <h3 class="card-header text-center"><?= $data->nomor_kandidat; ?></h3>
            <div class="card-body">
            <img src="<?= base_url('gambar/' . $data->foto_kandidat); ?>" style="height: 250px; width: 250px;" class="rounded mx-auto d-block mb-3" alt="...">

              <h5 class="card-title text-center"><?= $data->nama_kandidat; ?></h5>
              <?php
              $cek = $this->db->get_where('pilih', array('id_kandidat' => $data->id_kandidat))->num_rows();
              $suara = ($cek / $pilih) * 100;
              ?>
              <div class="row">
                <div class="col-md-6">
                  <h6 class="text-center">Perolehan Suara : <?= $cek; ?></h6>
                </div>
                <div class="col-md-6">
                  <h6 class="text-center">Persentase Suara : <?= number_format($suara, 2) . "%"; ?></h6>
                </div>
              </div>
            </div>
          </div>
        </div>
      <?php endforeach; ?>
    </div>



  </main>
  <?php $this->load->view('./admin/_partials/bottom'); ?>

</body>

</html>