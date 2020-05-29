    
<?php
    include_once './conexao.php';
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Tabela de Alunos</title>
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <h1>
           Tabela Alunos 
        </h1>
    </div>
</div>
    <?php
         error_reporting(0);
       $conn->exec("set names utf8");
       $sql = "Select * from alunos";
       $result =$conn->query($sql);
       $alunos = $result->fetchAll(PDO::FETCH_ASSOC);
    ?>
    <!-- Tabela -->
    <div class="container">
        <table class=" table-striped">
            <thead>
                <tr>
                    <th>RM</th>
                    <th>nome</th>
                    <th>nota1</th>
                    <th>nota2</th>
                </tr>
            </thead>
            <tbody>
            <?php
               foreach ($alunos as $alunos) {   
                      ?>
                <tr>
                    <td><?=$alunos[rm]?></td>
                    <td><?=$alunos[nome]?></td>
                    <td><?=$alunos[nota1]?></td>
                    <td><?=$alunos[nota2]?></td>
                </tr>
                <?php
            }
            ?>
            </tbody>
        </table>
    </div>
</body>
</html>