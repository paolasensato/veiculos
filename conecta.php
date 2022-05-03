<?php
    $server = "localhost";
    $banco = "veiculo";
    $usuario = "root";
    $senha = "";

    try {
        $pdo = new PDO("mysql:host={$server};dbname={$banco};charset=utf8;",$usuario,$senha);
    } catch (Exception $e) {
        echo "Erro ao conectar no banco: ".$e->getMessage();
    }