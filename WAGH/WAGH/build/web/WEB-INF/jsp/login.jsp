<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="utf-8">
    <title>Login - Agência de Turismo WAGH</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f8f9fa;
        }
        .login-form {
            width: 300px;
            padding: 20px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            background: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .login-form h3 {
            text-align: center;
            margin-bottom: 20px;
        }
        .login-form input {
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
        }
    </style>
</head>
<body>

    <div class="login-form">
        <h3>Login</h3>
        <input type="text" id="username" placeholder="Usuário" required>
        <input type="password" id="password" placeholder="Senha" required>
        <button onclick="login()">Entrar</button>
        <p id="error-message" style="color: red; text-align: center;"></p>
    </div>

    <script>
        function login() {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            if (username === "administracao" && password === "wagh@123") {
                window.location.href = "admin";
            } else {
                document.getElementById('error-message').innerText = "Usuario ou senha inválidos.";
            }
        }
    </script>
</body>
</html>
