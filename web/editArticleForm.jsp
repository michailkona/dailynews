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
                                <a class="navbar-brand" href="LoginServlet?author_id=${author_id}#banner"><img src="img/DailyNewsTitle.jpg" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
                            </div>
                            <div class="collapse navbar-collapse navbar-right" id="myNavbar">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="LoginServlet?author_id=${author_id}#banner">Αρχικη</a></li>
                                    <li class=""><a href="LoginServlet?author_id=${author_id}#service">Υπηρεσιες</a></li>
                                    <li class=""><a href="LoginServlet?author_id=${author_id}#category">Κατηγοριες</a></li>
                                    <li class=""><a href="LoginServlet?author_id=${author_id}#contact">Επικοινωνια</a></li>
                                    <li class=""><a href="ArticleServlet?author_id=${author_id}">Προβολη Αρθρων</a></li>
                                    <li class=""><a href="LogoutServlet">Αποσυνδεση</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>

            </div>


            <div style="padding-top: 10%;">
                <div class="col-md-12">
                    <h2 class="ser-title">Επεξεργασια αρθρου</h2>

                    <hr class="botm-line">
                </div>

                <div class="col-md-9 col-sm-8 col-xs-12">
                    <div style="visibility: visible;" class="col-sm-9 more-features-box">
                        <div class="more-features-box-text">
                            <form action="ArticleUpdateServlet?author_id=${author_id}" method="post" role="form" class="contactForm">
                                    <input type="hidden" name="article_id" class="form-control br-radius-zero" id="article_id" value="${article_list.get(0).article_id}">

                                <div class="form-group">
                                    <input type="text" name="article_title" class="form-control br-radius-zero" id="article_title" value="${article_list.get(0).article_title}" placeholder="Τίτλος" >
                                </div>
                                <div class="form-group">
                                    <textarea rows="4" cols="50" class="form-control br-radius-zero" name="article_text" id="article_text" value="${article_list.get(0).article_text}" placeholder="Κείμενο"  >${article_list.get(0).article_text}</textarea>
                                </div>
                               
                                <div class="form-group">
                                    <select name="category_id" id="category_id">
                                        <option value="${article_list.get(0).category_title}">${article_list.get(0).category_title}</option>
                                        
                                    </select>
                                </div>

                                <div class="form-action">
                                    <button type="submit" class="btn btn-form">Αποθήκευση</button>
                                </div>
                            </form>

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

    </body>
</html>





