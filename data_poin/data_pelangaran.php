<?php

    require_once('helper.php');

    $query = "SELECT b.nm_guru,c.nm_siswa,d.nm_pelangaran,d.poin_pelangaran FROM transaksi_pelangaran a JOIN data_guru b ON a.id_guru=b.id_guru JOIN data_siswa c on a.id_siswa = c.id_siswa JOIN data_pelangaran d on a.id_pelangaran = d.id_pelangaran
    ";
    $sql = mysqli_query($db_connect, $query);

    
    if ($sql) 
    {
        $result = array();
        while ($row = mysqli_fetch_array($sql))
        {
            array_push($result, array(
                'nama_guru' => $row['nm_guru'],
                'nm_kelas' => $row['nm_siswa'],
                'nm_siswa' => $row['nm_pelangaran'],
                'poin_pelangaran' => $row['poin_pelangaran']
            ));
        }
        echo json_encode(array('result'=>$result));      
    }
?>