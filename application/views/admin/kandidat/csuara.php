<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Laporan Data Perhitungan Suara Pemilwa Amikom</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style>
        .header-left {
            text-align: left;
        }

        .header-center {
            text-align: center;
        }

        .header-right {
            text-align: right;
        }
        
        body {
            font-size: 14px;
        }

        h3 {
            text-align: center;
        }

        .container {
            margin-top: 50px;
        }

        .table th,
        .table td {
            text-align: center;
        }
    </style>
</head>

<body onload="window.print();">
    <div class="container py-5">
        <div class="row">
            <div class="col-1 mt-1">
                <img src="<?= base_url('assets/images/siap-pemilwa-logo.png'); ?>" alt="Logo" style="max-width: 200px; max-height: 60px;">
            </div>
            <div class="col-5 header-center">
                <h3 class="display-5 mb-0">Laporan Hasil Suara</h3>
                <h3 class="display-5 mt-0">Siap Pemilwa</h3>
            </div>
            <div class="col-6 header-right">
                <h5 class="font-weight-medium mb-0 mt-2">TUNTAS DIGITAL</h5>
                <p class="small mb-0">Jl. Ring Road Utara, Condong Catur, Depok, Sleman<br>
                    Website: https://siappemilwa.tuntasdigital.com</p>
            </div>
        </div>
        <hr style="border: 1px solid #000;">

        <div class="row mt-4">
            <div class="col">
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Nomor Kandidat</th>
                            <th>Perolehan Suara</th>
                            <th>Persentase</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($kandidat as $data) :
                            $cek = $this->db->get_where('pilih', array('id_kandidat' => $data->id_kandidat))->num_rows();
                            $suara = ($cek / $pilih) * 100;
                        ?>
                            <tr>
                                <td><?= $no; ?></td>
                                <td><?= $data->nama_kandidat; ?></td>
                                <td><?= $data->nomor_kandidat; ?></td>
                                <td><?= $cek; ?></td>
                                <td><?= number_format($suara, 2) . "%"; ?></td>
                            </tr>
                        <?php
                            $no++;
                        endforeach;
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>

</html>
