<%--
  Created by IntelliJ IDEA.
  User: alexg
  Date: 14/08/2025
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Crear Evento</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .navbar-custom {
            background-color: #6f42c1;
        }
        .navbar-custom .navbar-brand,
        .navbar-custom .nav-link {
            color: #fff;
        }
        .form-container {
            max-width: 400px;
            margin: 60px auto;
            padding: 30px 25px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.1);
        }
        .form-container h2 {
            font-size: 22px;
            margin-bottom: 20px;
            color: #6f42c1;
        }
        .form-container .btn-submit {
            background-color: #6f42c1;
            color: #fff;
            font-weight: bold;
            border-radius: 8px;
            width: 100%;
            padding: 10px;
        }
        .form-container .btn-submit:hover {
            background-color: #5a34a1;
        }
    </style>
</head>
<body>

<!-- Menú Superior -->
<nav class="navbar navbar-expand-lg navbar-custom">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">EventBook</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/events">Eventos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/admin/events">Crear Evento</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Formulario Compacto -->
<section class="py-5">
    <div class="form-container">
        <h2 class="text-center">Crear Nuevo Evento</h2>
        <form action="${pageContext.request.contextPath}/admin/events" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Nombre del evento</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Ej: Concierto de Rock" required/>
            </div>
            <div class="mb-3">
                <label for="date" class="form-label">Fecha</label>
                <input type="date" class="form-control" id="date" name="date" required/>
            </div>
            <div class="mb-3">
                <label for="location" class="form-label">Ubicación</label>
                <input type="text" class="form-control" id="location" name="location" placeholder="Ej: Estadio Nacional" required/>
            </div>
            <button type="submit" class="btn btn-submit mt-2">Crear Evento</button>
        </form>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


