<%@ page import="am.realestate.realestate.model.Home" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 13/օգս/2021
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Index</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="content-language" content="ie=edge">
    <title>ԱՆՍՀԱՐԺ ԳՈՒՅՔԻ ԳՈՐԾԱԿԱԼՈՒԹՅՈՒՆ</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" rel="stylesheet"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="fontawesome/css/all.min.css" rel="stylesheet"/>
    <link href="css/templatemo-diagoona.css" rel="stylesheet"/>
    </div>

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
                        <p class="tm-slogon">ԱՆՇԱՐԺ ԳՈՒՅՔԻ ԳՈՐԾԱԿԱԼՈՒԹՅՈՒՆ</p>
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
                            <li class="nav-item active">
                                <a class="nav-link tm-nav-link" href="index.jsp">ՏՈՒՆ<span
                                        class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link tm-nav-link" href="about">ՄԱՍԻՆ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link tm-nav-link" href="serv">ՀԱՅՏԱՐԱՐՈՒԹՅՈՒՆՆԵՐ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link tm-nav-link" href="contact">ԿԱՊ</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <div class="tm-row">
            <div class="tm-col-left"></div>
            <main class="tm-col-right">
                <section class="tm-content">
                    <% String msg = (String) session.getAttribute("msg");%>
                    <% Home home = (Home) request.getAttribute("home");%>
                    <% if (msg != null && !"".equals(msg)) { %>
                    <span><%=msg%></span>
                    <%
                            session.removeAttribute("msg");
                        }%>
                    <h1>Update Home</h1> | <a href="logout">Logout</a>


                    <form action="updateHome" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="id" value="<%=home.getId()%>" >
                        <p></p>
                        addres: <input type="text" name="addres" value="<%=home.getAddres()%>"/> <br>
                        <p></p>
                        rooms: <input type="number" name="rooms" value="<%=home.getRooms()%>"/> <br>
                        <p></p>
                        price: <input type="number" name="price"  value="<%=home.getPrice()%>"/> <br>
                        <p></p>
                        description: <input type="text" name="description" value="<%=home.getDescription()%>"/> <br>
                        <p></p>
                        phoneNumber: <input type="number" name="phoneNumber" value="<%=home.getPhoneNumber()%>"/> <br>
                        <p></p>
                        picture: <input type="file" name="picture"> <br>
                        <p></p>
                        <input type="submit" value="UPDATE HOME">
                    </form>
                </section>
            </main>
        </div>
    </div>
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
                <p class="m-auto">Copyright 2020 Diagoona Co.

                    | Design: <a rel="nofollow" target="_parent" href="https://templatemo.com" class="tm-text-link">TemplateMo</a>
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