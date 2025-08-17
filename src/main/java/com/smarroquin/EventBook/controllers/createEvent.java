package com.smarroquin.EventBook.controllers;

import com.smarroquin.EventBook.service.EventService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/admin/events")
public class createEvent extends HttpServlet {

    private final EventService eventService = new EventService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        HttpSession session = request.getSession(false);
        if (session == null /* || !"ADMIN".equals(session.getAttribute("role")) */) {
            response.sendRedirect(request.getContextPath() + "/login.jsp?err=1");
            return;
        }

        // Este atributo indica qué JSP cargar dentro del template
        request.setAttribute("vista", "admin/create.jsp");
        request.getRequestDispatcher("/views/templates/templateWeb.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        String name = request.getParameter("name");
        String dateStr = request.getParameter("date");
        String location = request.getParameter("location");

        if (name != null && dateStr != null && location != null) {
            Date date = Date.valueOf(dateStr);
            eventService.add(name, date, location);
        }

        // Redirige al listado de eventos después de crear
        response.sendRedirect(request.getContextPath() + "/events");
    }
}


