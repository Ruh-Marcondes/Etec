<?php
    $username = 'root';
    $password = '';
    try{
        $conn = new PDO('mysql:host=localhost;dbname=DB_LANCHONETE',
        $username,
        $password);      
        $conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }catch(PDOException $e){
    echo 'aconteceu o erro: '. $e->getMessage();        
    }