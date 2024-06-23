<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Siap Pemilwa - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../../assets/img/favicon.png" rel="icon">
    <link href="../../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<?= base_url('assets/vendor/bootstrap/css/bootstrap.min.css'); ?>" rel="stylesheet">
    <link href="<?= base_url('assets/vendor/bootstrap-icons/bootstrap-icons.css'); ?>" rel="stylesheet">
    <link href="<?= base_url('assets/vendor/boxicons/css/boxicons.min.css'); ?>" rel="stylesheet">
    <link href="<?= base_url('assets/vendor/glightbox/css/glightbox.min.css'); ?>" rel="stylesheet">
    <link href="<?= base_url('assets/vendor/swiper/swiper-bundle.min.css'); ?>" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="<?= base_url('assets/css/style.css'); ?>" rel="stylesheet">

    <!-- =======================================================
  * Template Name: eNno
  * Template URL: https://bootstrapmade.com/enno-free-simple-bootstrap-template/
  * Updated: Mar 17 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

</head>

<body>



    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center justify-content-between">

            <!-- Uncomment below if you prefer to use an image logo -->
            <a href="#" class="logo"><img src="<?= base_url('assets/images/siap-pemilwa-horizontal-black.png'); ?>" alt="" class="img-fluid"></a>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a href="<?= base_url(''); ?>" class="btn-get-started">Home</a></li>
                    <li><a class="nav-link scrollto" href="#pengumuman">Pengumuman</a></li>
                    <li><a href="<?= base_url('masuk'); ?>" class="btn-get-started">Masuk</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->

    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h4 style="margin: 40px 0px 20px 0px">Semua Pengumuman</h4>
                <div class="pengumuman-list">
                    <?php if (!empty($pengumuman)) : ?>
                        <div class="row">
                            <?php foreach ($pengumuman as $p) : ?>
                                <div class="col-md-4 card-column">
                                    <div class="card">
                                        <?php if (!empty($p->gambar)) : ?>
                                            <img src="<?= base_url('uploads/' . $p->gambar); ?>" alt="Gambar Pengumuman" class="card-img-top">
                                        <?php endif; ?>
                                        <div class="card-body">
                                            <h5 class="card-title"><?= $p->judul; ?></h5>
                                            <p class="card-text"><?= substr($p->isi, 0, 200); ?>...</p>
                                            <a href="<?= base_url('pengumuman/detail/' . $p->id); ?>" class="stretched-link">Selengkapnya</a>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    <?php else : ?>
                        <p>Tidak ada pengumuman saat ini.</p>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>

    </main>

    <!-- Footer -->
    <?php $this->load->view('_partials/bottom'); ?>
</body>

</html>