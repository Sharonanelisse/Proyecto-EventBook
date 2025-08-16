package com.smarroquin.EventBook.controllers;

import com.smarroquin.EventBook.models.Event;
import com.smarroquin.EventBook.service.EventService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/events")
public class eventsServlet extends HttpServlet {

    private final EventService eventService = new EventService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("auth") == null) {
            response.sendRedirect(request.getContextPath() + "/login.jsp?err=1");
            return;
        }

        List<Event> eventos = eventService.findAll();
        request.setAttribute("eventos", eventos);

        request.setAttribute("vista", "events/events.jsp");
        request.getRequestDispatcher("views/templates/templateWeb.jsp").forward(request, response);
    }
}
