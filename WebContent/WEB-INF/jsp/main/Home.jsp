<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><s:text name="app.name"/> Home</title>
    <link rel="shortcut icon" href="../img/mBus.ico" />

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/landing-page.css" rel="stylesheet">

    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>

<body>

    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand topnav" href="Home.action">Start m-Bus</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="Home.action#about">About</a>
                    </li>
                    <li>
                        <a href="Home.action#services">Services</a>
                    </li>
                    <li>
                        <a href="Home.action#contact">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="intro-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>Route Selection</h1>
                        <br><br>
                        <form class="form-horizontal" role="form">
						    <div class="form-group">
						      <label class="control-label col-sm-offset-2 col-sm-2">Source :</label>
						      <div class="col-sm-4">
						        <input type="text" class="form-control" id="source" placeholder="Enter source">
						      </div>
						    </div>
						    <div class="form-group">
						      <label class="control-label col-sm-offset-2 col-sm-2">Destination :</label>
						      <div class="col-sm-4">
						        <input type="text" class="form-control" id="destination" placeholder="Enter destination">
						      </div>
						    </div>
	                        <hr class="intro-divider">
						    <div class="form-group">
						      <div class="col-sm-offset-4 col-sm-4">
						        <button type="submit" class="btn btn-success">Submit</button>&nbsp;&nbsp;
						        <button type="reset" class="btn btn-default">Reset</button>
						      </div>
						    </div>
					    </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <a id="about"></a>
    <div class="content-section-a">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Free Mobile App on iOS, Android &amp; Windows Phone</h2>
                    <p class="lead">
                    	Project Objective:<br>
                    	&sdot; No need benefit income for this Mobile App<br>
                    	&sdot; This App should help mass passenger (Thai or Foreigner) who would like to GO but don't know which way they can choose?<br>
                    	&sdot; The App will show list of Bus Path with Total Bus Price, Number of Interchange the Bus, Which Bus No. do you need to wait, Where are you in the map, etc.<br>
                    	&sdot; NO any Advertising, No any Donation, this is pure Free Mobile App
                    </p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6 vcenter">
                	<img class="img-responsive" src="../img/ex_map_admin.jpg" alt="">
                </div>
            </div>
        </div>
    </div>

	<a id="services"></a>
    <div class="content-section-b">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">What's m-Bus mean?</h2>
                    <p class="lead">
                    	&sdot; <a target="_blank" href="http://www.bmta.co.th/?q=en/home">Normal Bus</a>, <a target="_blank" href="http://www.bts.co.th/customer/en/main.aspx">BTS</a>, <a target="_blank" href="http://www.bangkokmetro.co.th/index.aspx?Lang=En">MRT</a>, <a target="_blank" href="http://www.thanakom.co.th/thanakom/brt.html">BRT</a> and <a target="_blank" href="http://www.srtet.co.th/index.php/en/">Airport Link</a><br>
                    	&sdot; Transport Area is Bangkok Metropolitan Region<br>
                    	&sdot; The suggestion is depend on your location, and recommending best ways for you
                    </p>
                </div>
                <div class="col-lg-5 col-sm-pull-6 col-sm-6 vcenter">
                	<img class="img-rounded" src="../img/logo_bmta.jpg" alt="">
                	<img class="img-rounded" src="../img/logo_bts.jpg" alt="">
                	<img class="img-rounded" src="../img/logo_mrt.jpg" alt="">
                	<img class="img-rounded" src="../img/logo_brt.jpg" alt="">
                	<img class="img-rounded" src="../img/logo_airport_link.jpg" alt="">
                </div>
            </div>
        </div>
    </div>

    <div class="content-section-a">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Available to download (soon) on:</h2>
                    <p class="lead">
                    	&sdot; <a target="_blank" href="http://www.apple.com/itunes/charts/free-apps/">Apple App Store</a><br>
                    	&sdot; <a target="_blank" href="https://play.google.com/store/apps/top">Android Apps on Google Play</a><br>
                    	&sdot; <a target="_blank" href="https://www.microsoft.com/en-us/store/top-free/apps/mobile">Windows Phone Apps</a>
                    </p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6 vcenter">
                	<img class="img-rounded" src="../img/dl_app_store.jpg" alt="">&nbsp;
                	<img class="img-rounded" src="../img/dl_google_play.jpg" alt="">&nbsp;
                	<img class="img-rounded" src="../img/dl_windows_phone.jpg" alt="">
                </div>
            </div>
        </div>
    </div>

	<a id="contact"></a>
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h2>Contact Us:</h2>
                </div>
                <div class="col-lg-6">
                    <ul class="list-inline banner-social-buttons">
                        <li>
                            <a target="_blank" href="mailto:chai_4d@hotmail.com" class="btn btn-default btn-lg"><i class="fa fa-envelope fa-fw"></i> <span class="network-name">Email Me</span></a>
                        </li>
                        <li>
                            <a target="_blank" href="https://www.facebook.com/wiroj.pluemwongroj" class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> <span class="network-name">Facebook</span></a>
                        </li>
                        <li>
                            <a target="_blank" href="http://chai4d.blogspot.com/" class="btn btn-default btn-lg"><i class="fa fa-rss fa-fw"></i> <span class="network-name">Blogger</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="Home.action">Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="Home.action#about">About</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="Home.action#services">Services</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="Home.action#contact">Contact</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; "m-Bus" 2016. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="../js/jquery-2.1.4.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
