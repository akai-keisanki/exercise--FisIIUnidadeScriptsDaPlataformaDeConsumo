<?php

$servidor = "localhost";
$usuario = "root";
$senha = "";
$banco = "plataforma_de_consumo";

$conn = new mysqli($servidor, $usuario, $senha, $banco);

if ($conn->connect_error) {
    die("Erro ao conectar ao banco de dados: " . $conexao->connect_error);

?>
