<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard User - Pemilwa</title>
  <link rel="stylesheet" href="<?= base_url('assets/css/main.css'); ?>">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="app sidebar-mini">
  <?php $this->load->view('_partials/navbar'); ?>
  <?php $this->load->view('_partials/sidebar'); ?>
  <main class="app-content">
    <div class="app-title">
      <div>
        <h1><i class="fa fa-dashboard"></i> Dashboard</h1>
      </div>
    </div>
    <?php $this->load->view('_partials/card'); ?>
    <?php $this->load->view('_partials/dashboard', ['kndt' => $kndt]); ?>
  </main>
  <?php $this->load->view('_partials/bottom'); ?>
</body>
</html>
