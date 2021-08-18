
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Diagoona Template - Contact page</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" rel="stylesheet"/>



    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="fontawesome/css/all.min.css" rel="stylesheet"/>
    <link href="css/templatemo-diagoona.css" rel="stylesheet"/>

</head>
<body>
<div class="tm-container">
    <div>
        <div class="tm-row pt-4">
            <div class="tm-col-left">
                <div class="tm-site-header media">
                    <i class="fas fa-home fa-3x mt-1 tm-logo"></i>
                    <div class="media-body">
                        <h1 class="tm-sitename text-uppercase">diagoona</h1>
                        <p class="tm-slogon">ԱՆՍՀԱՐԺ ԳՈՒՅՔԻ ԳՈՐԾԱԿԱԼՈՒԹՅՈՒՆ</p>
                    </div>
                </div>
            </div>
            <div class="tm-col-right">
                <nav class="navbar navbar-expand-lg" id="tm-main-nav">
                    <button class="navbar-toggler toggler-example mr-0 ml-auto" type="button"
                            data-toggle="collapse" data-target="#navbar-nav"
                            aria-controls="navbar-nav" aria-expanded="false" aria-label="Toggle navigation">
                        <span><i class="fas fa-bars"></i></span>
                    </button>
                    <div class="collapse navbar-collapse tm-nav" id="navbar-nav">
                        <ul class="navbar-nav text-uppercase">
                            <li class="nav-item">
                                <a class="nav-link tm-nav-link" href="index.jsp">ՏՈՒՆ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link tm-nav-link" href="about">ՄԱՍԻՆ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link tm-nav-link" href="serv">ՀԱՅՏԱՐԱՐՈՒԹՅՈՒՆՆԵՐ</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link tm-nav-link" href="contact">ԿԱՊ <span
                                        class="sr-only">(current)</span></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>

        <div class="tm-row">
            <div class="tm-col-left"></div>
            <main class="tm-col-right tm-contact-main">
                <section class="tm-content tm-contact">
                    <h2 class="mb-4 tm-content-title">ԿԱՊ ՄԵԶ ՀԵՏ</h2>
                </section>
            </main>
        </div>
    </div>

    <h4  style="margin-left: 50%">Login</h4>
    <form action="login" method="post" style="margin-left: 50%">
        email:    <input type="email" name="email"/><br>
        <p></p>
        password: <input type="password" name="password"><br>
        <input type="submit" value="login">
    </form>
    <% String msg =(String) session.getAttribute("msg");%>
    <% if (msg != null && !"".equals(msg)){ %>
    <span style="color: #c51919"><h4><%=msg%></h4></span>
    <%
            session.removeAttribute("msg");
        }
    %>

    <h4 style="margin-left: 50%">Register</h4>
    <form action="register" method="post" style="margin-left: 50%">
        name:<input type="text" name="name"/><br>
        <p></p>
        surname:<input type="text" name="surname"><br>
        <p></p>
        email:<input type="email" name="email"><br>
        <p></p>
        password:<input type="password" name="password"><br>
        <p></p>
        <input type="submit"class="form-control" value="grancvel">
    </form>


                    <div class="tm-row">
                        <div class="tm-col-left text-center">
                            <ul class="tm-bg-controls-wrapper">
                                <li class="tm-bg-control active" data-id="0"></li>
                                <li class="tm-bg-control" data-id="1"></li>
                                <li class="tm-bg-control" data-id="2"></li>
                            </ul>
                        </div>

                        <div class="tm-col-right tm-col-footer">
                            <footer class="tm-site-footer text-right">
                                <p class="mb-0">Copyright 2020 Diagoona Co.

                                    | Design: <a rel="nofollow" target="_parent" class="tm-text-link">TemplateMo</a>

                                </p>
                            </footer>
                        </div>
                    </div>

                    <div class="tm-bg">
                        <div class="tm-bg-left"></div>
                        <div class="tm-bg-right"></div>
                    </div>
        </div>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/templatemo-script.js"></script>




</body>
</html>


