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
        <h1><i class="fa fa-laptop"></i> Kelola</h1>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="tile">
          <h5>Data Kandidat</h5>
          <?php
          if ($this->session->flashdata('success')) { ?>
            <div class="alert alert-success"><?= $this->session->flashdata('success'); ?></div>
          <?php
          }
          ?>
          <?php
          if ($this->session->flashdata('error')) { ?>
            <div class="alert alert-danger"><?= $this->session->flashdata('error'); ?></div>
          <?php
          }
          ?>
          <div class="tile-body">
            <div class="table-responsive">
              <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Nomor Kandidat</th>
                    <th>Foto</th>
                    <th>Visi Misi</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $no = 1;
                  foreach ($kandidat as $data) : ?>
                    <tr>
                      <td><?= $no; ?></td>
                      <td><?= $data->nama_kandidat; ?></td>
                      <td><?= $data->nomor_kandidat; ?></td>
                      <td>
                        <img src="<?= base_url('gambar/' . $data->foto_kandidat); ?>" class="img-thumbnail" style="width: 150px;height: 150px;">
                      </td>
                      <td>
                        <?php
                        $visi_misi = $data->visi_misi;
                        echo strlen($visi_misi) > 250 ? substr($visi_misi, 0, 250) . ' ...' : $visi_misi;
                        ?>
                      </td>
                      <td>
                        <a href="<?= base_url('admin/kandidat/ubah/' . $data->id_kandidat); ?>" class="btn btn-info">Ubah</a>
                        <a href="<?= base_url('admin/kandidat/hapus/' . $data->id_kandidat); ?>" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus kandidat ini?')">Hapus</a>

                      </td>
                    </tr>
                  <?php
                    $no++;
                  endforeach;
                  ?>
                </tbody>
              </table>
            </div>
            <a href="<?= base_url('admin/kandidat/tambah'); ?>" class="btn btn-primary">Tambah</a>
          </div>
        </div>
      </div>
    </div>


  </main>
  <?php $this->load->view('./admin/_partials/bottom'); ?>

</body>

</html>