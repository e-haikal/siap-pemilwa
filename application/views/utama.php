<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="description" content="Vali is a responsive dan free admin theme built with Bootstrap 4, SASS dan PUG.js. It's fully customizable dan modular.">
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
    <meta property="og:description" content="Vali is a responsive dan free admin theme built with Bootstrap 4, SASS dan PUG.js. It's fully customizable dan modular.">
    <title>Siap Pemilwa - Web Pemilihan Suara</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/css/main.css'); ?>">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .card-img-top {
            width: 100%;
            height: auto;
        }
    </style>
</head>

<body class="app sidebar-mini">
    <!-- Navbar-->
    <?php $this->load->view('./_partials/navbar'); ?>
    <!-- Sidebar menu-->
    <?php $this->load->view('./_partials/sidebar'); ?>
    <main class="app-content">
        <div class="app-title">
            <div>
                <h1><i class="fa fa-laptop"></i> Pemilihan</h1>
            </div>
        </div>
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
        <div class="row">
            <?php 
            $count = count($kandidat);
            foreach ($kandidat as $data) :
                // Tentukan kelas berdasarkan jumlah kandidat
                $col_class = ($count < 3) ? 'col-md-6' : 'col-lg-4 col-md-6';
            ?>
                <div class="<?= $col_class ?> col-sm-12 mt-2">
                    <div class="card">
                        <h3 class="card-header text-center"><?= $data->nomor_kandidat; ?></h3>
                        <div class="card-body text-center">
                            <h5 class="card-title"><?= $data->nama_kandidat; ?></h5>
                            <img src="<?= base_url('gambar/' . $data->foto_kandidat); ?>" style="height: 250px; width: 250px;" class="rounded mx-auto d-block mb-3" alt="Foto Kandidat">
                            <button type="button" class="btn btn-info mt-3" data-toggle="modal" data-target="#visiMisiModal<?= $data->id_kandidat; ?>">
                                Lihat Visi Misi
                            </button>
                        </div>
                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="visiMisiModal<?= $data->id_kandidat; ?>" tabindex="-1" role="dialog" aria-labelledby="visiMisiModalLabel<?= $data->id_kandidat; ?>" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="visiMisiModalLabel<?= $data->id_kandidat; ?>">Visi Misi <?= $data->nama_kandidat; ?></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <?= $data->visi_misi; ?>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <a class="btn btn-primary btn-block btn-lg mt-3" href="<?= base_url('utama/pilih'); ?>">Mulai Memilih</a>
    </main>
    <?php $this->load->view('./_partials/bottom'); ?>
    <!-- Bootstrap JS dan jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>
