<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ page import="Domain.Goods"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	</head>

	<body>
		<%
			Goods goods = (Goods) session.getAttribute("goods");
			session.setAttribute("goods", goods);
		%>
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<table width="453" height="360" border="0">
			<tr>
				<td width="47" rowspan="4">
					&nbsp;

				</td>
				<td width="100" rowspan="5">
					<img src="images/Goods/1241434496IqStaynz.jpg" width="142"
						height="157">
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
				<td height="153">
					<div align="right">
						性能：
					</div>
				</td>
				<td colspan="2">
					<div>
						<span title="诺基亚6210S">诺基亚****</span>&nbsp;(NOKIA ****)
						<br clear="all">
						<div>
							类别:手机 品牌:NOKIA(诺基亚)
						</div>
						本周该产品在手机中排名第92
					</div>
					<div>
						<div>
							<div>
								参考价格：
								<span id="price_last1">￥</span><span id="price_last">1688</span>&nbsp;[北京]&nbsp;&nbsp;
								<br>
								商家报价：￥1300&nbsp;至&nbsp;￥2970
							</div>
							<br clear="all">
							<div>
								上市日期：2008年07月
								<br>
								操作系统：Symbian 9.3 S60 3.2（S60
								<br>
								手机类型：商务手机
							</div>
						</div>
					</div>
					<p>
						&nbsp;

					</p>
				</td>
			</tr>
			<tr>
				<td height="24" colspan="4">
					<form name="form1" method="post" action="createorder.action">
						<label>
							<div align="right">
								<input type="submit" name="submit" id="submit" value="购买">
							</div>
						</label>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>
