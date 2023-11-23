<!DOCTYPE html>
<html>
<head>
    <title>Data Hasil Akhir dengan Diagram Lingkaran</title>
    <!-- Memuat pustaka PHPChart -->
    <script src="layouts/header_admin"></script>
</head>
<body>
    <?php
    // Kode PHP seperti yang telah diberikan sebelumnya untuk menampilkan tabel
    // ...

    // Menghitung jumlah kategori risiko berdasarkan data $hasil
    $jumlah_rendah = 0;
    $jumlah_sedang = 0;
    $jumlah_tinggi = 0;

    foreach ($hasil as $keys) {
        if ($keys->nilai < 0.5) {
            $jumlah_rendah++;
        } elseif ($keys->nilai >= 0.5 && $keys->nilai < 0.8) {
            $jumlah_sedang++;
        } else {
            $jumlah_tinggi++;
        }
    }
    ?>

    <!-- Menampilkan Diagram Lingkaran -->
    <div id="chartContainer" style="height: 300px; width: 100%;"></div>

    <script>
        // Data untuk diagram lingkaran
        var dataPoints = [
            { label: "Beresiko Rendah", y: <?php echo $jumlah_rendah; ?> },
            { label: "Beresiko Sedang", y: <?php echo $jumlah_sedang; ?> },
            { label: "Beresiko Tinggi", y: <?php echo $jumlah_tinggi; ?> }
        ];

        var chart = new CanvasJS.Chart("chartContainer", {
            animationEnabled: true,
            title: {
                text: "Diagram Lingkaran Kategori Risiko"
            },
            data: [{
                type: "pie",
                indexLabelFontFamily: "Arial",
                indexLabelFontSize: 14,
                indexLabel: "{label} - {y}",
                dataPoints: dataPoints
            }]
        });

        chart.render();
    </script>
</body>
</html>
