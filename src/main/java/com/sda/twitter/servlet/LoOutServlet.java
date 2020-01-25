package com.sda.twitter.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/logout")


public class LoOutServlet extends HttpServlet {
    @Override
    public void doGet(
            HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("index.jsp");


    }

}
