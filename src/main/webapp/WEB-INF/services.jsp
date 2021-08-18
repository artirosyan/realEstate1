
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
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

                    <div class="container">
                        <div class="row col-md-6 col-md-offset-2 custyle">
                            <table class="table table-striped custab">
                                <thead>

                                <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">Confirm Delete</h4>
                                            </div>

                                            <div class="modal-body">
                                                <p>You are about to delete one track, this procedure is irreversible.</p>
                                                <p>Do you want to proceed?</p>
                                                <p class="debug-url"></p>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                                <a class="btn btn-danger btn-ok">Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <a href="contact" class="btn btn-primary btn-xs pull-right"><b></b>For Add new Home please Login</a>
                                <tr style="color: white">
                                    <th>addres</th>
                                    <th>rooms</th>
                                    <th>price</th>
                                    <th>description</th>
                                    <th>phoneNumber</th>
                                    <th class="text-center">Action</th>
                                </tr>
                                </thead>

                                <c:forEach var="home" items="${requestScope.get('serv')}">

                                    <tr style="color: white">
                                        <td><c:out value="${home.getAddres()}" />
                                        </td>
                                        <td><c:out value="${home.getRooms()}" />
                                        </td>
                                        <td><c:out value="${home.getPrice()}" />
                                        </td>
                                        <td><c:out value="${home.getDescription()}" />
                                        </td>
                                        <td><c:out value="${home.getPhoneNumber()}" />
                                        </td>


                                        <td><a href="singleHome?id=<c:out value="${home.id}" />" class="btn btn-primary btn-xs pull-right">Show more</a>
                                            <a href="updateHome?id=<c:out value="${home.id}" />" class="btn btn-primary btn-xs pull-right">Update.</a>
                                            <a data-href="deleteHome?id=<c:out value="${home.id}" />"
                                               data-toggle="modal"
                                               data-target="#confirm-delete" class="btn btn-primary btn-xs pull-right" style="color: red">Delete..</a></td>
                                    </tr>

                                </c:forEach>

                            </table>
                        </div>
                    </div>

                    <script>
                        $('#confirm-delete').on('show.bs.modal', function(e) {
                            $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));

                            $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
                        });
                    </script>



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

