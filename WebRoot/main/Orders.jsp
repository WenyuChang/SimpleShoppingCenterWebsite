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
				<td height="32">
					&nbsp;
				</td>
				<td>
					&nbsp;
				</td>
				<td>
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
					<font size='3'><strong>用户<%=user.getUsername()%>的未购买订单：</strong>
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
					编号
				</td>
				<td width="61">
					商品ID
				</td>
				<td width="167">
					订单日期
				</td>
				<td width="65"></td>
				<td width="75"></td>
			</tr>
			<%
				List<orders> oo = (List<orders>) session.getAttribute("result");
				if (oo != null) {
					for (int ii = 0; ii < oo.size(); ii++) {
						if (oo.get(ii).getStatus().equals("save")) {
							out.print("<tr>");
							//System.out.println(oo.get(ii).getId());
							out.print("<td>" + oo.get(ii).getId() + "</td>");
							out.print("<td>" + oo.get(ii).getGoodsId() + "</td>");
							out.print("<td>" + oo.get(ii).getDate() + "</td>");
							out
									.print("<td><div align='right'><a href='buy.action?id="
											+ oo.get(ii).getId()
											+ "'><img src='images/buy.gif' width='57' height='27'></a></div></td>");
							out
									.print("<td><div align='right'><a href='deleteorder.action?id="
											+ oo.get(ii).getId()
											+ "'><img src='images/delete.jpg' width='49' height='41'></a></div></td>");
							out.print("</tr>");
						}
					}
				}
			%>
		</table>
	</body>
</html>
