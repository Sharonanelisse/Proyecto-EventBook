package com.smarroquin.EventBook.filters;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class SecurityHeadersFilter implements Filter {
    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpServletResponse p = (HttpServletResponse) res;
        p.setHeader("X-Content-Type-Options", "nosniff");
        p.setHeader("X-Frame-Options", "SAMEORIGIN");
        p.setHeader("Referrer-Policy", "no-referrer");
        chain.doFilter(req, res);
    }
}
