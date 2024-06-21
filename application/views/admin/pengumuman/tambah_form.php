<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Pengumuman</title>
    <link rel="stylesheet" href="<?= base_url('assets/css/main.css'); ?>">
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
                    <h3 class="tile-title">Tambah Pengumuman</h3>
                    <div class="tile-body">
                        <form action="<?= base_url('admin/pengumuman/tambah'); ?>" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="judul" class="control-label">Judul:</label>
                                <input type="text" class="form-control" id="judul" name="judul" required>
                            </div>
                            <div class="form-group">
                                <label for="isi" class="control-label">Isi Pengumuman:</label>
                                <textarea class="form-control" id="isi" name="isi" rows="5" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="gambar" class="control-label">Gambar:</label>
                                <input type="file" class="form-control-file" id="gambar" name="gambar" accept="image/*">
                            </div>
                            <div class="tile-footer">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-fw fa-lg fa-check-circle"></i>Simpan</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <?php $this->load->view('./admin/_partials/bottom'); ?>
</body>
</html>
