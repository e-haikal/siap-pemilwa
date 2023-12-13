<!DOCTYPE html>
<html lang="en">

<head>
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
  <title>Login - Pemilwa Amikom</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="<?= base_url('assets/css/main.css'); ?>">
  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    /* Gaya Hover untuk Seluruh Card */
    .card {
      transition: transform 0.3s, box-shadow 0.3s ease-in-out;
    }

    .card:hover {
      transform: scale(1.05);
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    }

    /* Gaya Hover untuk Gambar */
    .card .card-body img {
      transition: transform 0.3s ease-in-out;
    }

    .card:hover .card-body img {
      transform: scale(1.1);
    }
  </style>

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
    <?php $this->load->view('./admin/_partials/card'); ?>

    <div class="row">
      <?php foreach ($kndt as $data) : ?>
        <div class="col-md-6 mb-3">
          <div class="card">
            <h3 class="card-header text-center"><?= $data->nomor_kandidat; ?></h3>
            <div class="card-body">
              <img src="<?= base_url('gambar/' . $data->foto_kandidat); ?>" style="height: 250px; width: 250px;" class="rounded mx-auto d-block mb-3" alt="...">

              <h5 class="card-title text-center"><?= $data->nama_kandidat; ?></h5>
              <?php
              $cek = $this->db->get_where('pilih', array('id_kandidat' => $data->id_kandidat))->num_rows();
              $suara = ($cek / $pilih) * 100;
              ?>
              <div class="row">
                <div class="col-md-6">
                  <h6 class="text-center">Perolehan Suara : <span id="perolehanSuara<?= $data->id_kandidat; ?>">Loading...</span></h6>
                </div>
                <div class="col-md-6">
                  <h6 class="text-center">Persentase Suara : <span id="persentaseSuara<?= $data->id_kandidat; ?>">Loading...</span></h6>
                </div>
              </div>
            </div>
          </div>
        </div>
      <?php endforeach; ?>
    </div>

  </main>
  <?php $this->load->view('./admin/_partials/bottom'); ?>

  <script type="text/javascript">
    function updatePerolehanSuara() {
      $.ajax({
        url: '<?= base_url('admin/utama/get_perolehan_suara'); ?>',
        type: 'GET',
        dataType: 'json',
        success: function(response) {
          // Update tampilan perolehan suara di setiap card kandidat
          <?php foreach ($kndt as $data) : ?>
            var suara<?= $data->id_kandidat; ?> = response.perolehan_suara[<?= $data->id_kandidat; ?>];
            var persentase<?= $data->id_kandidat; ?> = (suara<?= $data->id_kandidat; ?> / response.total_suara) * 100;

            $('#perolehanSuara<?= $data->id_kandidat; ?>').text(suara<?= $data->id_kandidat; ?>);
            $('#persentaseSuara<?= $data->id_kandidat; ?>').text(persentase<?= $data->id_kandidat; ?>.toFixed(2) + "%");
          <?php endforeach; ?>
        },
        error: function(xhr, status, error) {
          console.error('Error updating Perolehan Suara:', status, error);
        }
      });
    }

    // Jalankan fungsi updatePerolehanSuara setiap 5 detik
    setInterval(updatePerolehanSuara, 5000);

    // Jalankan updatePerolehanSuara setelah halaman selesai dimuat
    $(document).ready(function() {
      updatePerolehanSuara();
    });
  </script>

</body>

</html>