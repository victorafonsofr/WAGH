<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Responsive Bootstrap Advance Admin Template</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="${pageContext.request.contextPath}/resources/assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="${pageContext.request.contextPath}/resources/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">COMPANY NAME</a>
            </div>

            <div class="header-right">
                <a href="message-task.html" class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o fa-2x"></i></a>
                <a href="message-task.html" class="btn btn-primary" title="New Task"><b>40 </b><i class="fa fa-bars fa-2x"></i></a>
                <a href="login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>
            </div>
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="${pageContext.request.contextPath}/resources/assets/img/user.png" class="img-thumbnail" />
                            <div class="inner-text">
                                Jhon Deo Alex
                            <br />
                                <small>Last Login : 2 Weeks Ago </small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>Cliente <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="insert-cliente"><i class="fa fa-plus"></i>Inserir um Cliente</a>
                            </li>
                            <li>
                                <a href="consult-cliente"><i class="fa fa-search"></i>Consultar um Cliente</a>
                            </li>
                            <li>
                                <a href="consult-all-clientes"><i class="fa fa-list"></i>Consultar Todos os Clientes</a>
                            </li>
                            <li>
                                <a href="remove-cliente"><i class="fa fa-trash"></i>Remover um Cliente</a>
                            </li>
                            <li>
                                <a href="update-cliente"><i class="fa fa-pencil"></i>Alterar Dados do Cliente</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>Pacote <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="insert-Pacote.html"><i class="fa fa-plus"></i>Inserir um Pacote</a>
                            </li>
                            <li>
                                <a href="consult-Pacote.html"><i class="fa fa-search"></i>Consultar um Pacote</a>
                            </li>
                            <li>
                                <a href="consult-all-Pacotes.html"><i class="fa fa-list"></i>Consultar Todos os Pacotes</a>
                            </li>
                            <li>
                                <a href="remove-Pacote.html"><i class="fa fa-trash"></i>Remover um Pacote</a>
                            </li>
                            <li>
                                <a href="update-Pacote.html"><i class="fa fa-pencil"></i>Alterar Dados do Pacote</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>Cidade <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="insert-Cidade.html"><i class="fa fa-plus"></i>Inserir uma Cidade</a>
                            </li>
                            <li>
                                <a href="consult-Cidade.html"><i class="fa fa-search"></i>Consultar uma Cidade</a>
                            </li>
                            <li>
                                <a href="consult-all-Cidades.html"><i class="fa fa-list"></i>Consultar Todas as Cidades</a>
                            </li>
                            <li>
                                <a href="remove-Cidade.html"><i class="fa fa-trash"></i>Remover uma Cidade</a>
                            </li>
                            <li>
                                <a href="update-Cidade.html"><i class="fa fa-pencil"></i>Alterar Dados da Cidade</a>
                            </li>
                        </ul>
                    </li>
                   
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>ofertas <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="insert-ofertas.html"><i class="fa fa-plus"></i>Inserir uma oferta</a>
                            </li>
                            <li>
                                <a href="consult-ofertas.html"><i class="fa fa-search"></i>Consultar uma oferta</a>
                            </li>
                            <li>
                                <a href="consult-all-ofertass.html"><i class="fa fa-list"></i>Consultar Todas as ofertas</a>
                            </li>
                            <li>
                                <a href="remove-ofertas.html"><i class="fa fa-trash"></i>Remover uma oferta</a>
                            </li>
                            <li>
                                <a href="update-ofertas.html"><i class="fa fa-pencil"></i>Alterar Dados da oferta</a>
                            </li>
                        </ul>
                    </li>
                   
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>hospedagem <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="insert-hospedagem.html"><i class="fa fa-plus"></i>Inserir uma hospedagem</a>
                            </li>
                            <li>
                                <a href="consult-hospedagem.html"><i class="fa fa-search"></i>Consultar uma hospedagem</a>
                            </li>
                            <li>
                                <a href="consult-all-hospedagens.html"><i class="fa fa-list"></i>Consultar Todas as hospedagens</a>
                            </li>
                            <li>
                                <a href="remove-hospedagem.html"><i class="fa fa-trash"></i>Remover uma hospedagem</a>
                            </li>
                            <li>
                                <a href="update-hospedagem.html"><i class="fa fa-pencil"></i>Alterar Dados da hospedagem</a>
                            </li>
                        </ul>
                    </li>
                    <!-- Outros menus omitidos para brevidade -->
                </ul>
            </div>
        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <!-- /. ROW  -->
                
                <h2>Alterar Dados do Cliente</h2>
                <form id="updateClientForm" class="form-horizontal">
                    <div class="form-group">
                        <label for="clientName" class="control-label col-sm-2">Selecione o Cliente:</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="clientName" onchange="loadClientData()" required>
                                <option value="">Selecione um Cliente</option>
                                <!-- As opÃ§Ãµes serÃ£o preenchidas dinamicamente -->
                            </select>
                        </div>
                    </div>
        
                    <div id="clientData" style="display:none;">
                        <div class="form-group">
                            <label for="name" class="control-label col-sm-2">Nome:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="name" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="gender" class="control-label col-sm-2">Sexo:</label>
                            <div class="col-sm-10">
                                <select class="form-control" id="gender" required>
                                    <option value="masculino">Masculino</option>
                                    <option value="feminino">Feminino</option>
                                    <option value="outro">Outro</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="control-label col-sm-2">Cadastro (Email):</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="email" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="rg" class="control-label col-sm-2">RG:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="rg" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birthdate" class="control-label col-sm-2">Data de Nascimento:</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" id="birthdate" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="cpf" class="control-label col-sm-2">CPF:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="cpf" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="button" class="btn btn-primary" onclick="updateClient()">Atualizar Dados</button>
                            </div>
                        </div>
                    </div>
                </form>
        
                <script>
                    // Dados dos clientes (simulaÃ§Ã£o)
                    let clients = [
                        {
                            name: "Cliente 1",
                            gender: "Masculino",
                            email: "cliente1@example.com",
                            rg: "12.345.678-9",
                            birthdate: "1990-01-01",
                            cpf: "123.456.789-00"
                        },
                        {
                            name: "Cliente 2",
                            gender: "Feminino",
                            email: "cliente2@example.com",
                            rg: "98.765.432-1",
                            birthdate: "1992-02-02",
                            cpf: "987.654.321-00"
                        },
                        {
                            name: "Cliente 3",
                            gender: "Outro",
                            email: "cliente3@example.com",
                            rg: "11.223.344-5",
                            birthdate: "1995-03-03",
                            cpf: "112.233.445-66"
                        }
                    ];
        
                    // FunÃ§Ã£o para preencher o dropdown com os clientes
                    function populateClientDropdown() {
                        const dropdown = document.getElementById('clientName');
                        clients.forEach(client => {
                            const option = document.createElement('option');
                            option.value = client.name.toLowerCase();
                            option.textContent = client.name;
                            dropdown.appendChild(option);
                        });
                    }
        
                    // FunÃ§Ã£o para carregar os dados do cliente selecionado
                    function loadClientData() {
                        const clientName = document.getElementById('clientName').value;
                        const client = clients.find(client => client.name.toLowerCase() === clientName);
        
                        if (client) {
                            document.getElementById('name').value = client.name;
                            document.getElementById('gender').value = client.gender;
                            document.getElementById('email').value = client.email;
                            document.getElementById('rg').value = client.rg;
                            document.getElementById('birthdate').value = client.birthdate;
                            document.getElementById('cpf').value = client.cpf;
                            document.getElementById('clientData').style.display = 'block';
                        } else {
                            document.getElementById('clientData').style.display = 'none';
                        }
                    }
        
                    // FunÃ§Ã£o para atualizar os dados do cliente
                    function updateClient() {
                        const clientName = document.getElementById('clientName').value;
                        const clientIndex = clients.findIndex(client => client.name.toLowerCase() === clientName);
        
                        if (clientIndex !== -1) {
                            // Atualizar os dados do cliente
                            clients[clientIndex].name = document.getElementById('name').value;
                            clients[clientIndex].gender = document.getElementById('gender').value;
                            clients[clientIndex].email = document.getElementById('email').value;
                            clients[clientIndex].rg = document.getElementById('rg').value;
                            clients[clientIndex].birthdate = document.getElementById('birthdate').value;
                            clients[clientIndex].cpf = document.getElementById('cpf').value;
        
                            alert("Dados do cliente atualizados com sucesso!");
                        }
                    }
        
                    // Preencher o dropdown ao carregar a pÃ¡gina
                    window.onload = populateClientDropdown;
                </script>
        
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->

    <div id="footer-sec">
        &copy; 2014 YourCompany | Design By : <a href="http://www.binarytheme.com/" target="_blank">BinaryTheme.com</a>
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
</body>
</html>