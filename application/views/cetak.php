<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <title>Laporan</title>
 <link rel="stylesheet" href="">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <style>
  .line-title{
   border: 0;
   border-style: inset;
   border-top: 1px solid #000;
  }
 </style>
</head>
<body>
 <img src="assets/img/unpam.png" style="position: absolute; width: 60px; height: auto;">
 <table style="width: 100%;">
  <tr>
   <td align="center">
    <span style="line-height: 1.6; font-weight: bold;">
     Universitas Pamulang
     <br>Tangerang Selatan
    </span>
   </td>
  </tr>
 </table>

 <hr class="line-title"> 
 <p align="center">
  LAPORAN DATA<br>
  <b>Angkatan 2023</b>
 </p>
 <table class="table table-bordered">
  <tr>
   <th>#</th>
   <th>Nim</th>
   <th>Nama</th>
   <th>Pekerjaan</th>
  </tr>
  <?php $no=1; foreach ($hasil as $row): ?>
   <tr>
    <td><?php echo $no++; ?></td>
    <td><?php echo $row->nim ?></td>
    <td><?php echo $row->nama ?></td>
    <td><?php echo $row->alamat ?></td>
   </tr>
  <?php endforeach ?>
 </table>
</body>
</html>