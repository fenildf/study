<%@page contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<%@include file="/common/include-taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>${title}</title>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">  
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>  
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<%@include file="/common/include_jquery.jsp"%>
<%@include file="/common/include_bootstrap.jsp"%>

<link href="common/css/dashboard.css" rel="stylesheet">
<link href="common/css/main.css" rel="stylesheet">
<script type="text/javascript" src="plugins/dict_ajax.js"></script>

</head>
<body>

<%@include file="/common/head.jsp"%>

<div class="container-fluid">
	<div class="row">
		