<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ page import="java.util.List"%>
<%@ page import="Domain.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	</head>

	<body>
		<%
			User user = (User) session.getAttribute("user");
		%>
		<table id="orders" width="440" border="0">
			<tr>
				<td height="32" colspan="3">
					&nbsp;
				</td>
				<td>
					&nbsp;
				</td>
				<td>
					&nbsp;
				</td>
				<td width="12">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td height="32" colspan="3">
					<font size='3'><strong>�û�<%=user.getUsername()%>�����ж�����</strong>
					</font>
				</td>
				<td>
					&nbsp;
				</td>
				<td>
					&nbsp;
				</td>
				<td width="12">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td width="34">
					���
				</td>
				<td width="61">
					��ƷID
				</td>
				<td width="167">
					��������
				</td>
				<td width="65">
					����״̬
				</td>
				<td width="75"></td>
			</tr>
			<%
				List<orders> oo = (List<orders>) session.getAttribute("result");
				if (oo != null) {
					for (int ii = 0; ii < oo.size(); ii++) {
						out.print("<tr>");
						out.print("<td>" + oo.get(ii).getId() + "</td>");
						out.print("<td>" + oo.get(ii).getGoodsId() + "</td>");
						out.print("<td>" + oo.get(ii).getDate() + "</td>");
						out.print("<td>" + oo.get(ii).getStatus() + "</td>");
						out.print("<td>&nbsp;</td>");
						out.print("</tr>");
					}
				}
			%>
		</table>
	</body>
</html>
