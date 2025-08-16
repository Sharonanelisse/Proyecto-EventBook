package com.smarroquin.EventBook.controllers;

import com.smarroquin.EventBook.models.User;
import com.smarroquin.EventBook.repositories.UserRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/register")
public class registerServlet extends HttpServlet {

    private final UserRepository userRepository = new UserRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        request.setAttribute("vista", "user/register.jsp");
        request.getRequestDispatcher("views/templates/template.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String role = request.getParameter("role");

        // Validar confirmación de contraseña
        if (confirmPassword != null && !password.equals(confirmPassword)) {
            request.setAttribute("error", "Las contraseñas no coinciden.");
            request.setAttribute("vista", "user/register.jsp");
            request.getRequestDispatcher("views/templates/template.jsp").forward(request, response);
            return;
        }

        if (role == null || role.isEmpty()) {
            role = "USER";
        }

        // Validar si ya existe
        if (userRepository.findByEmail(email).isPresent()) {
            request.setAttribute("error", "El email ya está registrado.");
            request.setAttribute("vista", "user/register.jsp");
            request.getRequestDispatcher("views/templates/template.jsp").forward(request, response);
            return;
        }

        // Crear y guardar usuario
        User user = new User(name, email, password);
        user.setRole(role);
        userRepository.save(user);

        // Redirigir a login
        response.sendRedirect("");
    }
}



