<?php
    require_once('helper.php');
    $id_guru =$_POST['id_guru'];
    $id_siswa =$_POST['id_siswa'];
    $id_pelangaran =$_POST['id_pelangaran'];
    $query = "INSERT INTO transaksi_pelangaran(id_guru,id_siswa,id_pelangaran,date_create) VALUES('$id_guru','$id_siswa','$id_pelangaran',now())";
    $sql=mysqli_query($db_connect,$query);
    if ($sql) {
        respone(200,array('message'=>'Berhasil di tambahkan'));
        array(
            'message'=>'Berhasil di tambahkan',
            'Data 1'=>'Data ke 1',
            'Data 2'=>'Data ke 2',
    
    );
    }else {
        respone(400,array('message'=>'Gagal di tambahkan'));        
    }
    mysqli_close($db_connect);   
?> 