<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../../include/header.jsp" />

	<div align="center">
		<hr width="65%" color="gray">
		<h3>���������ý��� ������ �α��� ������</h3>
		<hr width="65%" color="gray">
		<br> <br>

		<form method="post"
			action="<%=request.getContextPath()%>/admin_login_ok.go">
			<table border="1" width="400">
				<tr>
					<th>������ ���̵�</th>
					<td><input name="mem_id"></td>
				</tr>

				<tr>
					<th>������ ��й�ȣ</th>
					<td><input type="password" name="mem_pwd"></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="�α���">&nbsp;&nbsp; <input type="reset" value="�ٽ��ۼ�">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>