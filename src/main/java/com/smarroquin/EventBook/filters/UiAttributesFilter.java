package com.smarroquin.EventBook.filters;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;

public class UiAttributesFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();

        if (uri.startsWith(req.getContextPath() + "/resources/")
                || uri.startsWith(req.getContextPath() + "/css/")
                || uri.startsWith(req.getContextPath() + "/js/")
                || uri.startsWith(req.getContextPath() + "/images/")) {
            chain.doFilter(request, response);
            return;
        }

        req.setAttribute("basePath", req.getContextPath());
        req.setAttribute("cid", UUID.randomUUID().toString());

        chain.doFilter(req, res);
    }

}