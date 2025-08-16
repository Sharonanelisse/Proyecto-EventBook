<%--
  Created by IntelliJ IDEA.
  User: alexg
  Date: 14/08/2025
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="home" class="d-flex align-items-center pt-60 pb-60" style="background-image: url(${pageContext.request.contextPath}/resources/images/header-bg.jpg)" style="border-radius: 0 0 1rem 1rem; ">
</div>
<section id="counter" class="counter-area pt-80 pb-125">
    <div class="container">
        <div class="row">

            <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                <div class="card  shadow" >
                    <div class="card-body p-4">
                        <div class="mb-md-5 mt-md-4">
                            <h2 class="fw-bold mb-2 text-uppercase text-center">Registrar evento</h2>
                            <p class="-50 mb-5 text-center">¡Ingresa tus datos!</p>
                            <div class="form mb-4">
                                <label class="form-label" for="typeTextX">Nombre del evento:</label>
                                <input placeholder="Nombre del evento" type="text" id="typeEmailX" class="form-control form-control-lg" required/>

                            </div>
                            <div class="form mb-4">
                                <label class="form-label" for="typeEmailX">Fecha del evento:</label>
                                <input placeholder="Ingresa la fecha de tu evento" type="text" id="typeEmailX" class="form-control form-control-lg" required/>

                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label " for="typePasswordX">Lugar del evento:</label>
                                <input type="text" placeholder="Ingresar ubicación" id="typePasswordX" class="form-control form-control-lg" required/>

                            </div>

                            <div class="text-center mb-4">
                                <button class="btn btn-primary btn-lg px-5" type="submit">Crear evento</button>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                <div class="card  shadow" >
                    <div class="card-body p-4">
                        <div class="mb-md-5 mt-md-4">
                            <h2 class="fw-bold mb-2 text-uppercase text-center">Eventos disponibles</h2>
                            <p class="-50 mb-5 text-center">¡Administra tus eventos!</p>

                            <table class="table">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Evento</th>
                                    <th scope="col">Ubicación</th>
                                    <th scope="col">Acción</th>
                                </tr>
                                </thead>
                                <tbody class="table-group-divider">
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Ubicación del evento</td>
                                    <td><button class="btn btn-danger" >Eliminar</button></td>

                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Jacob</td>
                                    <td>Ubicación del evento</td>
                                    <td><button class="btn btn-danger" >Eliminar</button></td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>John</td>
                                    <td>Ubicación del evento</td>
                                    <td><button class="btn btn-danger" >Eliminar</button></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>



                    </div>
                </div>
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>









