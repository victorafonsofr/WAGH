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
        
                <h2>Consultar Pacote</h2>
                <form id="packageConsultForm" class="form-horizontal">
                    <div class="form-group">
                        <label for="packageSelect" class="control-label col-sm-2">Selecione o Pacote:</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="packageSelect" required>
                                <option value="">Selecione um Pacote</option>
                                <!-- Aqui vocÃª deve popular a lista com os pacotes disponÃ­veis -->
                                <option value="1">Pacote 1</option>
                                <option value="2">Pacote 2</option>
                                <option value="3">Pacote 3</option>
                                <!-- Adicione mais pacotes conforme necessÃ¡rio -->
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="button" class="btn btn-primary" id="consultButton">Consultar</button>
                        </div>
                    </div>
                </form>
        
                <div id="packageInfo" style="display: none;">
                    <h3>InformaÃ§Ãµes do Pacote</h3>
                    <p><strong>Destino:</strong> <span id="infoDestination"></span></p>
                    <p><strong>Data de Partida:</strong> <span id="infoDepartureDate"></span></p>
                    <p><strong>Origem:</strong> <span id="infoOrigin"></span></p>
                    <p><strong>Data de Volta:</strong> <span id="infoReturnDate"></span></p>
                    <p><strong>PreÃ§o:</strong> <span id="infoPrice"></span></p>
                    <p><strong>Companhia:</strong> <span id="infoCompany"></span></p>
                    <p><strong>Tipo da Companhia:</strong> <span id="infoCompanyType"></span></p>
                    <p><strong>AviÃ£o:</strong> <span id="infoAirplane"></span></p>
                    <p><strong>Navio:</strong> <span id="infoShip"></span></p>
                    <p><strong>Capacidade:</strong> <span id="infoCapacity"></span></p>
                    <p><strong>Percurso:</strong> <span id="infoRoute"></span></p>
                    <p><strong>Classe do Navio:</strong> <span id="infoShipClass"></span></p>
                </div>
        
                <script>
                    // Simulando dados de pacotes para consulta
                    const packages = {
                        1: {
                            destination: 'Praia do Forte',
                            departureDate: '2024-12-01',
                            origin: 'SÃ£o Paulo',
                            returnDate: '2024-12-08',
                            price: '2000',
                            company: 'Companhia A',
                            companyType: 'A',
                            airplane: 'AviÃ£o XYZ',
                            ship: null,
                            capacity: '100',
                            route: 'Voo direto',
                            shipClass: null
                        },
                        2: {
                            destination: 'Bahamas',
                            departureDate: '2025-01-15',
                            origin: 'Rio de Janeiro',
                            returnDate: '2025-01-22',
                            price: '5000',
                            company: null,
                            companyType: 'M',
                            airplane: null,
                            ship: 'Navio Cruzeiro',
                            capacity: '200',
                            route: 'Cruzeiro pela costa',
                            shipClass: 'Luxo'
                        },
                        // Adicione mais pacotes conforme necessÃ¡rio
                    };
        
                    document.getElementById('consultButton').addEventListener('click', function() {
                        const selectedPackage = document.getElementById('packageSelect').value;
        
                        if (selectedPackage && packages[selectedPackage]) {
                            const packageData = packages[selectedPackage];
                            
                            document.getElementById('infoDestination').innerText = packageData.destination || 'N/A';
                            document.getElementById('infoDepartureDate').innerText = packageData.departureDate || 'N/A';
                            document.getElementById('infoOrigin').innerText = packageData.origin || 'N/A';
                            document.getElementById('infoReturnDate').innerText = packageData.returnDate || 'N/A';
                            document.getElementById('infoPrice').innerText = `R$ ${packageData.price}` || 'N/A';
                            document.getElementById('infoCompany').innerText = packageData.company || 'N/A';
                            document.getElementById('infoCompanyType').innerText = packageData.companyType || 'N/A';
                            document.getElementById('infoAirplane').innerText = packageData.airplane || 'N/A';
                            document.getElementById('infoShip').innerText = packageData.ship || 'N/A';
                            document.getElementById('infoCapacity').innerText = packageData.capacity || 'N/A';
                            document.getElementById('infoRoute').innerText = packageData.route || 'N/A';
                            document.getElementById('infoShipClass').innerText = packageData.shipClass || 'N/A';
        
                            document.getElementById('packageInfo').style.display = 'block';
                        } else {
                            alert('Por favor, selecione um pacote vÃ¡lido.');
                        }
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
