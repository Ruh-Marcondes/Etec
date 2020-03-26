<?php
    include_once './conexao.php';
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>

    
    <title>Tabela de Alunos</title>
</head>
<body>
    <!-- Codificação-->
    <?php
    // codificação para acentos
    $conn->exec("set names utf8");
    //preparando consulta sql
    $sql = "Select * from tb_alunos";
    $result = $conn->query($sql);
    $rows = $result->fetchAll(PDO::FETCH_ASSOC);
    //exibindo
    print_r($rows);
    ?>
</body>
</html>