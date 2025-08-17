<%--
  Created by IntelliJ IDEA.
  User: alexg
  Date: 14/08/2025
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- HEADER -->
<div id="home" class="header-content-area bg_cover d-flex align-items-center"
     style="background-image: url(${pageContext.request.contextPath}/resources/images/header-bg.jpg)">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="header-content text-center">
                    <h2 class="header-title">Bienvenido a los mejores eventos</h2>
                    <h3 class="sub-title">Navega e infórmate sobre los mejores eventos disponibles</h3>
                    <ul class="header-btn">
                        <li><a class="main-btn page-scroll" href="#event">Ver eventos</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- CONTADORES -->
<section id="counter" class="counter-area pt-80 pb-25">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <div class="single-counter text-center mt-100">
                    <div class="counter-icon"><i class="lni-mic"></i></div>
                    <div class="counter-content"><span class="count counter">45</span><p class="text">Conciertos</p></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single-counter text-center mt-100">
                    <div class="counter-icon"><i class="lni-bulb"></i></div>
                    <div class="counter-content"><span class="count counter">12</span><p class="text">Speakers</p></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single-counter text-center mt-100">
                    <div class="counter-icon"><i class="lni-briefcase"></i></div>
                    <div class="counter-content"><span class="count counter">29</span><p class="text">Negocios</p></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single-counter text-center mt-100">
                    <div class="counter-icon"><i class="lni-coffee-cup"></i></div>
                    <div class="counter-content"><span class="count counter">56</span><p class="text">Meet and greet</p></div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- EVENTOS RECIENTES -->
<section id="event" class="pricing-area pt-85">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center pb-20">
                    <h2 class="title">Eventos recientes</h2>
                    <p class="text">Estos son nuestros eventos más recientes.</p>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <c:forEach var="event" items="${eventos}" varStatus="status">
                <c:if test="${status.index < 3}">
                    <div class="col-lg-4 col-md-8 col-sm-9">
                        <div class="single-pricing text-center">
                            <div class="pricing-price">
                                <span>${event.name}</span>
                                <p class="text">${event.date}</p>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </div>
</section>

<!-- TABLA DE TODOS LOS EVENTOS -->
<section>
    <div class="container pt-75 pb-130">
        <div class="pb-25">
            <h2 class="header-title text-center">Todos los eventos</h2>
        </div>

        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Evento</th>
                <th scope="col">Fecha</th>
                <th scope="col">Ubicación</th>
                <th scope="col">Acción</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="event" items="${eventos}" varStatus="status">
                <tr>
                    <th scope="row">${status.index + 1}</th>
                    <td>${event.name}</td>
                    <td>${event.date}</td>
                    <td>${event.location}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/delete-event?id=${event.id}"
                           class="btn btn-danger btn-sm">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
            <c:if test="${empty eventos}">
                <tr>
                    <td colspan="5" class="text-center">No hay eventos disponibles</td>
                </tr>
            </c:if>
            </tbody>
        </table>
    </div>
</section>







