<%--
  Created by IntelliJ IDEA.
  User: alexg
  Date: 14/08/2025
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<section class="py-5 d-flex justify-content-center">
    <div class="card shadow-lg p-4" style="max-width: 400px; width: 100%; border-radius: 12px;">
        <h2 class="text-center mb-4 fw-bold text-secondary">Crear Nuevo Evento</h2>
        <form action="${pageContext.request.contextPath}/admin/events" method="post">
            <div class="mb-3">
                <label for="name" class="form-label fw-semibold">Nombre del evento</label>
                <input type="text" class="form-control rounded-3" id="name" name="name" placeholder="Ej: Concierto de Rock" required/>
            </div>
            <div class="mb-3">
                <label for="date" class="form-label fw-semibold">Fecha</label>
                <input type="date" class="form-control rounded-3" id="date" name="date" required/>
            </div>
            <div class="mb-3">
                <label for="location" class="form-label fw-semibold">Ubicación</label>
                <input type="text" class="form-control rounded-3" id="location" name="location" placeholder="Ej: Estadio Nacional" required/>
            </div>
            <div class="text-center mt-4">
                <button type="submit" class="btn text-white px-4 py-2 fw-bold"
                        style="background-color: #6f42c1; border-radius: 12px;">
                    Crear Evento
                </button>
            </div>
        </form>
    </div>
</section>


            <!-- Listado de Eventos -->
            <div class="col-12 col-md-6">
                <div class="card shadow-lg border-0 rounded-4">
                    <div class="card-body p-5">
                        <h2 class="text-center mb-4 fw-bold text-secondary">Eventos disponibles</h2>
                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Evento</th>
                                <th>Ubicación</th>
                                <th>Acción</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="event" items="${eventos}" varStatus="status">
                                <tr>
                                    <th scope="row">${status.index + 1}</th>
                                    <td>${event.name}</td>
                                    <td>${event.location}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/admin/delete-event?id=${event.id}"
                                           class="btn btn-danger btn-sm">
                                            Eliminar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            <c:if test="${empty eventos}">
                                <tr>
                                    <td colspan="4" class="text-center">No hay eventos disponibles</td>
                                </tr>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div> <!-- row -->
    </div> <!-- container -->
</section>










