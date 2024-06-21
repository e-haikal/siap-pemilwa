<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Pengumuman</title>
    <link rel="stylesheet" href="<?= base_url('assets/css/main.css'); ?>">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .pengumuman-detail img {
            display: block;
            margin-left: auto;
            margin-right: auto;
            max-width: 50%;
            height: auto;
        }
    </style>
</head>

<body class="app sidebar-mini">
    <?php $this->load->view('_partials/navbar'); ?>
    <?php $this->load->view('_partials/sidebar'); ?>
    <main class="app-content">
        <div class="app-title">
            <div>
                <h1><i class="fa fa-bullhorn"></i> Detail Pengumuman</h1>
            </div>
        </div>
        <div class="tile">
            <div class="tile-body">
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
        </div>
    </main>
    <?php $this->load->view('_partials/bottom'); ?>
</body>

</html>
