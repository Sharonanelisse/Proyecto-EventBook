<%--
  Created by IntelliJ IDEA.
  User: alexg
  Date: 14/08/2025
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="home" class="header-content-area bg_cover d-flex align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/header-bg.jpg)">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">


                <div class="header-content text-center">
                    <h2 class="header-title">Bienvenido a los mejores eventos</h2>
                    <h3 class="sub-title">Navega e informate sobre los mejores eventos disponibles</h3>

                    <ul class="header-btn">
                        <li><a class="main-btn page-scroll" href="#event" >Ver eventos</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<section id="counter" class="counter-area pt-80 pb-25">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <div class="single-counter text-center mt-100 wow fadeIn" data-wow-duration="1s" data-wow-delay="0s">
                    <div class="counter-icon">
                        <i class="lni-mic"></i>
                    </div>
                    <div class="counter-content">
                        <span class="count counter">45</span>
                        <p class="text">Conciertos</p>
                    </div>
                </div> <!-- single counter -->
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single-counter text-center mt-100 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.3s">
                    <div class="counter-icon">
                        <i class="lni-bulb"></i>
                    </div>
                    <div class="counter-content">
                        <span class="count counter">12</span>
                        <p class="text">Speakers</p>
                    </div>
                </div> <!-- single counter -->
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single-counter text-center mt-100 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
                    <div class="counter-icon">
                        <i class="lni-briefcase"></i>
                    </div>
                    <div class="counter-content">
                        <span class="count counter">29</span>
                        <p class="text">Negocios</p>
                    </div>
                </div> <!-- single counter -->
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single-counter text-center mt-100 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.9s">
                    <div class="counter-icon">
                        <i class="lni-coffee-cup"></i>
                    </div>
                    <div class="counter-content">
                        <span class="count counter">56</span>
                        <p class="text">Meet and great</p>
                    </div>
                </div> <!-- single counter -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>

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
            <div class="col-lg-4 col-md-8 col-sm-9">
                <div class="single-pricing text-center wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0s">
                    <div class="pricing-price">
                        <span>Evento 1</span>
                        <p class="text">10/09/2025</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-8 col-sm-9">
                <div class="single-pricing text-center  wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0s">
                    <div class="pricing-price">
                        <span>Evento 2</span>
                        <p class="text">10/09/2025</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-8 col-sm-9">
                <div class="single-pricing text-center  wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0s">
                    <div class="pricing-price">
                        <span>Evento 3</span>
                        <p class="text">10/09/2025</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section><div class="container pt-75 pb-130">
    <div class="pb-25">
        <h2 class="header-title text-center">Todos los eventos</h2>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Evento</th>
            <th scope="col">Fecha</th>
            <th scope="col">Ubicación</th>
        </tr>
        </thead>
        <tbody class="table-group-divider">
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td>John</td>
            <td>Doe</td>
            <td>@social</td>
        </tr>
        </tbody>
    </table>
    </div>
</section>






