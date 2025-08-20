<%-- 
    Document   : Index
    Created on : 22/07/2025, 10:16:00
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KinalitosMarket - Tu Supermercado de Confianza</title>
        <link rel="stylesheet" href="Styles/index.css"/>>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    </head>

    <body>
        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-lg navbar-custom fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">
                    KINALITOS<span class="highlight">MARKET</span>
                    <small class="d-block" style="font-size: 0.4em; color: #666;">25 AÑOS</small>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#ofertas">Ofertas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">Ubicaciones</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">Nosotros</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador?menu=VistaAdmin">Administración</a>
                        </li>
                    </ul>

                    <div class="d-flex align-items-center">
                        <button class="btn btn-compra-online me-3">
                            Compra Online
                        </button>
                        <div class="social-icons d-none d-lg-flex">
                            <a href="#"><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <section class="hero-carousel">
            <div id="heroCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://images.unsplash.com/photo-1578916171728-46686eac8d58?w=1200&h=600&fit=crop" class="d-block w-100" alt="Ofertas Especiales">
                        <div class="carousel-caption">
                            <h2>¡<span class="highlight">2x1</span> Por Aniversario!</h2>
                            <p>Celebramos 25 años con las mejores ofertas en todos nuestros productos</p>
                            <button class="btn btn-ver-ofertas">Ver Ofertas</button>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1542838132-92c53300491e?w=1200&h=600&fit=crop" class="d-block w-100" alt="Productos Frescos">
                        <div class="carousel-caption">
                            <h2>Productos <span class="highlight">Frescos</span></h2>
                            <p>La mejor calidad en frutas, verduras y productos frescos para tu familia</p>
                            <button class="btn btn-ver-ofertas">Comprar Ahora</button>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=1200&h=600&fit=crop" class="d-block w-100" alt="Carnes Premium">
                        <div class="carousel-caption">
                            <h2>Carnes <span class="highlight">Premium</span></h2>
                            <p>Las mejores carnes selectas con garantía de calidad y frescura</p>
                            <button class="btn btn-ver-ofertas">Descubrir Más</button>
                        </div>
                    </div>
                </div>
                
                <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Siguiente</span>
                </button>
            </div>
        </section>

        <!-- BENEFITS SECTION -->
        <section class="benefits-section">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-4 mb-4">
                        <div class="benefit-icon">
                            <i class="fas fa-shipping-fast"></i>
                        </div>
                        <h5 class="benefit-title">Envío Rápido</h5>
                        <p class="benefit-text">Recibe tus productos en casa en tiempo record</p>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="benefit-icon">
                            <i class="fas fa-hand-holding-heart"></i>
                        </div>
                        <h5 class="benefit-title">Calidad Garantizada</h5>
                        <p class="benefit-text">25 años respaldando la mejor calidad</p>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="benefit-icon">
                            <i class="fas fa-gift"></i>
                        </div>
                        <h5 class="benefit-title">Ofertas Exclusivas</h5>
                        <p class="benefit-text">Los mejores precios y promociones especiales</p>
                    </div>
                </div>
            </div>
        </section>

        <section id="ofertas" class="offers-section">
            <div class="container">
                <div class="section-title">
                    <p class="section-subtitle">Estas son nuestras</p>
                    <h2 class="section-main-title">OFERTAS</h2>
                    <div class="section-divider"></div>
                </div>

                <div class="row g-4">
                    <!-- Producto 1 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <span class="offer-badge">Oferta especial</span>
                            <div class="product-image">
                                <img src="https://images.unsplash.com/photo-1586190848861-99aa4a171e90?w=400" alt="Productos de Despensa">
                                <span class="discount-badge">2x1</span>
                            </div>
                            <div class="product-info">
                                <div class="product-brand">KINALITOS</div>
                                <h5 class="product-name">Despensa Básica Familiar</h5>
                                <div class="product-price">
                                    <span class="price-original">Q 150.00</span>
                                    <span class="price-final">Q 75.00 c/u</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Producto 2 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <span class="offer-badge">Oferta especial</span>
                            <div class="product-image">
                                <img src="https://images.unsplash.com/photo-1559181567-c3190ca9959b?w=400" alt="Productos Lácteos">
                                <span class="discount-badge">2x1</span>
                            </div>
                            <div class="product-info">
                                <div class="product-brand">LÁCTEOS</div>
                                <h5 class="product-name">Productos Lácteos Premium</h5>
                                <div class="product-price">
                                    <span class="price-original">Q 80.00</span>
                                    <span class="price-final">Q 40.00 c/u</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Producto 3 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <span class="offer-badge">Oferta especial</span>
                            <div class="product-image">
                                <img src="https://images.unsplash.com/photo-1542838132-92c53300491e?w=400" alt="Frutas y Verduras">
                                <span class="discount-badge">2x1</span>
                            </div>
                            <div class="product-info">
                                <div class="product-brand">FRESCOS</div>
                                <h5 class="product-name">Frutas y Verduras Frescas</h5>
                                <div class="product-price">
                                    <span class="price-original">Q 60.00</span>
                                    <span class="price-final">Q 30.00 c/u</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Producto 4 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <span class="offer-badge">Oferta especial</span>
                            <div class="product-image">
                                <img src="https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400" alt="Carnes">
                                <span class="discount-badge">2x1</span>
                            </div>
                            <div class="product-info">
                                <div class="product-brand">CARNICERÍA</div>
                                <h5 class="product-name">Carnes Selectas Premium</h5>
                                <div class="product-price">
                                    <span class="price-original">Q 120.00</span>
                                    <span class="price-final">Q 60.00 c/u</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Producto 5 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <span class="offer-badge">Oferta especial</span>
                            <div class="product-image">
                                <img src="https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=400" alt="Panadería">
                                <span class="discount-badge">2x1</span>
                            </div>
                            <div class="product-info">
                                <div class="product-brand">PANADERÍA</div>
                                <h5 class="product-name">Pan Artesanal Recién Horneado</h5>
                                <div class="product-price">
                                    <span class="price-original">Q 25.00</span>
                                    <span class="price-final">Q 12.50 c/u</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Producto 6 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <span class="offer-badge">Oferta especial</span>
                            <div class="product-image">
                                <img src="https://images.unsplash.com/photo-1584464491033-06628f3a6b7b?w=400" alt="Limpieza">
                                <span class="discount-badge">2x1</span>
                            </div>
                            <div class="product-info">
                                <div class="product-brand">LIMPIEZA</div>
                                <h5 class="product-name">Productos de Limpieza Hogar</h5>
                                <div class="product-price">
                                    <span class="price-original">Q 45.00</span>
                                    <span class="price-final">Q 22.50 c/u</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- ANNIVERSARY SECTION -->
        <section class="anniversary-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center">
                        <div class="anniversary-number">25</div>
                        <p class="anniversary-text">Años sirviendo a Guatemala</p>
                        <p class="lead mb-4">Celebramos contigo nuestro aniversario con las mejores ofertas y promociones especiales</p>
                        <button class="btn btn-anniversary">Ver Todas las Ofertas</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- FOOTER -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <h4 class="footer-brand">KinalitosMarket</h4>
                        <p class="footer-text">Tu supermercado de confianza desde 1999. Calidad, frescura y los mejores precios para tu familia.</p>
                    </div>
                    <div class="col-lg-6 text-end">
                        <div class="social-icons">
                            <a href="#"><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
                <hr style="border-color: #444; margin: 2rem 0 1rem;">
                <div class="row">
                    <div class="col-12 text-center">
                        <p class="footer-text mb-0">© 2024 KinalitosMarket. Todos los derechos reservados.</p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>