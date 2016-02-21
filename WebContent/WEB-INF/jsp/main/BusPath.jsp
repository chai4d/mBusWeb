<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:include value="../inc/incHead.jsp">
	<s:param name="title">Bus Path</s:param>
</s:include>

<body>

    <div id="wrapper">
        <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation" style="margin-bottom: 0">
			<s:include value="../inc/incHeader.jsp"/>

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
						<s:if test="%{busChoices.size>0}">
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
						</s:if>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<s:include value="../inc/incJS.jsp"/>
</body>
</html>
