<%@ page contentType="text/html;charset=UTF-8" %>

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

<body class="text-center">
<jsp:include page="include/header.jsp"/>

<main class="container pb-3 mb-3">
    <div class="row text-center">
        <div class="container">
            <div class="col-md-4 m-auto">
                <form action="login" method="get">
                    <input type="hidden" name="currentURIfromLoginJSP" value="{request.getParametr('currentURI')}">
                    <!-- nie będize widoczne dla użytkownika-->

                    <img class="mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt=""
                         width="72"
                         height="72">
                    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
                    <label for="inputLogin" class="sr-only">Login</label>
                    <input type="text" name="userName" id="inputLogin" class="form-control" placeholder="Login" required
                           autofocus>
                    <label for="inputPassword" class="sr-only">Password</label>
                    <input type="password" name="password" id="inputPassword" class="form-control"
                           placeholder="Password" required>
                    <div class="checkbox mb-3">
                        <label>
                            <input type="checkbox" value="remember-me"> Remember me
                        </label>
                    </div>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                    <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
                </form>
            </div>
        </div>
    </div>

</main>

<jsp:include page="include/footer.jsp"/>

<script src="js/bootstrap.js"></script>


</body>
</html>


