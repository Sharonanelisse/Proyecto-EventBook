package com.smarroquin.EventBook.controllers;

import com.smarroquin.EventBook.models.User;
import com.smarroquin.EventBook.repositories.UserRepository;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Optional;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    private final UserRepository users = new UserRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        request.setAttribute("vista", "user/login.jsp");
        request.getRequestDispatcher("views/templates/template.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String email = req.getParameter("email");
        String pass = req.getParameter("password");

        Optional<User> u = users.findByEmail(email);

        // Validar usuario y contraseña
        if (u.isEmpty() || !u.get().getPassword().equals(pass)) {
            resp.sendRedirect(req.getContextPath() + "/login?err=1");
            return;
        }

        // Invalidar sesión previa si existe
        HttpSession oldSession = req.getSession(false);
        if (oldSession != null) {
            oldSession.invalidate();
        }

        // Crear nueva sesión
        HttpSession newSession = req.getSession(true);
        newSession.setAttribute("auth", true);
        newSession.setAttribute("userEmail", u.get().getEmail());
        newSession.setAttribute("role", u.get().getRole()); // USER o ADMIN
        newSession.setMaxInactiveInterval(30 * 60); // 30 minutos

        // Redirigir a /home
        resp.sendRedirect(req.getContextPath() + "/events");
    }
}


