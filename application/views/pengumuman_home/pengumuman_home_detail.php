<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Siap Pemilwa - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: eNno
  * Template URL: https://bootstrapmade.com/enno-free-simple-bootstrap-template/
  * Updated: Mar 17 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

    <style>
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .container .pengumuman-detail {
            text-align: left;
        }

        .pengumuman-detail img {
            max-width: 100%;
            height: auto;
            margin-bottom: 20px;
        }

        .pengumuman-detail h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .pengumuman-detail p {
            font-size: 16px;
            line-height: 1.6;
        }

        .pengumuman-detail strong {
            display: block;
            margin-bottom: 10px;
        }
    </style>
    </style>

</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center justify-content-between">

            <!-- <h1 class="logo"><a href="#">Siap Pemilwa</a></h1> -->

            <!-- Uncomment below if you prefer to use an image logo -->
            <a href="#" class="logo"><img src="assets/images/siap-pemilwa-horizontal-black.png" alt="" class="img-fluid"></a>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                    <li><a class="nav-link scrollto" href="#cara-memilih">Cara Memilih</a></li>
                    <li><a class="nav-link scrollto" href="#daftar-kandidat">Daftar Kandidat</a></li>
                    <li><a class="nav-link scrollto" href="#counts">Hasil Sementara</a></li>
                    <li><a class="nav-link scrollto " href="#testimonials">Testimoni</a></li>
                    <li><a class="nav-link scrollto" href="#faq">FAQ</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->

    <div class="container">
        <div class="pengumuman-detail">
            <p><strong>Tanggal:</strong> <?= $pengumuman->tanggal_posting; ?></p>
            <h2><?= $pengumuman->judul; ?></h2>
            <br>
            <?php if (!empty($pengumuman->gambar)) : ?>
                <img src="<?= base_url('uploads/' . $pengumuman->gambar); ?>" alt="Gambar Pengumuman" class="img-fluid">
            <?php endif; ?>
            <br>
            <p><?= $pengumuman->isi; ?></p>
        </div>
    </div>
    <?php $this->load->view('_partials/bottom'); ?>
</body>

</html>