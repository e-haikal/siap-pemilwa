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
                <div class="pengumuman-detail text-left" style="margin-top: 30px;">
                    <p><strong>Tanggal:</strong> <?= $pengumuman->tanggal_posting; ?></p>
                    <h2><?= $pengumuman->judul; ?></h2>
                    <br>
                    <?php if (!empty($pengumuman->gambar)) : ?>
                        <img src="<?= base_url('uploads/' . $pengumuman->gambar); ?>" alt="Gambar Pengumuman" class="img-fluid mx-auto d-block" style="max-width: 50%;">
                    <?php endif; ?>
                    <br>
                    <p><?= $pengumuman->isi; ?></p>
                </div>
            </div>
        </div>
    </div>

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="<?= base_url('assets/vendor/purecounter/purecounter_vanilla.js'); ?>"></script>
    <script src="<?= base_url('assets/vendor/bootstrap/js/bootstrap.bundle.min.js'); ?>"></script>
    <script src="<?= base_url('assets/vendor/glightbox/js/glightbox.min.js'); ?>"></script>
    <script src="<?= base_url('assets/vendor/isotope-layout/isotope.pkgd.min.js'); ?>"></script>
    <script src="<?= base_url('assets/vendor/swiper/swiper-bundle.min.js'); ?>"></script>
    <script src="<?= base_url('assets/vendor/php-email-form/validate.js'); ?>"></script>

    <!-- Template Main JS File -->
    <script src="<?= base_url('assets/js/home-main.js'); ?>"></script>

    <!-- Bootstrap JS dan jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>

</html>
