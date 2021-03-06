package com.sda.twitter.servlet;

import com.sda.twitter.persistance.entities.TbUser;
import com.sda.twitter.service.ArticleService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

@WebServlet(urlPatterns = "/addArticle")
public class AddArticleServlet extends HttpServlet {
    private ArticleService articleService = new ArticleService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding(StandardCharsets.UTF_8.name());
        final String content = req.getParameter("content");
        final TbUser currentUser = (TbUser) req.getSession().getAttribute("currentUser");
        articleService.addArticle(currentUser, content);
        resp.setCharacterEncoding(StandardCharsets.UTF_8.name()); // ustawienie polskich znaków
        resp.sendRedirect("index.jsp");


    }
}
