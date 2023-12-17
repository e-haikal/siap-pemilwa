<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Laporan Status Pemilih</title>
</head>

<body onload="window.print();">
    <div class="container py-5">
    <div class="row">
            <div class="col-1">
                <img src="<?= base_url('assets/images/logo-amikom-warna.png'); ?>" alt="Logo" style="max-width: 200px; max-height: 60px;">
            </div>
            <div class="col-5 text-center">
                <h3 class="display-5 mb-0">Laporan Status Pemilih</h3>
                <h3 class="display-5 mt-0">Pemilwa Amikom</h3>

            </div>
            <div class="col-5 text-right">
                <h5 class="font-weight-medium mb-0 mt-2">KAMPUS TERPADU</h5>
                <p class="small">Jl. Ring Road Utara, Condong Catur, Depok, Sleman<br>
                    Telp. (0274)884201 - 206, Faks : (0274)884208</p>
            </div>
        </div>
        <hr style="border: 1px solid #000;">
        <div class="row mt-4">
            <div class="col">
                <table class="table table-hover table-bordered" id="sampleTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>NIM Pemilih</th>
                            <th>Nama Pemilih</th>
                            <th>Status Memilih</th>
                            <th>Kandidat yang Dipilih</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1; //inisialisasi variabel $no
                        foreach ($pemilih as $data) : ?>
                            <tr>
                                <td><?= $no; ?></td>
                                <td><?= $data->username; ?> </td>
                                <td><?= $data->nama_pemilih; ?></td>
                                <td><?= isset($data->id_pemilih) ? 'Sudah Memilih' : 'Belum'; ?> </td>
                                <td><?= $data->nama_kandidat ? $data->nama_kandidat : ''; ?></td>
                            </tr>
                        <?php
                        $no++; //Increment variabel $no.
                        endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>

</html>
