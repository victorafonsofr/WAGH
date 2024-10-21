<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="utf-8">
    <title>Página de Administração - WAGH</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            color: #000; /* Texto preto */
        }

        .navbar {
            margin-bottom: 20px;
        }

        .navbar-nav > li > a {
            color: #000; /* Links em preto */
        }

        .dropdown-menu {
            background-color: #fff; /* Fundo do menu dropdown */
        }

        .dropdown-menu > li > a {
            color: #000; /* Links do dropdown em preto */
        }

        .dropdown-menu > li > a:hover {
            background-color: #eaeaea; /* Cor de fundo ao passar o mouse */
        }

        .container {
            margin-top: 80px;
        }

        .section-title h1 {
            margin-bottom: 20px;
        }

        .card {
            margin: 20px 0;
            border: 1px solid #ddd; /* Borda do card */
            border-radius: 5px; /* Cantos arredondados */
            padding: 20px; /* EspaÃ§amento interno */
            background-color: #fff; /* Fundo do card */
        }
    </style>
</head>

<body>
    <section class="navbar navbar-fixed-top custom-navbar" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                </button>
                <a href="#home" class="smoothScroll navbar-brand">AGÊNCIA DE TURISMO</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Gerenciar <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-submenu">
                                <a href="#">Clientes</a>
                                <ul class="dropdown-menu">
                                    <li><a href="#" class="dropdown-item">Inserir Cliente</a></li>
                                    <li><a href="#" class="dropdown-item">Consultar Cliente</a></li>
                                    <li><a href="#" class="dropdown-item">Consultar Todos</a></li>
                                    <li><a href="#" class="dropdown-item">Remover Cliente</a></li>
                                    <li><a href="#" class="dropdown-item">Alterar Dados</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="#">Pacotes</a>
                                <ul class="dropdown-menu">
                                    <li><a href="#" class="dropdown-item">Inserir Pacote</a></li>
                                    <li><a href="#" class="dropdown-item">Consultar Pacote</a></li>
                                    <li><a href="#" class="dropdown-item">Consultar Todos</a></li>
                                    <li><a href="#" class="dropdown-item">Remover Pacote</a></li>
                                    <li><a href="#" class="dropdown-item">Alterar Dados</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="#">Reservas</a>
                                <ul class="dropdown-menu">
                                    <li><a href="#" class="dropdown-item">Inserir Reserva</a></li>
                                    <li><a href="#" class="dropdown-item">Consultar Reserva</a></li>
                                    <li><a href="#" class="dropdown-item">Consultar Todos</a></li>
                                    <li><a href="#" class="dropdown-item">Remover Reserva</a></li>
                                    <li><a href="#" class="dropdown-item">Alterar Dados</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="navbar-login"><a href="login" class="smoothScroll">SAIR</a></li>
                </ul>
            </div>
        </div>
    </section>

    <div class="container">
        <h1 class="section-title">Bem-vindo à Administração</h1>
        <p>Use o menu acima para gerenciar os clientes, pacotes e reservas.</p>
        
        <div class="card">
            <h2>Gerenciamento de Clientes</h2>
            <p>Selecione uma opção no menu para gerenciar os clientes.</p>
        </div>
        <div class="card">
            <h2>Gerenciamento de Pacotes</h2>
            <p>Selecione uma opçãoo no menu para gerenciar os pacotes.</p>
        </div>
        <div class="card">
            <h2>Gerenciamento de Reservas</h2>
            <p>Selecione uma opção no menu para gerenciar as reservas.</p>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>

</html>
