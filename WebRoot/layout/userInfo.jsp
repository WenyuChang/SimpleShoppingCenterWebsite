<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@page import="Dao.Impl.userDaoImpl"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Dao.Impl.userDaoImpl"%>
<%@ page import="Domain.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	</head>

	<body>
		<%
			User user = (User) session.getAttribute("user");
		%>
		<table width="204" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td background="images/partner_t.gif" height="34">
					<img src="images/spacer.gif" width="27" height="8">
					<strong>User Infomation</strong>
				</td>
			</tr>
			<tr>
				<td background="images/gr1.gif">
					<table width="204" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="10">
								&nbsp;
							</td>
							<td width="194">
								<table width="193" border="0">
									<tr>
										<td width="75" height="31">
											用户ID：
										</td>
										<td width="108"><%=user.getId()%></td>
									</tr>
									<tr>
										<td height="34">
											用户名：
										</td>
										<td><%=user.getUsername()%></td>
									</tr>
									<tr>
										<td height="38">
											上次登录：
										</td>
										<td><%=user.getLatestLogin()%></td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td height="17">
											&nbsp;
										</td>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td height="17">
											&nbsp;
										</td>
										<td>
											&nbsp;
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
					<img src="images/part_bottom.gif" width="204" height="7">
				</td>
			</tr>
		</table>
	</body>
</html>
