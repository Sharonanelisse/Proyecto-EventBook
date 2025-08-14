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
                </div>
            </div>
        </div>
    </div>
</div>
<section id="counter" class="counter-area pt-80 pb-130">
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

<section id="pricing" class="pricing-area pt-115 pb-200">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center pb-20">
                    <h2 class="title">Eventos disponibles</h2>
                    <p class="text">Estos son nuestros eventos disponibles.</p>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-8 col-sm-9">
                <div class="single-pricing text-center mt-30 wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0s">
                    <div class="pricing-name">
                        <h4 class="pricing-title">Evento 1</h4>
                        <span class="sub-title">10/09/2025</span>
                    </div>
                    <div class="pricing-price">
                        <span>$ 29.00</span>

                    </div>

                    <div class="pricing-btn">
                        <a class="main-btn" href="#">Buy Ticket</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-8 col-sm-9">
                <div class="single-pricing active text-center mt-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
                    <div class="pricing-name">
                        <h4 class="pricing-title">STANDARD PASS</h4>
                        <span class="sub-title">Price Excluding 20% VAT</span>
                    </div>
                    <div class="pricing-price">
                        <span>$ 39.00</span>
                        <p class="text">Per Day</p>
                    </div>
                    <div class="pricing-list">
                        <ul>
                            <li>Pro  Regular Seating</li>
                            <li>Best Comfortable Seat</li>
                            <li>Coffee Break With Snacks</li>
                            <li>One Workshop For Practise</li>
                            <li>Course Certificate</li>
                        </ul>
                    </div>
                    <div class="pricing-btn">
                        <a class="main-btn main-btn-2" href="#">Buy Ticket</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-8 col-sm-9">
                <div class="single-pricing text-center mt-30 wow fadeInRight" data-wow-duration="1s" data-wow-delay="0s">
                    <div class="pricing-name">
                        <h4 class="pricing-title">PREMIUM PASS</h4>
                        <span class="sub-title">Price Excluding 20% VAT</span>
                    </div>
                    <div class="pricing-price">
                        <span>$ 49.00</span>
                        <p class="text">Per Day</p>
                    </div>
                    <div class="pricing-list">
                        <ul>
                            <li>Pro  Regular Seating</li>
                            <li>Best Comfortable Seat</li>
                            <li>Coffee Break With Snacks</li>
                            <li>One Workshop For Practise</li>
                            <li>Course Certificate</li>
                        </ul>
                    </div>
                    <div class="pricing-btn">
                        <a class="main-btn" href="#">Buy Ticket</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>








