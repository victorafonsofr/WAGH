<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Administração WAGH</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <h1>Administração da Agência de Turismo WAGH</h1>
    
    <h2>Gerenciar Cliente</h2>
    
    <form id="insert-client">
        <h3>Inserir Cliente</h3>
        <label for="nome_cliente">Nome:</label>
        <input type="text" id="nome_cliente" required>
        <label for="sexo">Sexo:</label>
        <input type="text" id="sexo" required>
        <label for="cadastro">Cadastro:</label>
        <input type="text" id="cadastro" required>
        <label for="rg">RG:</label>
        <input type="text" id="rg" required>
        <label for="data_nasc">Data de Nascimento:</label>
        <input type="date" id="data_nasc" required>
        <label for="cpf">CPF:</label>
        <input type="text" id="cpf" required>
        <button type="button" onclick="insertClient()">Inserir Cliente</button>
    </form>

    <form id="consult-client">
        <h3>Consultar Cliente</h3>
        <label for="cod_cliente">Cod Cliente:</label>
        <input type="number" id="cod_cliente">
        <button type="button" onclick="consultClient()">Consultar</button>
    </form>

    <form id="consult-all-clients">
        <h3>Consultar Todos os Clientes</h3>
        <button type="button" onclick="consultAllClients()">Consultar Todos</button>
    </form>

    <form id="remove-client">
        <h3>Remover Cliente</h3>
        <label for="cod_cliente_remove">Cod Cliente:</label>
        <input type="number" id="cod_cliente_remove" required>
        <button type="button" onclick="removeClient()">Remover</button>
    </form>

    <form id="update-client">
        <h3>Alterar Dados do Cliente</h3>
        <label for="cod_cliente_update">Cod Cliente:</label>
        <input type="number" id="cod_cliente_update" required>
        <label for="new_name">Novo Nome:</label>
        <input type="text" id="new_name">
        <button type="button" onclick="updateClient()">Alterar</button>
    </form>

    <script src="script.js"></script>
</body>
</html>
