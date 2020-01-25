<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.sda.twitter.persistance.entities.TbArticle" %>
<%@ page import="java.util.List" %>
<jsp:useBean id="articleService"
             scope="request"
             class="com.sda.twitter.service.ArticleService"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<jsp:include page="include/meta.jsp"/>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/4.4/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.4/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


<style>
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }
</style>

<body>
<jsp:include page="include/header.jsp"/>
<main role="main">
    <%
        final List<TbArticle> articles = articleService.getArticles();
        pageContext.setAttribute("articles", articles);
    %>
    <div class="container">

        <c:forEach items="${articles}" var="article">
            <!--wszystkie elementy z articles są przypisywane do article -->

            <div class="row d-flex justify-content-center">
                <div class="col-5">
                    <h2>Heading</h2>
                    <p> ${article.content} </p>
                    <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                </div>
            </div>


        </c:forEach>


    </div> <!-- /container -->

</main>

<jsp:include page="include/footer.jsp"/>

<script src="js/bootstrap.js"></script>


</body>
</html>

