<%--
  Created by IntelliJ IDEA.
  User: alexg
  Date: 14/08/2025
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header-area">
    <div class="navbar-area navbar-two">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg">
                        <a class="navbar-brand" href="index.html">
                            <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="Logo">
                        </a>

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTwo" aria-controls="navbarTwo" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse sub-menu-bar" id="navbarTwo">
                            <ul class="navbar-nav m-auto">
                                <li class="nav-item">
                                    <a class="page-scroll" href="${pageContext.request.contextPath}/events#home">Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="page-scroll" href="${pageContext.request.contextPath}/events#event">Eventos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="page-scroll" href="${pageContext.request.contextPath}/admin/events">
                                        Registrar evento </a>
                                </li>

                            </ul>
                        </div>

                        <div class="navbar-btn d-none d-sm-inline-block">
                            <a href="${pageContext.request.contextPath}/logout" class="main-btn">Cerrar sesión</a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>

</header>
