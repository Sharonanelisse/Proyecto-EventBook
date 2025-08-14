<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html><html lang="es"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Filters Demo • Inicio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/style.css">
</head><body class="bg-light">
<nav class="navbar navbar-expand-lg bg-white border-bottom">
    <div class="container">
        <a class="navbar-brand text-primary" href="${pageContext.request.contextPath}/">JakartaEE • Filters</a>
        <div class="ms-auto">
            <c:choose>
                <c:when test="${sessionScope.auth}">
                    <form method="post" action="${pageContext.request.contextPath}/auth/logout">
                        <button class="btn btn-sm btn-outline-danger">Cerrar sesión</button>
                    </form>
                </c:when>
                <c:otherwise>
                    <a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/login.jsp">Login demo</a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</nav>

<section class="container my-5   lclase">
    <div class="p-4 mb-4 rounded-3 text-white" style="background:linear-gradient(135deg,#6c63ff,#00bcd4);">
        <h2 class="mb-1">Demostración de Filtros</h2>
        <p class="mb-0">Autenticación, atributos UI, seguridad y trazabilidad en el flujo HTTP.</p>
    </div>

    <c:if test="${param.bye=='1'}">
        <div class="alert alert-success">Sesión cerrada. Pueden volver a iniciar cuando gusten.</div>
    </c:if>

    <div class="row g-4">
        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Tour 1: Público</h5>
                    <p class="text-muted">Ruta sin protección para ver Correlation-Id y atributos del request.</p>
                    <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/public">Ir a /public</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Tour 2: Protegido</h5>
                    <p class="text-muted">Intenten entrar a /home sin login y vean el 403 del filtro.</p>
                    <div class="d-flex gap-2">
                        <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/home">Abrir
                            /home</a>
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/login.jsp">Login</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Ver Headers</h5>
                    <p class="text-muted">Revisen en DevTools los headers agregados por los filtros.</p>
                    <ul class="small text-muted mb-2">
                        <li>X-Content-Type-Options</li>
                        <li>X-Frame-Options</li>
                        <li>Referrer-Policy</li>
                        <li>X-Correlation-Id</li>
                    </ul>
                    <a class="btn btn-outline-dark" href="${pageContext.request.contextPath}/public">Probar en
                        /public</a>
                </div>
            </div>
        </div>
    </div>
</section>
</body></html>