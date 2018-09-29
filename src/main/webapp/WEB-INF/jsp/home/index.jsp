<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!--
BeyondAdmin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 1.0.0
Purchase: http://wrapbootstrap.com
-->

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Head -->
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8" />
    <title>首页</title>
	<!-- 头部 -->
    <jsp:include page="../common/header.jsp" />
</head>
<!-- /Head -->
<!-- Body -->
<body>
    <!-- loading部分 -->
    <jsp:include page="../common/loading.jsp" />
    <!-- navbar部分 -->
    <jsp:include page="../common/navbar.jsp" />
    <!-- Main Container -->
    <div class="main-container container-fluid">
        <!-- Page Container -->
        <div class="page-container">
            <!-- page sidebar部分 -->
            <jsp:include page="../common/sidebar.jsp" />
            <!-- Page Content -->
            <div class="page-content">
                <!-- Page Breadcrumb -->
                <div class="page-breadcrumbs">
                    <ul class="breadcrumb">
                        <li>
                            <i class="fa fa-home"></i>
                            <span>首页</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red;">${msg}</span>
                        </li>
                    </ul>
                </div>
                <!-- /Page Breadcrumb -->
                <!-- 页面头部 -->
                <jsp:include page="../common/tools.jsp" />
                <!-- Page Body -->
                <div class="page-body">
                    <!-- Your Content Goes Here -->
                </div>
                <!-- /Page Body -->
            </div>
            <!-- /Page Content -->
        </div>
        <!-- /Page Container -->
        <!-- Main Container -->

    </div>
    <!-- 尾部 -->
    <jsp:include page="../common/footer.jsp" />
    <!--Page Related Scripts-->
</body>
<!--  /Body -->
</html>
