<%--
  Created by IntelliJ IDEA.
  User: alexg
  Date: 14/08/2025
  Time: 09:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<section class="formLogin ">
    <div class="container ">
        <div class="row d-flex justify-content-center ">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card  shadow" style="border-radius: 1rem; ">
                    <div class="card-body p-4  p-xs-3">
                        <div class="mb-md-5 mt-md-4">
                            <h2 class="fw-bold mb-2 text-uppercase text-center">Iniciar sesión</h2>
                            <p class="-50 mb-5 text-center">¡Ingresa tus datos!</p>

                            <div class="form mb-4">
                                <label class="form-label" for="typeEmailX">Email</label>
                                <input placeholder="usuario@email.com" type="email" id="typeEmailX" class="form-control form-control-lg" required/>

                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label " for="typePasswordX">Password</label>
                                <input placeholder="*******" type="password" id="typePasswordX" class="form-control form-control-lg" required/>

                            </div>
                            <div class="text-center mb-4">
                                <button class="btn btn-primary btn-lg px-5" type="submit">Ingresar</button>
                            </div>
                        </div>

                        <div class="text-center">
                            <p class="mb-0">No tienes una cuenta? <a href="${pageContext.request.contextPath}/register" class="fw-bold">Registrate</a>
                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
