<%-- 
    Document   : vistaadmin
    Created on : 22 jul 2025, 13:07:15
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KM Admin - Panel de Control</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_KM.png">
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;600;700;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/vistaadmin.css"/>
    </head>
    <body>
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">
                    KINALITOS<span>CONTROL</span>
                    <span class="logo-subtitle">ADMIN</span>
                </div>
                <ul class="menu">
                    <li><a href="Controlador?menu=Principal">Inicio</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="hero">
                <div class="hero-content">
                    <h1><span class="highlight">Panel de Control</span></h1>
                </div>
            </div>

            <div class="dashboard-grid">
                <div class="admin-card">
                    <div class="card-image">
                        <div class="card-icon">
                            <i class="fa-solid fa-truck-field"></i>
                        </div>
                    </div>
                    <div class="card-content">
                        <h3 class="card-title">Gestión de Proveedores</h3>
                        <div class="card-price">
                        </div>
                        <p class="card-description">
                            Administra completamente la información de tus proveedores. Agrega, actualiza, consulta historiales y mantén control total de tu red de suministro.
                        </p>
                        <a href="Controlador?menu=Proveedor&accion=Listar" class="btn_ver_gestion">
                            <i class="fas fa-arrow-right"></i> Gestionar Proveedores
                        </a>
                    </div>
                </div>

                <div class="admin-card">
                    <div class="card-image">
                        <div class="card-icon">
                            <i class="fa-solid fa-box-open"></i>
                        </div>
                    </div>
                    <div class="card-content">
                        <h3 class="card-title">Catálogo de Productos</h3>
                        <div class="card-price">
                        </div>
                        <p class="card-description">
                            Controla tu inventario de manera profesional. Añade productos, actualiza precios, gestiona stock y mantén tu catálogo optimizado.
                        </p>
                        <a href="Controlador?menu=Producto&accion=Listar" class="btn_ver_gestion">
                            <i class="fas fa-arrow-right"></i> Gestionar Productos
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>