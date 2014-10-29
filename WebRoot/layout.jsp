<%@ page contentType="text/html; charset=GB2312"%>
<%@ taglib uri="WEB-INF/tiles.tld " prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Domain.User"%>
<%@ page import="Domain.Goods"%>
<html>
	<head>
		<title>Business Company</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<style type="text/css">
<!--
body,td,th {
	font-family: tahoma;
	font-size: 11px;
	color: #821818;
}

body {
	background-color: #821818;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.style1 {
	color: #ffffff
}

a {
	font-size: 11px;
	color: #ffffff;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

a:active {
	text-decoration: none;
}

.style2 {
	color: #005083;
}

.style3 {
	color: #B7B7B7
}
-->
</style>
	</head>
	<body>
		<%
			if (session.getAttribute("user") == null)
				response.setHeader("refresh", "0;conn.action");
		%>
		<table width="765" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td>
					<table width="765" border="0" cellspacing="0" cellpadding="0"
						bgcolor="#FFFFFF">
						<tr>
							<td valign="top">
								<table width="269" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="112" bgcolor="#821818">
											&nbsp;

										</td>
									</tr>
									<tr>
										<td>
											<img src="images/spacer.gif" width="1" height="27">
										</td>
									</tr>
									<tr>
										<td>
											<tiles:insertAttribute name="menu" />
										</td>
									</tr>
									<tr>
										<td>
											<tiles:insertAttribute name="userInfo" />
										</td>
									</tr>
								</table>
							</td>
							<td valign="top">
								<table width="496" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											<tiles:insertAttribute name="header" />
										</td>
									</tr>
									<tr>
										<td>
											<a href="http://www.baidu.com"><img
													src="images/header.jpg" width="496" height="175" border="0">
											</a>
										</td>
									</tr>
									<tr>
										<td>
											<tiles:insertAttribute name="mainArea" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/footer.gif" width="765" height="22" border="0">
				</td>
			</tr>
			<tr>
				<td>
					<tiles:insertAttribute name="bottom" />
				</td>
			</tr>
		</table>
		<img src="images/spacer.gif" width="1" height="1" border="0">
	</body>
</html>
