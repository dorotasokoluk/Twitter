package com.sda.twitter.filters;

import com.sda.twitter.persistance.entities.TbUser;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/add-article.jsp")
public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        final HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        final HttpSession session = httpServletRequest.getSession();
        final TbUser currentUser = (TbUser) session.getAttribute("currentUser");
        if (currentUser == null) {
            final String requestURI = ((HttpServletRequest) servletRequest).getRequestURI();
            httpServletRequest.setAttribute("currentURI", requestURI);
            RequestDispatcher requestDispatcher = servletRequest.getRequestDispatcher("login.jsp");

            requestDispatcher.forward(servletRequest, servletResponse);

        }
        filterChain.doFilter(servletRequest, servletResponse);

    }
}
