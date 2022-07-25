<?php

    require_once('helper.php');

    $query = "SELECT * FROM `data_pelangaran`";
    $sql = mysqli_query($db_connect, $query);

    
    if ($sql) 
    {
        $result = array();
        while ($row = mysqli_fetch_array($sql))
        {
            array_push($result, array(
                'nama_pelangaran' => $row['nm_pelangaran'],
                'jenis_pelangaran' => $row['jns_pelangaran'],
                'poin_pelangaran' => $row['poin_pelangaran'],
                'kategori' => $row['jenis']
            ));
        }
        echo json_encode(array('result'=>$result));      
    }else {
        respone(400,array('message'=>'gagal ditambahkan!'));
    }
?>



