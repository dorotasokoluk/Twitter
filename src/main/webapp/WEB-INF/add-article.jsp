<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<jsp:include page="include/meta.jsp"/>
<body>

<jsp:include page="include/header.jsp"/>
<main role="main">
    <div class="container">
        <div class="col-md-8 m-auto text-left">
            <h4 class="mb-3">Add new Article</h4>
            <form name="addArticleForm" class="needs-validation" action="addArticle" method="post">
                <div class="mb-8">
                    <div class="form-group">
                        <label>
                            Content
                            <textarea class="form-control" name="content" rows="3" cols="8"></textarea>
                        </label>
                    </div>
                </div>

                <hr class="mb-4">
                <button class="btn-primary btn-lg btn-block" type="submit">Add article</button>
            </form>
        </div>
    </div>


</main>
<jsp:include page="include/footer.jsp"/>
<script src="js/bootstrap.js"></script>
</body>
</html>

