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
                                <a href="insert-cliente.html"><i class="fa fa-plus"></i>Inserir um Cliente</a>
                            </li>
                            <li>
                                <a href="consult-cliente.html"><i class="fa fa-search"></i>Consultar um Cliente</a>
                            </li>
                            <li>
                                <a href="consult-all-clientes.html"><i class="fa fa-list"></i>Consultar Todos os Clientes</a>
                            </li>
                            <li>
                                <a href="remove-cliente.html"><i class="fa fa-trash"></i>Remover um Cliente</a>
                            </li>
                            <li>
                                <a href="update-cliente.html"><i class="fa fa-pencil"></i>Alterar Dados do Cliente</a>
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
        
                <h2>Inserir Pacote</h2>
                <form id="packageForm" class="form-horizontal">
                    <div class="form-group">
                        <label for="destination" class="control-label col-sm-2">Destino:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="destination" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="departureDate" class="control-label col-sm-2">Data de Partida:</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="departureDate" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="origin" class="control-label col-sm-2">Origem:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="origin" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="returnDate" class="control-label col-sm-2">Data de Volta:</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="returnDate" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="price" class="control-label col-sm-2">PreÃ§o:</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" id="price" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="company" class="control-label col-sm-2">Companhia:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="company" placeholder="Opcional">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="companyType" class="control-label col-sm-2">Tipo da Companhia:</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="companyType" required>
                                <option value="">Selecione um Tipo</option>
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                                <option value="M">M</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="airplane" class="control-label col-sm-2">AviÃ£o:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="airplane" placeholder="Opcional">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ship" class="control-label col-sm-2">Navio:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="ship" placeholder="Opcional">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="capacity" class="control-label col-sm-2">Capacidade:</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" id="capacity" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="route" class="control-label col-sm-2">Percurso:</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="route" rows="3" placeholder="Opcional"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="shipClass" class="control-label col-sm-2">Classe do Navio:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="shipClass" placeholder="Opcional">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Cadastrar Pacote</button>
                        </div>
                    </div>
                </form>
        
                <script>
                    // FunÃ§Ã£o para cadastrar o pacote
                    document.getElementById('packageForm').addEventListener('submit', function(event) {
                        event.preventDefault(); // Evita o envio do formulÃ¡rio
        
                        const packageData = {
                            destination: document.getElementById('destination').value,
                            departureDate: document.getElementById('departureDate').value,
                            origin: document.getElementById('origin').value,
                            returnDate: document.getElementById('returnDate').value,
                            price: document.getElementById('price').value,
                            company: document.getElementById('company').value || null,
                            companyType: document.getElementById('companyType').value || null,
                            airplane: document.getElementById('airplane').value || null,
                            ship: document.getElementById('ship').value || null,
                            capacity: document.getElementById('capacity').value,
                            route: document.getElementById('route').value || null,
                            shipClass: document.getElementById('shipClass').value || null
                        };
        
                        // Aqui vocÃª pode fazer uma chamada para enviar os dados do pacote para o servidor
        
                        console.log('Pacote cadastrado:', packageData);
                        alert('Pacote cadastrado com sucesso!');
                        
                        // Limpar o formulÃ¡rio apÃ³s o envio
                        this.reset();
                    });
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
