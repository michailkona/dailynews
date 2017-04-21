<!DOCTYPE html>
<html lang="en">
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="Model.Article"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Daily News</title>
        <meta name="description" content="Daily News">
        <meta name="keywords" content="Daily News">

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- =======================================================
            Theme Name: Medilab
            Theme URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
            Author: BootstrapMade.com
            Author URL: https://bootstrapmade.com
        ======================================================= -->
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        <!--banner-->
        <section id="banner" class="banner" >
            <div class="bg-colorUser">
                <nav class="navbar navbar-default navbar-fixed-top">
                    <div class="container">
                        <div class="col-md-12">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="index.html#banner"><img src="img/DailyNewsTitle.jpg" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
                            </div>
                            <div class="collapse navbar-collapse navbar-right" id="myNavbar">
                                <ul class="nav navbar-nav">

                                    <c:choose>
                                        <c:when test="${author_id>0}">
                                            <li class="active"><a href="LoginServlet?author_id=${author_id}#banner">Αρχικη</a></li>
                                            <li class=""><a href="LoginServlet?author_id=${author_id}#service">Υπηρεσιες</a></li>
                                            <li class=""><a href="LoginServlet?author_id=${author_id}#category">Κατηγοριες</a></li>
                                            <li class=""><a href="LoginServlet?author_id=${author_id}#contact">Επικοινωνια</a></li>
                                            <li class=""><a href="ArticleServlet?author_id=${author_id}">Προβολη Αρθρων</a></li>
                                            <li class=""><a href="LogoutServlet">Αποσυνδεση</a></li>
                                            </c:when>
                                            <c:otherwise>
                                            <li class="active"><a href="index.html#banner">Αρχικη</a></li>
                                            <li class=""><a href="index.html#service">Υπηρεσιες</a></li>
                                            <li class=""><a href="index.html#category">Κατηγοριες</a></li>
                                            <li class=""><a href="index.html#contact">Επικοινωνια</a></li>
                                            <li class=""><a href="LoginServlet">Συνδεση</a></li>
                                            </c:otherwise>
                                        </c:choose>

                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>

            </div>


            <div style="padding-top: 10%;">
                <div class="col-md-12">
                    <h2 class="ser-title">Προβολη Αρθρων</h2>
                    <hr class="botm-line">

                </div>

                <div class="col-md-9 col-sm-8 col-xs-12 text-justify">
                    <div style="visibility: visible;" class="col-sm-9 more-features-box">

                        <div class="more-features-box-text">
                            ${messagearticle}
                            <c:forEach items="${article_list}" var="articles">
                                <div class="more-features-box-text-icon"> 
                                    <i class="fa fa-book" aria-hidden="true"></i> 
                                </div>
                                <div class="more-features-box-text-description">

                                    <h3>${articles.article_title}</h3>
                                    <h6>${articles.article_date_published}, ${articles.category_title}</h6>
                                    <p>${articles.article_text}</p>

                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--/ banner-->

        <!--contact-->
        <section id="contact" class="section-padding">
            <div class="container">


            </div>
        </section>
        <!--/ contact-->
        <!--footer-->
        <footer id="footer">

            <div class="footer-line">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            © Copyright Daily News. All Rights Reserved
                            <div class="credits">
                                <!-- 
                                    All the links in the footer should remain intact. 
                                    You can delete the links only if you purchased the pro version.
                                    Licensing information: https://bootstrapmade.com/license/
                                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Medilab
                                -->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--/ footer-->
        <!--/ footer-->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.easing.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/jquery.ui.map.min.js"></script>
    </body>
</html>




