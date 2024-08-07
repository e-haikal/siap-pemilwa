<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Pengumuman</title>
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
    <link rel="stylesheet" href="<?= base_url('assets/css/main.css'); ?>">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body class="app sidebar-mini">
    <?php $this->load->view('./admin/_partials/navbar'); ?>
    <?php $this->load->view('./admin/_partials/sidebar'); ?>
    <main class="app-content">
        <div class="app-title">
            <div>
                <h1><i class="fa fa-laptop"></i> Edit Pengumuman</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <div class="tile-body">
                        <?php echo validation_errors('<div class="alert alert-danger">', '</div>'); ?>
                        <?php echo form_open_multipart('admin/pengumuman/edit/'.$pengumuman->id, 'class="needs-validation"'); ?>
                        
                        <div class="form-group">
                            <label for="judul">Judul</label>
                            <input type="text" class="form-control" id="judul" name="judul" value="<?php echo set_value('judul', $pengumuman->judul); ?>" required>
                            <div class="invalid-feedback">Judul pengumuman harus diisi.</div>
                        </div>

                        <div class="form-group">
                            <label for="isi">Isi</label>
                            <textarea class="form-control" id="isi" name="isi" rows="6" required><?php echo set_value('isi', $pengumuman->isi); ?></textarea>
                            <div class="invalid-feedback">Isi pengumuman harus diisi.</div>
                        </div>

                        <?php if ($pengumuman->gambar): ?>
                            <div class="form-group">
                                <label for="gambar">Gambar Saat Ini</label><br>
                                <img src="<?php echo base_url('uploads/'.$pengumuman->gambar); ?>" width="200" height="auto" class="img-thumbnail mb-2">
                            </div>
                        <?php endif; ?>

                        <div class="form-group">
                            <label for="gambar">Upload Gambar Baru (Opsional)</label><br>
                            <input type="file" class="form-control-file" id="gambar" name="gambar">
                        </div>

                        <button type="submit" class="btn btn-primary">Simpan</button>
                        <a href="<?php echo base_url('admin/pengumuman'); ?>" class="btn btn-secondary">Batal</a>

                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <?php $this->load->view('./admin/_partials/bottom'); ?>
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
