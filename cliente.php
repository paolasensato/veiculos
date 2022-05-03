<?php require "conecta.php"?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatórios</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
        require "menu.php";
    ?>
    <main>
        <form name="formClientes" method="post" action="cliente.php">
            <label for="palavra"></label>
            <input type="text" name="palavra" id="palavra" required>
            <button type="submit">Buscar</button>
        </form>
        <table>
            <thead>
                <tr>
                    <td>Id</td>
                    <td>Nome do Cliente</td>
                </tr>
            </thead>
            <tbody>
                <?php
                    $palavra = trim( $_POST["palavra"] ?? NULL);
                    echo "<p>Busca por: {$palavra}</p>";
                    $palavra = "%{$palavra}%";

                    $sql= "select * from cliente
                        where nome like :palavra
                        group by id
                        order by nome";
                    
                    $consulta = $pdo->prepare($sql);

                    $consulta->bindParam(":palavra", $palavra);

                    $consulta->execute();

                    while($dados = $consulta->fetch(PDO::FETCH_OBJ)){
                        $id = $dados->id;
                        $nome = $dados->nome;
                        ?>
                        <tr>
                            <td><?=$id?></td>
                            <td><?=$nome?></td>
                        </tr>
                        <?php
                    }
                ?>
            </tbody>
        </table>
    </main>
</body>
</html>