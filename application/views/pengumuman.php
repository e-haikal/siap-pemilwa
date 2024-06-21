<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pengumuman</title>
    <link rel="stylesheet" href="<?= base_url('assets/css/main.css'); ?>">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
                <ul>
                    <?php foreach ($pengumuman as $p) : ?>
                        <li>
                            <h3><?= $p->judul; ?></h3>
                            <p><?= substr($p->isi, 0, 100); ?>...</p>
                            <?php if (!empty($p->gambar)) : ?>
                                <img src="<?= base_url('uploads/' . $p->gambar); ?>" alt="Gambar Pengumuman">
                            <?php endif; ?>
                        </li>
                    <?php endforeach; ?>
                </ul>
            <?php else : ?>
                <p>Tidak ada pengumuman saat ini.</p>
            <?php endif; ?>
        </div>
    </main>
    <?php $this->load->view('_partials/bottom'); ?>
</body>

</html>