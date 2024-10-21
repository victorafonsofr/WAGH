<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-BR">

<head>

	<meta charset="UTF-8">

	<!-- Template site title
   ================================================== -->
	<title>Adventure Bootstrap Theme by tooplate</title>

	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<!--

Template 2078 Adventure

http://www.tooplate.com/view/2078-adventure

-->
	<!-- Bootstrap CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

	<!-- Animate CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">

	<!-- Font Icons
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/resources/css/et-line-font.css">

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

<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">


	<!-- Preloader section
================================================== -->
	<section class="preloader">

		<div class="sk-rotating-plane"></div>

	</section>


	<!-- Navigation section
================================================== -->
<section class="navbar navbar-fixed-top custom-navbar" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
            </button>
            <a href="#home" class="smoothScroll navbar-brand">AGÃNCIA DE TURISMO</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="#work" class="smoothScroll">WORK</a></li>
                <li><a href="#about" class="smoothScroll">ABOUT</a></li>
                <li><a href="#team" class="smoothScroll">TEAM</a></li>
                <li><a href="#portfolio" class="smoothScroll">GALLERY</a></li>
                <li><a href="#plan" class="smoothScroll">PLANS</a></li>
                <li><a href="#contact" class="smoothScroll">CONTACT</a></li>
            </ul>
			<ul class="nav navbar-nav navbar-right custom-nav-right">
				<li class="navbar-login"><a href="login" class="smoothScroll">ENTRAR</a></li>
				<li class="navbar-register"><a href="#register" class="smoothScroll">CADASTRAR</a></li>
			</ul>
			
        </div>
    </div>
</section>




	<!-- Homepage section
================================================== -->
	<div id="home">
		<div class="site-slider">
			<ul class="bxslider">
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/slider/img1.jpg" alt="slider image 1">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="slider-caption">
									<h2>WAGH</h2>
									<p class="color-white">Transformamos suas viagens em experiÃªncias inesquecÃ­veis, com
										cada detalhe planejado para criar momentos especiais.</p>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/slider/img2.jpg" alt="slider image 2">
					<div class="container caption-wrapper">
						<div class="slider-caption">
							<h2>WAGH</h2>
							<p class="color-white">Planeje, viaje e viva cada momento com intensidade.</p>
						</div>
					</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/slider/img3.jpg" alt="slider image 3">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="slider-caption">
									<h2>WAGH</h2>
									<p class="color-white">Descubra novos destinos.</p>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/slider/img4.jpg" alt="slider image 4">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="slider-caption">
									<h2>WAGH</h2>
									<p class="color-white">Onde seus sonhos de viagem ganham vida.</p>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/slider/img5.jpg" alt="slider image 5">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="slider-caption">
									<h2>WAGH</h2>
									<p class="color-white">Viaje leve, viaje feliz.</p>
								</div>
							</div>
						</div>
					</div>
				</li>
			</ul> <!-- /.bxslider -->
			<div class="bx-thumbnail-wrapper">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div id="bx-pager">
								<a data-slide-index="0" href=""><img src="${pageContext.request.contextPath}/resources/images/slider/tumb01.jpg"
										alt="thumbnail 1" /></a>
								<a data-slide-index="1" href=""><img src="${pageContext.request.contextPath}/resources/images/slider/tumb02.jpg"
										alt="thumbnail 2" /></a>
								<a data-slide-index="2" href=""><img src="${pageContext.request.contextPath}/resources/images/slider/tumb03.jpg"
										alt="thumbnail 3" /></a>
								<a data-slide-index="3" href=""><img src="${pageContext.request.contextPath}/resources/images/slider/tumb04.jpg"
										alt="thumbnail 4" /></a>
								<a data-slide-index="4" href=""><img src="${pageContext.request.contextPath}/resources/images/slider/tumb5.jpg"
										alt="thumbnail 5" /></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- /.site-slider -->
	</div>


	<!-- Work section
================================================== -->
	<section id="work" class="parallax-section">
		<div class="container">
			<div class="row">

				<!-- Section title
			================================================== -->
				<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
					<div class="section-title">
						<h5 class="wow bounceIn">AgÃªncia de Turismo</h5>
						<h1 class="heading">O QUE FAZEMOS</h1>
						<hr>
						<p>Na WAGH, transformamos suas viagens em experiÃªncias inesquecÃ­veis. Nossa equipe dedicada cria
							roteiros personalizados para garantir momentos especiais em cada destino..</p>
					</div>
				</div>


				<!-- Work Owl Carousel section
			================================================== -->
				<div id="owl-work" class="owl-carousel">

					<div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
						<i class="icon-globe medium-icon"></i>
						<h3>PACOTES PERSONALIZADOS</h3>
						<hr>
						<p>Crie a viagem dos seus sonhos com nossos pacotes personalizados.</p>
					</div>

					<div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.6s">
						<i class="icon-compass medium-icon"></i>
						<h3>EXPERIÃNCIAS DE CRUZEIRO</h3>
						<hr>
						<p>Aproveite cruzeiros luxuosos com itinerÃ¡rios exclusivos.</p>
					</div>

					<div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
						<i class="icon-map-pin medium-icon"></i>
						<h3>RESERVA DE HÃTEIS E VOOS</h3>
						<hr>
						<p>Reserve hotÃ©is e voos com facilidade e seguranÃ§a.</p>
					</div>

					<div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
						<i class="icon-basket medium-icon"></i>
						<h3>OFERTAS E PROMOÃÃES EXCLUSIVAS</h3>
						<hr>
						<p>Aproveite ofertas especiais e promoÃ§Ãµes para economizar.</p>
					</div>

					<div class="item col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
						<i class="icon-cloud medium-icon"></i>
						<h3>ASSISTÃNCIA E SUPORTE 27/7</h3>
						<hr>
						<p>Contate-nos a qualquer momento para suporte durante a viagem.</p>
					</div>

				</div>

			</div>
		</div>
	</section>


	<!-- About section
================================================== -->
<section id="plan" class="parallax-section">
    <div class="container">
        <div class="row">

            <!-- Section title
            ================================================== -->
            <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8 wow fadeInUp">
                <div class="section-title">
                    <h5 class="wow bounceIn">AVENTURAS ÃNICAS</h5>
                    <h1 class="heading color-white">PACOTES DE VIAGENS</h1>
                    <hr>
                    <p class="color-white">Transformamos seus sonhos de viagem em realidade.
                        Nossos pacotes personalizados garantem experiÃªncias Ãºnicas em destinos incrÃ­veis.
                        Deixe os detalhes conosco e aproveite cada momento!</p>
                </div>
            </div>

            <div id="carousel-packages" class="carousel slide wow fadeInUp" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-4 col-sm-6">
                                <div class="plan">
                                    <h2 class="plan-title">Roma</h2>
                                    <div class="plan-price">
                                        <h1 class="plan-price-title">R$ 8.000 / <small>viagem</small></h1>
                                    </div>
                                    <ul class="plan-list">
                                        <li>10 dias 15 noites</li>
                                        <li>Cultura e HistÃ³ria</li>
                                        <li>Companhia: Alitalia</li>
                                    </ul>
                                    <div class="plan-button">
                                        <button class="btn btn-default">ESCOLHER PACOTE</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="plan">
                                    <h2 class="plan-title">Gramado</h2>
                                    <div class="plan-price">
                                        <h1 class="plan-price-title">R$ 3.000 / <small>viagem</small></h1>
                                    </div>
                                    <ul class="plan-list">
                                        <li>15 dias 14 noites</li>
                                        <li>Explorar Florestas</li>
                                        <li>Companhia: GOL</li>
                                    </ul>
                                    <div class="plan-button">
                                        <button class="btn btn-default">ESCOLHER PACOTE</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="plan">
                                    <h2 class="plan-title">Fernando de Noronha</h2>
                                    <div class="plan-price">
                                        <h1 class="plan-price-title">R$ 3.500 / <small>viagem</small></h1>
                                    </div>
                                    <ul class="plan-list">
                                        <li>10 dias 9 noites</li>
                                        <li>Praias ParadisÃ­acas</li>
                                        <li>Companhia: LATAM</li>
                                    </ul>
                                    <div class="plan-button">
                                        <button class="btn btn-default">ESCOLHER PACOTE</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-4 col-sm-6">
                                <div class="plan">
                                    <h2 class="plan-title">Rio de Janeiro</h2>
                                    <div class="plan-price">
                                        <h1 class="plan-price-title">R$ 4.000 / <small>viagem</small></h1>
                                    </div>
                                    <ul class="plan-list">
                                        <li>15 dias 14 noites</li>
                                        <li>Cultura Carioca</li>
                                        <li>Companhia: Azul</li>
                                    </ul>
                                    <div class="plan-button">
                                        <button class="btn btn-default">ESCOLHER PACOTE</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="plan">
                                    <h2 class="plan-title">Albany</h2>
                                    <div class="plan-price">
                                        <h1 class="plan-price-title">R$ 6.000 / <small>viagem</small></h1>
                                    </div>
                                    <ul class="plan-list">
                                        <li>7 dias 6 noites</li>
                                        <li>ExploraÃ§Ã£o Cultural</li>
                                        <li>Companhia: American Airlines</li>
                                    </ul>
                                    <div class="plan-button">
                                        <button class="btn btn-default">ESCOLHER PACOTE</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="plan">
                                    <h2 class="plan-title">Lisboa</h2>
                                    <div class="plan-price">
                                        <h1 class="plan-price-title">R$ 23.490 / <small>viagem</small></h1>
                                    </div>
                                    <ul class="plan-list">
                                        <li>11 dias 10 noites</li>
                                        <li>Cultura e Gastronomia</li>
                                        <li>Companhia: Terco</li>
                                    </ul>
                                    <div class="plan-button">
                                        <button class="btn btn-default">ESCOLHER PACOTE</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="carousel-control-prev" href="#carousel-packages" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel-packages" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div class="col-md-12 text-center wow fadeInUp" style="margin-top: 20px;">
                <a href="todospacotes" class="btn btn-primary">VER MAIS PACOTES</a>
            </div>

        </div>
    </div>
</section>


	<!-- team section
================================================== -->
<section id="team" class="parallax-section">
    <div class="container">
        <div class="row">

            <!-- Section title -->
            <div class="container">
                <div class="row">
                    <div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
                        <div class="section-title">
                            <h5 class="wow bounceIn">WAGH</h5>
                            <h1 class="heading">NOSSA EQUIPE</h1>
                            <hr>
                            <p>A WAGH foi criada por estudantes do IFTM - Campus UberlÃ¢ndia Centro, que aplicam seus conhecimentos acadÃªmicos e paixÃ£o por viagens em serviÃ§os personalizados de alta qualidade. Com uma base sÃ³lida em gestÃ£o e inovaÃ§Ã£o, oferecemos soluÃ§Ãµes criativas e focadas no futuro, garantindo uma experiÃªncia Ãºnica para nossos clientes.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Team Member 1 -->
                    <div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                        <div class="team-wrapper">
                            <img src="${pageContext.request.contextPath}/resources/images/william.jpg" class="img-responsive" alt="William Augustinho">
                            <div class="team-des">
                                <h4>William Augustinho</h4>
                                <h3>Gerente de marketing</h3>
                                <ul class="social-icon">
                                    <li><a href="https://instagram.com/will.jrm" class="fa fa-instagram wow fadeIn" data-wow-delay="0.3s"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Team Member 2 -->
                    <div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1.1s">
                        <div class="team-wrapper">
                            <img src="${pageContext.request.contextPath}/resources/images/Afonso.jpg" class="img-responsive" alt="Victor Afonso">
                            <div class="team-des">
                                <h4>Victor Afonso</h4>
                                <h3>Planejador de viagens</h3>
                                <ul class="social-icon">
                                    <li><a href="https://instagram.com/afonso.vf" class="fa fa-instagram wow fadeIn" data-wow-delay="0.3s"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Team Member 3 -->
                    <div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1.3s">
                        <div class="team-wrapper">
                            <img src="${pageContext.request.contextPath}/resources/images/gabriel.jpg" class="img-responsive" alt="Gabriel Rodrigues">
                            <div class="team-des">
                                <h4>Gabriel Rodrigues</h4>
                                <h3>Gestor</h3>
                                <ul class="social-icon">
                                    <li><a href="https://instagram.com/gabrielrougue" class="fa fa-instagram wow fadeIn" data-wow-delay="0.3s"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Team Member 4 -->
                    <div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1.6s">
                        <div class="team-wrapper">
                            <img src="${pageContext.request.contextPath}/resources/images/heloa.jpg" class="img-responsive" alt="HeloÃ¡ Ramos">
                            <div class="team-des">
                                <h4>HeloÃ¡ Ramos</h4>
                                <h3>Coordenadora de viagens</h3>
                                <ul class="social-icon">
                                    <li><a href="https://instagram.com/heloa.raif" class="fa fa-instagram wow fadeIn" data-wow-delay="0.3s"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>



    <!-- Scripts do Bootstrap e Wow.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow.js/1.1.2/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>

			</div>
		</div>
	</section>


	<!-- Portfolio section
================================================== -->
	<section id="portfolio" class="parallax-section">
		<div class="container">
			<div class="row">

				<!-- Section title
			================================================== -->
				<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
					<div class="section-title">
						<h5 class="wow bounceIn"></h5>
						<h1 class="heading">VIAGENS REGISTRADAS</h1>
						<hr>
						<p>Diversas imagens registradas por nossos clientes! Amamos esse registro por fotos de vivÃªncias
							e realizaÃ§Ãµes atravÃ©s da nossa agÃªncia .</p>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="grid">
						<figure class="effect-zoe">
							<img src="${pageContext.request.contextPath}/resources/images/portfolio-img1.jpg" alt="portfolio img" />
							<figcaption>
								<h2>Fernando de Noronha</h2>
								<p class="icon-links">
									<a href="${pageContext.request.contextPath}/resources/images/portfolio-img1.jpg" data-lightbox-gallery="portfolio-gallery"><span
											class="icon icon-attachment"></span></a>
								</p>
							</figcaption>
						</figure>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="grid">
						<figure class="effect-zoe">
							<img src="${pageContext.request.contextPath}/resources/images/portfolio-img2.jpg" alt="portfolio img" />
							<figcaption>
								<h2>Oceano Ãndico</h2>
								<p class="icon-links">
									<a href="${pageContext.request.contextPath}/resources/images/portfolio-img2.jpg" data-lightbox-gallery="portfolio-gallery"><span
											class="icon icon-attachment"></span></a>
								</p>
							</figcaption>
						</figure>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="grid">
						<figure class="effect-zoe">
							<img src="${pageContext.request.contextPath}/resources/images/portfolio-img3.jpg" alt="portfolio img" />
							<figcaption>
								<h2>Fernando de Noronha, Pernambuco</h2>
								<p class="icon-links">
									<a href="${pageContext.request.contextPath}/resources/images/portfolio-img3.jpg" data-lightbox-gallery="portfolio-gallery"><span
											class="icon icon-attachment"></span></a>
								</p>
							</figcaption>
						</figure>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="grid">
						<figure class="effect-zoe">
							<img src="${pageContext.request.contextPath}/resources/images/portfolio-img4.jpg" alt="portfolio img" />
							<figcaption>
								<h2>Paraty, Rio de Janeiro</h2>
								<p class="icon-links">
									<a href="${pageContext.request.contextPath}/resources/images/portfolio-img4.jpg" data-lightbox-gallery="portfolio-gallery"><span
											class="icon icon-attachment"></span></a>
								</p>
							</figcaption>
						</figure>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="grid">
						<figure class="effect-zoe">
							<img src="${pageContext.request.contextPath}/resources/images/portfolio-img5.jpg" alt="portfolio img" />
							<figcaption>
								<h2>Albany, Nova York</h2>
								<p class="icon-links">
									<a href="${pageContext.request.contextPath}/resources/images/portfolio-img5.jpg" data-lightbox-gallery="portfolio-gallery"><span
											class="icon icon-attachment"></span></a>
								</p>
							</figcaption>
						</figure>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="grid">
						<figure class="effect-zoe">
							<img src="${pageContext.request.contextPath}/resources/images/portfolio-img6.jpg" alt="portfolio img" />
							<figcaption>
								<h2>MilÃ£o, ItÃ¡lia</h2>
								<p class="icon-links">
									<a href="${pageContext.request.contextPath}/resources/images/portfolio-img6.jpg" data-lightbox-gallery="portfolio-gallery"><span
											class="icon icon-attachment"></span></a>
								</p>
							</figcaption>
						</figure>
					</div>
				</div>

				<!-- Portfolio bottom section
			================================================== -->
				<div class="col-md-offset-2 col-md-8 col-sm-12">
					<div class="portfolio-bottom">
						<h2>INTERESSADO?</h2>
						<p>Venha fazer parte da nossa jornada. Entre em contato e descubra o mundo conosco!</p>
						<a href="#contact" class="btn btn-default">VAMOS LÃ!</a>
					</div>
				</div>

			</div>
		</div>
	</section>


	<!-- Plan section
================================================== -->
<section id="about" class="parallax-section">
	<div class="container">
		<div class="row">

			<!-- Section title
		================================================== -->
			<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
				<div class="section-title">
					<h5 class="wow bounceIn">WAGH</h5>
					<h1 class="heading color-white">QUEM SOMOS</h1>
					<hr>

				</div>
			</div>

			<div class="col-md-6 col-sm-12">
				<h2>NOSSA HISTÃRIA</h2>
				<p class="color-white">Na WAGH, nossa paixÃ£o por viagens e exploraÃ§Ã£o Ã© o que nos move.
					Nossa agÃªncia nasceu com o objetivo de transformar sonhos em experiÃªncias inesquecÃ­veis.
					Desde 2022, trabalhamos para oferecer serviÃ§os completos que atendem a todos os tipos de
					viajantes.
					De cruzeiros incrÃ­veis a pacotes personalizados, nossa missÃ£o Ã© garantir que cada detalhe da sua
					viagem
					seja perfeito.
					Com uma equipe dedicada e apaixonada, estamos aqui para tornar suas aventuras ao redor do mundo
					memorÃ¡veis.
					Agradecemos por escolher a WAGH â estamos ansiosos para ajudÃ¡-lo a explorar o prÃ³ximo destino
					dos seus sonhos!</p>

			</div>

			<div class="col-md-6 col-sm-12">
				<h2 class="mobile-top">POR QUE NOS ESCOLHER?</h2>
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne">
									ExcelÃªncia e PersonalizaÃ§Ã£o em Cada Viagem
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
							aria-labelledby="headingOne">
							<div class="panel-body">
								<p>ExperiÃªncia Personalizada<br>
									Oferecemos um serviÃ§o personalizado, adaptando cada viagem Ã s suas necessidades
									e desejos, para garantir uma experiÃªncia Ãºnica.
									<br><br>
									Equipe Apaixonada<br>
									Nossa equipe, apaixonada por viagens, combina conhecimento dos destinos com um
									atendimento cuidadoso e personalizado.
									<br><br>
									ServiÃ§os Diversificados<br>
									Oferecemos uma variedade de serviÃ§os para todos os tipos de viajantes.
									<br><br>
									Atendimento ao Cliente<br>
									Priorizamos o seu conforto e satisfaÃ§Ã£o, oferecendo suporte antes, durante e
									apÃ³s a viagem.
								</p>
							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"
									aria-expanded="true" aria-controls="collapseTwo">
									Empresa de Alta Qualidade
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel"
							aria-labelledby="headingTwo">
							<div class="panel-body">
								<p>Na WAGH, excelÃªncia Ã© a base de tudo o que fazemos.
									Trabalhamos com os mais altos padrÃµes de qualidade,
									desde a escolha de nossos parceiros atÃ© o atendimento ao cliente.
									Cada detalhe Ã© cuidadosamente planejado para garantir uma experiÃªncia impecÃ¡vel.
									Nossa equipe se dedica a superar expectativas, oferecendo serviÃ§os de primeira
									classe e soluÃ§Ãµes personalizadas que atendem Ã s necessidades dos viajantes mais
									exigentes. Escolher a WAGH significa confiar em uma empresa comprometida com
									a perfeiÃ§Ã£o em cada etapa da sua jornada.</p>
							</div>
						</div>
					</div>


					<div id="collapseThree" class="panel-collapse collapse" role="tabpanel"
						aria-labelledby="headingThree">
						<div class="panel-body">
							<p>Morbi pellentesque nisl at sapien congue facilisis. Proin consequat pharetra
								hendrerit. Aliquam vulputate, ligula ut pellentesque molestie, dolor nisi semper
								augue, sit amet porta risus sem non sapien. Cras vel pulvinar sapien, in
								consequat purus. Aliquam at varius augue.</p>
						</div>
					</div>
				</div>

			</div>
		</div>







	</div>
	</div>
</section>

	<!-- Contact section
================================================== -->
	<section id="contact" class="parallax-section">
		<div class="container">
			<div class="row">

				<!-- Section title
			================================================== -->
				<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
					<div class="section-title">
						<h5 class="wow bounceIn">PLANEJE SUA VIAJEM</h5>
						<h2 class="heading">ENTRE EM CONTATO</h2>
						<hr>
						<p>Tem alguma dÃºvida ou deseja mais informaÃ§Ãµes sobre nossos pacotes?
							 Nossa equipe estÃ¡ pronta para ajudar! Preencha o formulÃ¡rio abaixo e nos envie uma mensagem. 
							 Vamos juntos planejar sua prÃ³xima aventura!.</p>
					</div>
				</div>

				<!-- Contact form section
			================================================== -->
				<div class="col-md-offset-1 col-md-10 col-sm-12">
					<form action="#" method="post" class="wow fadeInUp" data-wow-delay="0.6s">
						<div class="col-md-4 col-sm-6">
							<input type="text" class="form-control" placeholder="Nome" name="nome">
						</div>
						<div class="col-md-4 col-sm-6">
							<input type="email" class="form-control" placeholder="Email" name="email">
						</div>
						<div class="col-md-4 col-sm-12">
							<input type="text" class="form-control" placeholder="Assunto" name="Assunto">
						</div>
						<div class="col-md-12 col-sm-12">
							<textarea class="form-control" placeholder="Mensagem" rows="7" name"Mensagem"></textarea>
						</div>
						<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
							<input type="submit" class="form-control" value="ENVIAR MENSAGEM">
						</div>
					</form>
				</div>

				<!-- Contact detail section
			================================================== -->
				<div class="contact-detail col-md-12 col-sm-12">
					<div class="col-md-6 col-sm-6">
						<h3><i class="icon-envelope medium-icon wow bounceIn" data-wow-delay="0.6s"></i> EMAIL</h3>
						<p>wagh@gmail.com</p>
					</div>
					<div class="col-md-6 col-sm-6">
						<h3><i class="icon-phone medium-icon wow bounceIn" data-wow-delay="0.6s"></i> TELEFONES</h3>
						<p>010-010-0110 | 090-090-0990</p>
					</div>
				</div>

			</div>
		</div>
	</section>


	<!-- Footer section
================================================== -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">

				
					<ul class="social-icon">
						<li><a href="#" class="fa fa-facebook wow fadeIn" data-wow-delay="0.3s"></a></li>
						<li><a href="#" class="fa fa-twitter wow fadeIn" data-wow-delay="0.6s"></a></li>
						<li><a href="#" class="fa fa-dribbble wow fadeIn" data-wow-delay="0.9s"></a></li>
						<li><a href="#" class="fa fa-behance wow fadeIn" data-wow-delay="1s"></a></li>
						<li><a href="#" class="fa fa-github wow fadeIn" data-wow-delay="1.3s"></a></li>
						<li><a href="#" class="fa fa-tumblr wow fadeIn" data-wow-delay="1.6s"></a></li>
					</ul>
					<p>Copyright &copy; 2016 Adventure Studio

						| Design: tooplate</p>

				</div>
			</div>
		</div>
	</footer>


	<!-- Javascript 
================================================== -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/smoothscroll.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/nivo-lightbox.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.easing-1.3.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.parallax.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

</body>

</html>