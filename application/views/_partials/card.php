<div class="row">
  <div class="col-md-6 col-lg-3">
    <div class="widget-small primary coloured-icon">
      <i class="icon fa fa-envelope fa-3x"></i>
      <div class="info">
        <h4>Suara Masuk</h4>
        <p><b id="suaraMasuk">Loading...</b></p>
      </div>
    </div>
  </div>
  <div class="col-md-6 col-lg-3">
    <div class="widget-small info coloured-icon"><i class="icon fa fa-id-card fa-3x"></i>
      <div class="info">
        <h4>Pemilih</h4>
        <p><b id="pemilih">Loading...</b></p>
      </div>
    </div>
  </div>
  <div class="col-md-6 col-lg-3">
    <div class="widget-small warning coloured-icon"><i class="icon fa fa-users fa-3x"></i>
      <div class="info">
        <h4>Kandidat</h4>
        <p><b id="kandidat">Loading...</b></p>
      </div>
    </div>
  </div>
  <div class="col-md-6 col-lg-3">
    <div class="widget-small danger coloured-icon"><i class="icon fa fa-user-circle fa-3x"></i>
      <div class="info">
        <h4>Petugas</h4>
        <p><b id="petugas">Loading...</b></p>
      </div>
    </div>
  </div>
</div>

<script src="<?= base_url('assets/js/jquery-3.3.1.min.js'); ?>"></script>
<script type="text/javascript">
    function updateSuaraMasuk() {
        $.ajax({
            url: '<?= base_url('dashboard/get_suara_masuk'); ?>',
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                $('#suaraMasuk').text(response.suara_masuk);
            },
            error: function(xhr, status, error) {
                console.error('Error updating Suara Masuk:', status, error);
            }
        });
    }

    function updateJumlahPemilih() {
        $.ajax({
            url: '<?= base_url('dashboard/get_jumlah_pemilih'); ?>',
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                $('#pemilih').text(response.jumlah_pemilih);
            },
            error: function(xhr, status, error) {
                console.error('Error updating Jumlah Pemilih:', status, error);
            }
        });
    }

    function updateJumlahKandidat() {
        $.ajax({
            url: '<?= base_url('dashboard/get_jumlah_kandidat'); ?>',
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                $('#kandidat').text(response.jumlah_kandidat);
            },
            error: function(xhr, status, error) {
                console.error('Error updating Jumlah Kandidat:', status, error);
            }
        });
    }

    function updateJumlahPetugas() {
        $.ajax({
            url: '<?= base_url('dashboard/get_jumlah_petugas'); ?>',
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                $('#petugas').text(response.jumlah_petugas);
            },
            error: function(xhr, status, error) {
                console.error('Error updating Jumlah Petugas:', status, error);
            }
        });
    }

    setInterval(updateSuaraMasuk, 5000);
    setInterval(updateJumlahPemilih, 5000);
    setInterval(updateJumlahKandidat, 5000);
    setInterval(updateJumlahPetugas, 5000);

    $(document).ready(function() {
        updateSuaraMasuk();
        updateJumlahPemilih();
        updateJumlahKandidat();
        updateJumlahPetugas();
    });
</script>
