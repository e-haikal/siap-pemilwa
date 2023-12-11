<!DOCTYPE html>
<html>

<head>
  <!-- ... (kode sebelumnya) ... -->
  <!-- Font Montserrat dari Google Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    body {
      font-family: 'Montserrat', sans-serif;
    }

    .logo h1 {
      font-family: 'Montserrat', sans-serif;
    }
  </style>
  <!-- ... (kode setelahnya) ... -->

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="<?= base_url('assets/css/main.css'); ?>">
  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Pemilwa Amikom - Web Pemilihan Suara</title>
</head>

<body>
  <section class="material-half-bg">
    <div class="cover"></div>
  </section>
  <section class="login-content">
    <div class="logo">
      <h1>Website Pemilwa Amikom</h1>
    </div>
    <div class="login-box">
      <form class="login-form" action="<?= base_url('masuk/aksi_login'); ?>" method="POST">
        <?php
        if ($this->session->flashdata('error')) { ?>
          <div class="alert alert-danger"><?php echo $this->session->flashdata('error'); ?> </div>
        <?php
        }
        ?>
        <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>Login</h3>
        <div class="form-group">
          <label class="control-label">USERNAME</label>
          <input class="form-control" name="username" type="text" placeholder="Username" autofocus>
        </div>
        <div class="form-group">
          <label class="control-label">PASSWORD</label>
          <input class="form-control" type="password" name="password" placeholder="Password">
        </div>
        <!-- <div class="form-group">
            <div class="utility">
              <div class="animated-checkbox">
                <label>
                  <input type="checkbox"><span class="label-text">Stay Signed in</span>
                </label>
              </div>
              <p class="semibold-text mb-2"><a href="#" data-toggle="flip">Forgot Password ?</a></p>
            </div>
          </div> -->
        <div class="form-group btn-container">
          <button class="btn btn-primary btn-block" type="submit"><i class="fa fa-sign-in fa-lg fa-fw"></i>SIGN IN</button>
        </div>

        <!-- Tambahkan teks di bawah tombol sign-in -->
        <div class="form-group">
          <p class="text-center mt-3">Apakah Anda Administrator? <a href="<?= base_url('admin/masuk'); ?>">Klik di sini</a> untuk masuk.</p>
        </div>

      </form>
      <!-- <form class="forget-form" action="index.html">
          <h3 class="login-head"><i class="fa fa-lg fa-fw fa-lock"></i>Forgot Password ?</h3>
          <div class="form-group">
            <label class="control-label">EMAIL</label>
            <input class="form-control" type="text" placeholder="Email">
          </div>
          <div class="form-group btn-container">
            <button class="btn btn-primary btn-block"><i class="fa fa-unlock fa-lg fa-fw"></i>RESET</button>
          </div>
          <div class="form-group mt-3">
            <p class="semibold-text mb-0"><a href="#" data-toggle="flip"><i class="fa fa-angle-left fa-fw"></i> Back to Login</a></p>
          </div>
        </form> -->
    </div>
  </section>
  <!-- Essential javascripts for application to work-->
  <script src="<?= base_url('assets/js/jquery-3.3.1.min.js'); ?>"></script>
  <script src="<?= base_url('assets/js/popper.min.js'); ?>"></script>
  <script src="<?= base_url('assets/js/bootstrap.min.js'); ?>"></script>
  <script src="<?= base_url('assets/js/main.js'); ?>"></script>
  <!-- The javascript plugin to display page loading on top-->
  <script src="<?= base_url('assets/js/plugins/pace.min.js'); ?>"></script>
  <script type="text/javascr  ipt">
    // Login Page Flipbox control
    $('.login-content [data-toggle="flip"]').click(function() {
      $('.login-box').toggleClass('flipped');
      return false;
    });
  </script>
</body>

</html>