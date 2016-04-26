<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
	String resRoot = basePath+"/RES";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>ActiveMQ Demo程序</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link href="<%=resRoot%>/css/index.css" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<h1>Hello ActiveMQ</h1>
	<div>basePath:<%=basePath%></div>
	<div>path:<%=path%></div>
	<div>resRoot:<%=resRoot%></div>
	<div id="producer">
		<h2>Producer</h2>
		<textarea id="message"></textarea>
		<br>
		<button onclick="send('queueSender')">发送的Queue</button>
		<button onclick="send('topicSender')">发送的Topic</button>
		<br>
		<span id="status"></span>
	</div>
	<div>
		<button id="test">why</button>
	</div>
	<script src="<%=resRoot%>/js/jquery-1.11.0.min.js" type="text/javascript" ></script>
	<script src="<%=resRoot%>/js/page.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function(){
			alert('222');
		}); 
	</script>
</body>
</html>
