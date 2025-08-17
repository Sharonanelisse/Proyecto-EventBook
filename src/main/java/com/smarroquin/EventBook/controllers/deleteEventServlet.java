package com.smarroquin.EventBook.controllers;

import com.smarroquin.EventBook.service.EventService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/admin/delete-event")
public class deleteEventServlet extends HttpServlet {

    private final EventService eventService = new EventService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        HttpSession session = request.getSession(false);
        if (session == null /* || !"ADMIN".equals(session.getAttribute("role")) */) {
            response.sendRedirect(request.getContextPath() + "/login.jsp?err=1");
            return;
        }

        String idStr = request.getParameter("id");
        if (idStr != null) {
            long id = Long.parseLong(idStr);
            eventService.delete(id);
        }

        response.sendRedirect(request.getContextPath() + "/events");
    }
}

