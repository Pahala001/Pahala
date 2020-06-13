<?php
include 'koneksi.php';
$nama_pengajar = $_GET['nama_pengajar'];
$query = mysqli_query($koneksi, "select nama_mapel from pengajar where nama_pengajar='$nama_pengajar'");
$mapel = mysqli_fetch_array($query);
$data = array(
    'nama_mapel' => $mapel['nama_mapel']);
echo json_encode($data);