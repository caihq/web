<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- SEO -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>404</title>

<link href="${path }/css/error.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- 代码 开始 -->
	<div id="container">
		<img class="png" src="${path }/images/404.png" /> 
		<img class="png msg" src="${path }/images/404_msg.png" />
		<p>
			<a href="${path }" target="_blank">
				<img class="png" src="${path }/images/404_to_index.png" />
			</a>
		</p>
	</div>
	<div id="cloud" class="png"></div>
	<!-- 代码 结束 -->
</body>
</html>