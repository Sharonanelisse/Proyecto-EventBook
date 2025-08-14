package com.smarroquin.EventBook.filters;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.util.UUID;

public class UiAttributesFilter implements Filter {
    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest r = (HttpServletRequest) req;
        req.setAttribute("basePath", r.getContextPath());
        req.setAttribute("cid", UUID.randomUUID().toString());
        chain.doFilter(req, res);
    }
}