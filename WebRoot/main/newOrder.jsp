<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ page import="Domain.Goods"%>
<%@ page import="Domain.User"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	</head>

	<body>
		<%
			Goods goods = (Goods) session.getAttribute("goods");
			User user = (User) session.getAttribute("user");
			Date date = new Date();
			session.setAttribute("date", date);
		%>
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<table width="453" height="313" border="0">
			<tr>
				<td width="47" rowspan="4">
					&nbsp;
				</td>
				<td width="100" rowspan="5">
					<img src="images/Goods/1241434496IqStaynz.jpg" width="120"
						height="120">
				</td>
				<td height="33">
					&nbsp;
				</td>
				<td>
					&nbsp;
				</td>
			</tr>
			<tr>
				<td width="47" height="23">
					<div align="right">
						名称：
					</div>
				</td>
				<td width="241">
					&nbsp;<%=goods.getName()%></td>
			</tr>
			<tr>
				<td height="33">
					<div align="right">
						库存：
					</div>
				</td>
				<td>
					&nbsp;<%=goods.getRemain()%></td>
			</tr>
			<tr>
				<td height="29">
					<div align="right">
						价格：
					</div>
				</td>
				<td>
					&nbsp;<%=goods.getPrice()%></td>
			</tr>
			<tr>
				<td height="24">
					&nbsp;
				</td>
				<td colspan="2">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
				<td height="25">
					<div align="right">
						用户姓名：
					</div>
				</td>
				<td colspan="2">
					<div align="left"><%=user.getUsername()%></div>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
				<td height="33">
					<div align="right">
						商品名称：
					</div>
				</td>
				<td colspan="2">
					<div align="left"><%=goods.getName()%></div>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
				<td height="30">
					<div align="right">
						订单创建日期：
					</div>
				</td>
				<td colspan="2">
					<div align="left"><%=date.toLocaleString()%></div>
				</td>
			</tr>
			<tr>
				<td height="24" colspan="4">
					<form name="form1" method="post" action="saveorder.action">
						<div align="right">
							<input type="submit" name="submit" id="submit2" value="保存订单">
						</div>
					</form>
					<form name="form2" method="post" action="buy.action">
						<div align="right">
							<input type="submit" name="submit1" id="submit" value="购买">
						</div>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>
