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
    <title>Vali Admin - Free Bootstrap 4 Admin Template</title>
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
                    <h5>Laporan Status Pemilih</h5>
                    <div class="tile-body">
                        <div class="table-responsive">
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>NIM</th>
                                        <th>Nama Pemilih</th>
                                        <th>Status Memilih</th>
                                        <th>Kandidat yang Dipilih</th>
                                        <th>Tanggal Rekam</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    foreach ($pemilih as $data) : ?>
                                        <tr>
                                            <td><?= $no; ?></td>
                                            <td><?= $data->username; ?></td>
                                            <td><?= $data->nama_pemilih; ?></td>
                                            <!-- status memilih -->
                                            <td><?= isset($data->id_pemilih) ? 'Telah Memilih' : 'Belum Memilih'; ?> </td>
                                            <td><?= $data->nama_kandidat ? $data->nama_kandidat : ''; ?></td>
                                            <td><?= $data->tgl_rekam;?></td>     
                                        </tr>
                                    <?php
                                        $no++;
                                    endforeach;
                                    ?>
                                </tbody>
                                </tbody>
                            </table>
                        </div>
                        <a href="<?= base_url('admin/pemilih/cetak'); ?>" target="blank" class="btn btn-primary">Cetak</a>
                    </div>
                </div>
            </div>
        </div>


    </main>
    <?php $this->load->view('./admin/_partials/bottom'); ?>

</body>

</html>