package com.sda.twitter.servlet;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.sda.twitter.service.ArticleService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.List;

@WebServlet(urlPatterns = "/api/articles")
public class ArticlesServlet extends HttpServlet {
    final ArticleService articleService = new ArticleService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String pathInfo = req.getPathInfo(); //to to co jest poza url patterns,
        if (pathInfo == null || pathInfo.equals("/")) {
            final List articles = articleService.getArticles(); // zwraca listę artykółow
            sendAsJson(articles, resp);
        }
    }

    private void sendAsJson(List models, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding(StandardCharsets.UTF_8.name());
        final Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create(); //tworzenie obiektu gson
        final String jsonString = gson.toJson(models);// zrzutowanie na obiekt json
        final PrintWriter writer = response.getWriter();
        writer.print(jsonString);
        writer.flush(); // wysyłanie


    }

}
