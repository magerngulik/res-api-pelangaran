<?php

    require_once('helper.php');

    $query = "SELECT a.id_siswa,b.nm_kelas,a.nm_siswa, a.nisn FROM `data_siswa` a JOIN data_kelas b on a.id_kelas = b.id_kelas";
    $sql = mysqli_query($db_connect, $query);


    // SELECT b.nm_guru,c.nm_siswa,d.nm_pelangaran,d.poin_pelangaran FROM transaksi_pelangaran a JOIN data_guru b ON a.id_guru=b.id_guru JOIN data_siswa c on a.id_siswa = c.id_siswa JOIN data_pelangaran d on a.id_pelangaran = d.id_pelangaran

    if ($sql) 
    {
        $result = array();
        while ($row = mysqli_fetch_array($sql))
        {
            array_push($result, array(
                'id' => $row['id_siswa'],
                'nm_kelas' => $row['nm_kelas'],
                'nm_siswa' => $row['nm_siswa'],
                'nisn' => $row['nisn']
            ));
        }
        echo json_encode(array('result'=>$result));      
    }
?>