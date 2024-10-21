<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Todos os Pacotes</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css"> <!-- Seu arquivo CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> <!-- Bootstrap para estilo -->

    <!-- Bootstrap CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

	<!-- Animate CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">

	<!-- Font Icons
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/et-line-font.css">

	<!-- Nivo Lightbox CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nivo-lightbox.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nivo_themes/default/default.css">

	<!-- Owl Carousel CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">

	<!-- BxSlider CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bxslider.css">

	<!-- Main CSS
   	================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

	<!-- Google web font
   ================================================== -->
	<link href='https://fonts.googleapis.com/css?family=Raleway:700' rel='stylesheet' type='text/css'>
</head>
<body>
    <section id="plan" class="parallax-section">
        <div class="container">
            <div class="row">
                <!-- Section title -->
                <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8 wow fadeInUp">
                    <div class="section-title">
                        <h5 class="wow bounceIn">AVENTURAS ÃNICAS</h5>
                        <h1 class="heading color-white">TODOS OS PACOTES DE VIAGENS</h1>
                        <hr>
                        <p class="color-white">Explore todos os nossos pacotes de viagens incrÃ­veis. Escolha a sua aventura!</p>
                    </div>
                </div>

                <div class="row mt-4">
                    <!-- Pacotes atualizados -->
                    <div class="col-md-4 col-sm-6">
                        <div class="plan">
                            <h2 class="plan-title">Honolulu</h2>
                            <div class="plan-price">
                                <h1 class="plan-price-title">R$ 32.990,00 / <small>viagem</small></h1>
                            </div>
                            <ul class="plan-list">
                                <li>Data de partida: 2023-11-28</li>
                                <li>Origem: Los Angeles</li>
                                <li>Companhia: Brigue</li>
                            </ul>
                            <div class="plan-button">
                                <button class="btn btn-default">ESCOLHER PACOTE</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="plan">
                            <h2 class="plan-title">MalÃ©</h2>
                            <div class="plan-price">
                                <h1 class="plan-price-title">R$ 18.490,00 / <small>viagem</small></h1>
                            </div>
                            <ul class="plan-list">
                                <li>Data de partida: 2024-01-15</li>
                                <li>Origem: Mumbai</li>
                                <li>Companhia: Clipper</li>
                            </ul>
                            <div class="plan-button">
                                <button class="btn btn-default">ESCOLHER PACOTE</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="plan">
                            <h2 class="plan-title">Tromso</h2>
                            <div class="plan-price">
                                <h1 class="plan-price-title">R$ 14.990,00 / <small>viagem</small></h1>
                            </div>
                            <ul class="plan-list">
                                <li>Data de partida: 2025-12-23</li>
                                <li>Origem: Bergen</li>
                                <li>Companhia: Corveta</li>
                            </ul>
                            <div class="plan-button">
                                <button class="btn btn-default">ESCOLHER PACOTE</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="plan">
                            <h2 class="plan-title">Punta Arenas</h2>
                            <div class="plan-price">
                                <h1 class="plan-price-title">R$ 28.990,00 / <small>viagem</small></h1>
                            </div>
                            <ul class="plan-list">
                                <li>Data de partida: 2026-01-05</li>
                                <li>Origem: Ushuaia</li>
                                <li>Companhia: Fluyt</li>
                            </ul>
                            <div class="plan-button">
                                <button class="btn btn-default">ESCOLHER PACOTE</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="plan">
                            <h2 class="plan-title">Victoria</h2>
                            <div class="plan-price">
                                <h1 class="plan-price-title">R$ 13.490,00 / <small>viagem</small></h1>
                            </div>
                            <ul class="plan-list">
                                <li>Data de partida: 2027-07-10</li>
                                <li>Origem: San Francisco</li>
                                <li>Companhia: Fragata</li>
                            </ul>
                            <div class="plan-button">
                                <button class="btn btn-default">ESCOLHER PACOTE</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="plan">
                            <h2 class="plan-title">Phuket</h2>
                            <div class="plan-price">
                                <h1 class="plan-price-title">R$ 19.190,00 / <small>viagem</small></h1>
                            </div>
                            <ul class="plan-list">
                                <li>Data de partida: 2025-07-05</li>
                                <li>Origem: Colombo</li>
                                <li>Companhia: Banguela</li>
                            </ul>
                            <div class="plan-button">
                                <button class="btn btn-default">ESCOLHER PACOTE</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 text-center wow fadeInUp" style="margin-top: 20px;">
                    <a href="index.html" class="btn btn-primary">VOLTA PARA O INÃCIO</a>
                </div>

            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Sua AgÃªncia de Viagens</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>