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
						���ƣ�
					</div>
				</td>
				<td width="241">
					&nbsp;<%=goods.getName()%></td>
			</tr>
			<tr>
				<td height="33">
					<div align="right">
						��棺
					</div>
				</td>
				<td>
					&nbsp;<%=goods.getRemain()%></td>
			</tr>
			<tr>
				<td height="29">
					<div align="right">
						�۸�
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
						���ܣ�
					</div>
				</td>
				<td colspan="2">
					<div>
						<span title="ŵ����6210S">ŵ����****</span>&nbsp;(NOKIA ****)
						<br clear="all">
						<div>
							���:�ֻ� Ʒ��:NOKIA(ŵ����)
						</div>
						���ܸò�Ʒ���ֻ���������92
					</div>
					<div>
						<div>
							<div>
								�ο��۸�
								<span id="price_last1">��</span><span id="price_last">1688</span>&nbsp;[����]&nbsp;&nbsp;
								<br>
								�̼ұ��ۣ���1300&nbsp;��&nbsp;��2970
							</div>
							<br clear="all">
							<div>
								�������ڣ�2008��07��
								<br>
								����ϵͳ��Symbian 9.3 S60 3.2��S60
								<br>
								�ֻ����ͣ������ֻ�
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
								<input type="submit" name="submit" id="submit" value="����">
							</div>
						</label>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>
