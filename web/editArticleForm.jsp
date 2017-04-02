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
                                <a class="navbar-brand" href="#banner"><img src="img/DailyNewsTitle.jpg" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
                            </div>
                            <div class="collapse navbar-collapse navbar-right" id="myNavbar">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="#banner">Αρχικη</a></li>
                                    <li class=""><a href="#service">Υπηρεσιες</a></li>
                                    <li class=""><a href="#category">Κατηγοριες</a></li>
                                    <li class=""><a href="#contact">Επικοινωνια</a></li>
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

        <!--service-->
        <section id="service" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="ser-title">Υπηρεσιες</h2>
                        <hr class="botm-line">
                    </div>

                    <div class="col-md-4 col-sm-4">
                        <div class="service-info">
                            <div class="icon">
                                <i class="fa fa-newspaper-o"></i>
                            </div>
                            <div class="icon-info">
                                <h4>Έγκυρη Ενημέρωση</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="service-info">
                            <div class="icon">
                                <i class="fa fa-info"></i>
                            </div>
                            <div class="icon-info">
                                <h4>24 Ώρες Ειδήσεις</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="service-info">
                            <div class="icon">
                                <i class="fa fa-search"></i>
                            </div>
                            <div class="icon-info">
                                <h4>Έρευνα & Ρεπορτάζ</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!--/ service-->


        <!--category-->
        <section id="category" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="ser-title">Κατηγοριες Αρθρων</h2>
                        <hr class="botm-line">
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="thumbnail"> 
                            <img src="img/category Greece.jpg" alt="Ελλάδα" class="team-img" style="height: 180px;">
                            <div class="caption">
                                <h3>Ελλάδα</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="thumbnail"> 
                            <img src="img/images.jpg" alt="Κόσμος" class="team-img" style="height: 180px;">
                            <div class="caption">
                                <h3>Κόσμος</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="thumbnail"> 
                            <img src="img/category politiki.jpg" alt="Πολιτική" class="team-img" style="height: 180px;">
                            <div class="caption">
                                <h3>Πολιτική</h3>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-6">
                        <div class="thumbnail"> 
                            <img src="img/images1.jpg" alt="Οικονομία" class="team-img" style="height: 180px;">
                            <div class="caption">
                                <h3>Οικονομία</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6">
                        <div class="thumbnail"> 
                            <img src="img/category athlitika.jpg" alt="Αθλητικά" class="team-img" style="height: 180px;">
                            <div class="caption">
                                <h3>Αθλητικά</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--/ category-->

        <!--contact-->
        <section id="contact" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="ser-title">Επικοινωνια</h2>
                        <hr class="botm-line">
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <h3>Επικοινωνήστε με το <br>Daily News</h3>
                        <div class="space"></div>
                        <p><i class="fa fa-map-marker fa-fw pull-left fa-2x"></i>Λεωφόρος Αλεξάνδρας 111<br>
                            Αθήνα Τ.Κ.:10683</p>
                        <div class="space"></div>
                        <p><i class="fa fa-envelope-o fa-fw pull-left fa-2x"></i>info@dailynews.gr</p>
                        <div class="space"></div>
                        <p><i class="fa fa-phone fa-fw pull-left fa-2x"></i>(+30)210 2345678</p>
                    </div>
                    <div class="col-md-8 col-sm-8 marb20">
                        <div class="contact-info">
                            <h3 class="cnt-ttl">Χαρτης</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--/ contact-->
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
                                    <li><a href="#banner"><i class="fa fa-circle"></i>Αρχική</a></li>
                                    <li><a href="#service"><i class="fa fa-circle"></i>Υπηρεσίες</a></li>
                                    <li><a href="#category"><i class="fa fa-circle"></i>Κατηγορίες</a></li>
                                    <li><a href="LogoutServlet"><i class="fa fa-circle"></i>Αποσύνδεση</a></li>
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
        <script src="js/custom.js"></script>
        <script src="contactform/contactform.js"></script>

    </body>
</html>





