<?php
    include_once './conexao.php';
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>Lanchonete</title>
</head>
<body>
    <div class="container">
        <div class ="jumbotron">
            <h2> Tabela de lanches 
                <span class="lead"> [ Esqueci o bd e peguei um do ano passado] </span>
            </h2>
        </div>
    </div>
    <!-- Codificação-->
    <?php
    //arrumando erro 
    error_reporting(0);
    // codificação para acentos
    $conn->exec("set names utf8");
    //preparando consulta sql
    $sql = "Select * from produto";
    $result = $conn->query($sql);
    $lanche = $result->fetchAll(PDO::FETCH_ASSOC);
    //exibindo
    #print_r($rows);
    ?>
    <!-- HTML -->
    <div class="container">
    <div class = "row">
        <table class="table table-striped">
            <thead>
            <tr>
                <th> Codigo </th>
                <th> Lanches </th>
                <th> Preço </th>
            </tr>
            </thead>
            <tbody>
                <?php
                    foreach($lanche as $comida ){
                ?>
                <tr>
                            <td><?=$comida[id]?></td>
                            <td><?=$comida[nome]?></td>
                            <td><?=$comida[preco]?></td>
                </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
        </div>
    </div>
</body>
</html>