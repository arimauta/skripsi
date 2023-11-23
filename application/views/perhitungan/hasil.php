<?php $this->load->view('layouts/header_admin'); ?>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-fw fa-chart-area"></i> Data Hasil Akhir</h1>
</div>

<div class="card shadow mb-4">
    <!-- /.card-header -->
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-success"><i class="fa fa-table"></i> Hasil Akhir Perankingan</h6>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" width="100%" cellspacing="0">
                <thead class="bg-success text-white">
                    <tr align="center">
                        <th>Nik</th>
                        <th>Alternatif / Nama Karyawan</th>
                        <th>Pekerjaan</th>
                        <th>Nilai Preferensi</th>
                        <th width="15%">Hasil Diagnosa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $no=1;
                        foreach ($hasil as $keys):
                            $nilai = $keys->nilai;
                            $risk_color = '';
                            if ($nilai < 0.5) {
                                $risk_color = 'text-success'; // Beresiko Rendah (hijau)
                            } elseif ($nilai >= 0.5 && $nilai < 0.8) {
                                $risk_color = 'text-warning'; // Beresiko Sedang (kuning)
                            } else {
                                $risk_color = 'text-danger'; // Beresiko Tinggi (merah)
                            }
                    ?>
                    <tr align="center">
                        <td><?= $this->Perhitungan_model->get_hasil_alternatif($keys->id_alternatif)['nik'] ?></td>
                        <td align="left" style="padding-left: 5px;">
                            <?= $this->Perhitungan_model->get_hasil_alternatif($keys->id_alternatif)['nama'] ?>
                        </td>
                        <td style="padding-left: 5px;">
                            <?= $this->Perhitungan_model->get_hasil_alternatif($keys->id_alternatif)['departemen'] ?>
                        </td>
                        <td><?= $keys->nilai ?></td>
                        <td class="<?= $risk_color ?>">
                            <?php
                                if ($nilai < 0.5) {
                                    echo 'Beresiko Rendah';
                                } elseif ($nilai >= 0.5 && $nilai < 0.8) {
                                    echo 'Beresiko Sedang';
                                } else {
                                    echo 'Beresiko Tinggi';
                                }
                            ?>
                        </td>
                    </tr>
                    <?php
                        $no++;
                        endforeach
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
