<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><s:text name="app.name"/> Bus Path</title>
    <link rel="shortcut icon" href="../img/mBus.ico" />

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/metisMenu.min.css" rel="stylesheet">
    <link href="../css/landing-page.css" rel="stylesheet">
    <link href="../css/sb-admin-2.css" rel="stylesheet">

    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>

<body>

    <div id="wrapper">
        <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation" style="margin-bottom: 0">
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

            <div class="navbar-default sidebar" role="navigation" style="margin-top: 0">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
						<s:iterator value="busChoices" status="rowStatus" var="choice">
							<s:set name="rowNo" value="%{#rowStatus.index+1}"/>
							<s:set name="param" value="%{'?sourceId='+sourceId+'&destinationId='+destinationId+'&choiceNo='+#rowNo}"/>

	                        <li<s:if test="%{#rowNo==choiceNo}"> class="active"</s:if>>
	                            <a href="#">
	                            	<s:property value="#rowNo"/>.&nbsp;&nbsp;
	                            	<button type="button" class="btn btn-primary btn-sm">Interchange <span class="badge"><small><s:property value="#choice.noOfInterchange"/></small></span></button>
	                            	<button type="button" class="btn btn-success btn-sm">Price <span class="badge"><small><s:property value="#choice.totalPrice"/></small></span></button>
	                            	<span class="small text-muted">&nbsp;&nbsp;D&nbsp;<s:property value="#choice.totalDistance"/></span>
	                            	<span class="fa arrow"></span>
	                            </a>
	                            <ul class="nav nav-second-level">
									<s:iterator value="#choice.buses" var="bus">
		                                <li>
		                                    <a href="BusPath.action<s:property value="#param"/>"><i class="fa fa-bus fa-fw"></i> <s:property value="#bus.busNo"/> <span class="badge"><small><s:property value="#bus.busPrice"/></small></span></a>
		                                </li>
									</s:iterator>
	                            </ul>
	                        </li>
						</s:iterator>
                    </ul>
                </div>
            </div>
        </nav>

        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
	                    <h1 class="page-header"><s:if test="%{busChoices.size==0}">Result not Found</s:if><s:else>Suggestion Result</s:else></h1>
						<s:iterator value="%{busChoices[choiceNo-1].busPaths}" status="rowStatus" var="path">
							<div class="col-sm-4">
								<i class="fa fa-bus fa-fw"></i> <s:property value="#path.busNoEn"/> <span class="badge"><small><s:property value="#path.busPrice"/></small></span>
							</div>
							<div class="col-sm-4">
								<i class="fa fa-map-marker fa-fw"></i><s:property value="#path.p1Id"/>&nbsp;&nbsp;
								<i class="fa fa-long-arrow-right fa-fw"></i>&nbsp;
								<i class="fa fa-map-marker fa-fw"></i><s:property value="#path.p2Id"/>
							</div>
							<div class="col-sm-4">
								<i class="fa fa-expand fa-fw"></i>&nbsp;&nbsp;
								Distance = <s:property value="#path.distance"/>
							</div>
						</s:iterator>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../js/jquery-2.2.0.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/metisMenu.min.js"></script>
    <script src="../js/sb-admin-2.js"></script>
</body>
</html>
