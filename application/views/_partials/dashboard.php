<div class="row">
    <?php foreach ($kndt as $data) : ?>
        <div class="col-md-6 mb-3">
            <div class="card">
                <h3 class="card-header text-center"><?= $data->nomor_kandidat; ?></h3>
                <div class="card-body">
                    <img src="<?= base_url('gambar/' . $data->foto_kandidat); ?>" style="height: 250px; width: 250px;" class="rounded mx-auto d-block mb-3" alt="...">
                    <h5 class="card-title text-center"><?= $data->nama_kandidat; ?></h5>
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

<script type="text/javascript">
    function updatePerolehanSuara() {
        $.ajax({
            url: '<?= base_url('dashboard/get_perolehan_suara'); ?>',
            type: 'GET',
            dataType: 'json',
            success: function(response) {
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

    setInterval(updatePerolehanSuara, 5000);
    $(document).ready(function() {
        updatePerolehanSuara();
    });
</script>
