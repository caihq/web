<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!--Head-->
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<title>登录界面</title>
<meta name="description" content="login page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--Basic Styles-->
<link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link id="bootstrap-rtl-link" href="" rel="stylesheet" />
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
<!--Beyond styles-->
<link id="beyond-link" href="assets/css/beyond.min.css" rel="stylesheet" />
<link href="assets/css/demo.min.css" rel="stylesheet" />
<link href="assets/css/animate.min.css" rel="stylesheet" />
<link id="skin-link" href="" rel="stylesheet" type="text/css" />

<!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
<script src="assets/js/skins.min.js"></script>
<script>
	function valicate(){
		if(document.form1.username.value==""){
			alert("用户名不能为空！");
			return false;
		}
		if(document.form1.password.value==""){
			alert("密码不能为空！");
			return false;
		}
	}
</script>
</head>
<!--Head Ends-->
<!--Body-->
<body>
	<div class="login-container animated fadeInDown">
		<div class="loginbox bg-white">
			<div class="loginbox-title">
				<i class="glyphicon glyphicon-user"></i>webconfig后台管理
			</div>
			<hr/>
			<form action="admin/system/login" method="post" class="form-horizontal" role="form" name="form1" onsubmit="return valicate()">
				<div class="form-group">
					<label class="col-md-4 control-label no-padding-right">用户名：</label>
					<div class="col-sm-6">
						<input type="text" name="username" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3"
						class="col-md-4 control-label no-padding-right">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
					<div class="col-md-6">
						<input type="password" name="password" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<div class="checkbox">
							<label><input type="checkbox" name="remember" value="1"> <span
								class="text">记住密码？</span> </label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<div class="loginbox-submit">
                			<input type="submit" class="btn btn-primary btn-block" value="登录">
            			</div>
						<!--  <button type="submit" class="btn btn-default">登录</button> -->
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--Basic Scripts-->
	<script src="assets/js/jquery-2.0.3.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/toastr/toastr.js"></script>
	<!--Beyond Scripts-->
	<script src="assets/js/beyond.js"></script>
	<c:if test="${flag eq 1}">
		<script>
			alert("用户名或密码错误！");
		</script>
	</c:if>
</body>
<!--Body Ends-->
</html>
