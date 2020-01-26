<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="articleService"
             scope="request"
             class="com.sda.twitter.service.ArticleService"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<jsp:include page="include/meta.jsp"/>


<body>
<jsp:include page="include/header.jsp"/>
<main role="main" ng-app="articleApp">


    <%-- main zsotał wykomentowny bo używamy angulara    <%--%>
    <%--        final List<TbArticle> articles = articleService.getArticles();--%>
    <%--        pageContext.setAttribute("articles", articles);--%>
    <%--    %>--%>
    <div class="container">
        <div ng-controller="articleController" ng-init="init()">
            <h2>{{weather.main.temp}}&deg;C</h2>
            <div ng-repeat="article in articles">
                <%-- articles jest tworzony w kontonerze. W pętli będą wydobywany. Coś jak foreach--%>
                <div class="row d-flex justify-content-center">
                    <div class="col-5">
                        <h2>Heading</h2>
                        <p>{{article.content}}</p>
                        <%-- inteliej nie wie co będzie w obiecie article. content dlatego nie podpowiada--%>
                        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                    </div>
                </div>
                <hr>
            </div>
        </div>


        <%--        <c:forEach items="${articles}" var="article">--%>
        <%--            <!--wszystkie elementy z articles są przypisywane do article -->--%>

        <%--            <div class="row d-flex justify-content-center">--%>
        <%--                <div class="col-5">--%>
        <%--                    <h2>Heading</h2>--%>
        <%--                    <p> ${article.content} </p>--%>
        <%--                    <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </c:forEach>--%>

    </div> <!-- /container -->

</main>

<jsp:include page="include/footer.jsp"/>

<%--<script src="js/bootstrap.js"></script>--%>
<script src="js/angular.js"></script> <!-- importuje cały skrypt-->
<script src="js/controller.js"></script>

</body>
</html>

