<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ page import="Domain.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	</head>

	<body>
		<%
			User user = (User) session.getAttribute("user");
			session.setAttribute("user", user);
		%>
		<br />
		<br />
		<br />
		<br />
		<form name="edit" action="editSave.action">
			<table width="468" border="1" background="images/gr1.gif">
				<tr>
					<td width="107" bgcolor="#FFFFFF">
						<div align="center"></div>
					</td>
					<td width="103" height="28" bgcolor="#FFFFFF">
						<div align="center">
							<strong>原信息</strong>
						</div>
					</td>
					<td width="144" bgcolor="#FFFFFF">
						<div align="center">
							<strong>更改信息</strong>
						</div>
					</td>
					<td width="86" bgcolor="#FFFFFF">
						<div align="center">
							<strong>照片</strong>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="center">
							<strong>用户名：</strong>
						</div>
					</td>
					<td height="34" bgcolor="#FFFFFF" align="center">
						&nbsp;<%=user.getUsername()%></td>
					<td bgcolor="#FFFFFF">
						<div align="center">
							<input type="text" name="newUsername" />
						</div>
					</td>
					<td rowspan="3" nowrap bgcolor="#FFFFFF">
						<div align="center">
							<p>
								*************
							</p>
							<p>
								*************
							</p>
							<p>
								*************
							</p>
							<p>
								*************
							</p>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="center">
							<strong>密码：</strong>
						</div>
					</td>
					<td height="43" bgcolor="#FFFFFF">
						<div align="center"><%=user.getPassword()%></div>
					</td>
					<td bgcolor="#FFFFFF">
						<div align="center">
							<input type="text" name="newPasswd" />
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="center"></div>
					</td>
					<td height="42" bgcolor="#FFFFFF">
						<div align="center"></div>
					</td>
					<td bgcolor="#FFFFFF">
						<div align="center"></div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="center"></div>
					</td>
					<td height="42" bgcolor="#FFFFFF">
						<div align="center"></div>
					</td>
					<td bgcolor="#FFFFFF">
						<div align="center"></div>
					</td>
					<td rowspan="4" bgcolor="#821818">
						<div align="right">
							<p>
								&nbsp;
							</p>
							<p>
								&nbsp;
							</p>
							<p>
								&nbsp;
								<input type="submit" id="submit" />
							</p>
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="center"></div>
					</td>
					<td height="40" bgcolor="#FFFFFF">
						<div align="center"></div>
					</td>
					<td bgcolor="#FFFFFF">
						<div align="center"></div>
					</td>
				</tr>
			</table>
		</form>
		<table border="0" align="left" cellpadding="0" cellspacing="0">

		</table>
	</body>
</html>
