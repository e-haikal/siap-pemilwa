<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Edit Pengumuman</title>
    <link rel="stylesheet" href="<?= base_url('assets/css/main.css'); ?>">
</head>
<body>
    <div class="container">
        <h1>Form Edit Pengumuman</h1>
        <form action="<?= base_url('admin/pengumuman/edit/' . $pengumuman->id); ?>" method="post" enctype="multipart/form-data">
            <label for="judul">Judul:</label><br>
            <input type="text" id="judul" name="judul" value="<?= $pengumuman->judul; ?>" required><br><br>

            <label for="isi">Isi Pengumuman:</label><br>
            <textarea id="isi" name="isi" rows="5" required><?= $pengumuman->isi; ?></textarea><br><br>

            <?php if (!empty($pengumuman->gambar)) : ?>
                <img src="<?= base_url('uploads/' . $pengumuman->gambar); ?>" alt="Gambar Pengumuman" style="max-width: 100%; height: auto;">
                <br><br>
            <?php endif; ?>

            <label for="gambar">Ganti Gambar:</label><br>
            <input type="file" id="gambar" name="gambar" accept="image/*"><br><br>

            <input type="submit" name="submit" value="Simpan">
        </form>
    </div>
</body>
</html>
