<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:include value="../inc/incHead.jsp">
	<s:param name="title">Home</s:param>
</s:include>

<body>

    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
		<s:include value="../inc/incHeader.jsp"/>
    </nav>

    <div class="intro-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>Route Selection</h1>
                        <br><br>
                        <s:form action="BusPath.action" class="form-horizontal" role="form">
						    <div class="form-group">
						      <label class="control-label col-sm-offset-2 col-sm-2">Source :</label>
						      <div class="col-sm-4">
						        <input type="text" class="form-control" name="source" id="source" placeholder="Enter source" autocomplete="off" spellcheck="false">
						        <input type="hidden" name="sourceId" id="sourceId">
						      </div>
						    </div>
						    <div class="form-group">
						      <label class="control-label col-sm-offset-2 col-sm-2">Destination :</label>
						      <div class="col-sm-4">
						        <input type="text" class="form-control" name="destination" id="destination" placeholder="Enter destination" autocomplete="off" spellcheck="false">
						        <input type="hidden" name="destinationId" id="destinationId">
						      </div>
						    </div>
	                        <hr class="intro-divider">
						    <div class="form-group">
						      <div class="col-sm-offset-4 col-sm-4">
							    <input type="hidden" name="choiceNo" id="choiceNo" value="1">
						        <button type="submit" class="btn btn-success">Submit</button>&nbsp;&nbsp;
						        <button type="reset" class="btn btn-default">Reset</button>
						      </div>
						    </div>
					    </s:form>
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

	<s:include value="../inc/incFooter.jsp"/>

	<s:include value="../inc/incJS.jsp"/>
    <script type="text/javascript">
        $(function() {
        	var sourceData = [
					<s:iterator value="pointNames">
						{id: <s:property value="pId"/>, name: '<s:property value="nameEn"/>'},
					</s:iterator>
                ];
			$('#source').typeahead({
                source: sourceData,
                onSelect: function (item) {
                	document.getElementById('sourceId').value = item.value;
                }
            });
            $('#destination').typeahead({
                source: sourceData,
                onSelect: function (item) {
                	document.getElementById('destinationId').value = item.value;
	            }
            });
        });
    </script>
</body>
</html>
