<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pengumuman</title>
    <link rel="stylesheet" href="<?= base_url('assets/css/main.css'); ?>">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .card-img-top {
            width: 100%;
            height: 200px; /* Set a fixed height for the image */
            object-fit: cover; /* Ensure the image covers the area */
        }
        .card {
            height: 100%; /* Ensure the card takes up 100% of the available height */
            display: flex;
            flex-direction: column;
        }
        .card-body {
            flex: 1;
            display: flex;
            flex-direction: column;
        }
        .card-text {
            flex: 1;
        }
        .btn-primary {
            align-self: flex-start;
        }
        .card-column {
            margin-bottom: 20px; /* Add margin-bottom to all columns */
        }
    </style>
</head>

<body class="app sidebar-mini">
    <?php $this->load->view('_partials/navbar'); ?>
    <?php $this->load->view('_partials/sidebar'); ?>
    <main class="app-content">
        <div class="app-title">
            <div>
                <h1><i class="fa fa-bullhorn"></i> Pengumuman</h1>
            </div>
        </div>
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
                                    <p class="card-text"><?= substr($p->isi, 0, 250); ?>...</p>
                                    <a href="<?= base_url('pengumuman/detail/' . $p->id); ?>" class="btn btn-primary mt-2">Selengkapnya</a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            <?php else : ?>
                <p>Tidak ada pengumuman saat ini.</p>
            <?php endif; ?>
        </div>
    </main>
    <?php $this->load->view('_partials/bottom'); ?>
</body>

</html>
