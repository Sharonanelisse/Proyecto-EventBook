<%--
  Created by IntelliJ IDEA.
  User: alexg
  Date: 14/08/2025
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="formCreateEvent">
    <div class="container">
        <h2 class="text-center mb-4">Crear nuevo evento</h2>
        <form action="${pageContext.request.contextPath}/admin/events" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Nombre del evento</label>
                <input type="text" class="form-control" id="name" name="name" required/>
            </div>
            <div class="mb-3">
                <label for="date" class="form-label">Fecha</label>
                <input type="date" class="form-control" id="date" name="date" required/>
            </div>
            <div class="mb-3">
                <label for="location" class="form-label">Ubicación</label>
                <input type="text" class="form-control" id="location" name="location" required/>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Crear Evento</button>
            </div>
        </form>
    </div>
</section>
