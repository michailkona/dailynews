<%-- 
    Document   : login
    Created on : 24 Μαρ 2017, 8:51:08 μμ
    Author     : konstantina
--%>

<%@ page language="java" pageEncoding="utf8" contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
    <head>
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
        <section id="banner" class="banner">
            <div class="bg-color">
                <nav class="navbar navbar-default navbar-fixed-top">
                    <div class="container">
                        <div class="col-md-12">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="index.html"><img src="img/DailyNewsTitle.jpg" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
                            </div>
                            <div class="collapse navbar-collapse navbar-right" id="myNavbar">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="index.html">Αρχικη</a></li>
                                    <li class=""><a href="index.html#service">Υπηρεσιες</a></li>
                                    <li class=""><a href="index.html#category">Κατηγοριες</a></li>
                                    <li class=""><a href="index.html#contact">Επικοινωνια</a></li>
                                    <li class=""><a href="LoginServlet">Συνδεση</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
                <div class="container">
                    <div class="row">
                        <div class="banner-info">
                            <div class="banner-logo text-center">
                                <img src="img/DailyNewsTitle.jpg" class="img-responsive">
                                
                            </div><br><br>
                            <div class=" text-center">
                                <h1 class="white">Συνδεθείτε στο λογαριασμό σας!!</h1>
                                <br>
                                
                                <div class="text-center" style="padding-left: 30%; padding-right: 30%;">
                                    <div class="alert-danger">${error}</div><br>
                                    <form action="LoginServlet" method="post" role="form" class="contactForm" >
                                        <div class="form-group">
                                            <input type="text" name="author_username" class="form-control br-radius-zero" id="author_username" placeholder="Όνομα Χρήστη"  />
                                            <div class="validation"></div>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control br-radius-zero" name="author_password" id="author_password" placeholder="Κωδικός Χρήστη" />
                                            <div class="validation"></div>
                                        </div>

                                        <div class="form-action">
                                            <button type="submit" class="btn btn-form">Σύνδεση</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                           	
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--/ banner-->







        <!--footer-->
        <footer id="footer">
            <div class="top-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-4 marb20">
                            <div class="ftr-tle">
                                <h4 class="white no-padding">Σχετικά με εμάς</h4>
                            </div>
                            <div class="info-sec">
                                <p>Praesent convallis tortor et enim laoreet, vel consectetur purus latoque penatibus et dis parturient.</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 marb20">
                            <div class="ftr-tle">
                                <h4 class="white no-padding">Χρήσιμοι Σύνδεσμοι</h4>
                            </div>
                            <div class="info-sec">
                                <ul class="quick-info">
                                    <li><a href="index.html"><i class="fa fa-circle"></i>Αρχική</a></li>
                                    <li><a href="index.html#service"><i class="fa fa-circle"></i>Υπηρεσίες</a></li>
                                    <li><a href="index.html#category"><i class="fa fa-circle"></i>Κατηγορίες</a></li>
                                    <li><a href="LoginServlet"><i class="fa fa-circle"></i>Σύνδεση</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 marb20">
                            <div class="ftr-tle">
                                <h4 class="white no-padding">Ακολουθήστε μας</h4>
                            </div>
                            <div class="info-sec">
                                <ul class="social-icon">

                                    <li class="bgred"><a href="https://plus.google.com/u/0/109842541257334198001" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                    <li class="bgdark-blue"><a href="https://www.linkedin.com/in/konstantina-michail/" target="_blank"><i class="fa fa-linkedin"></i></a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
       
        <script src="contactform/contactform.js"></script>

    </body>
</html>

