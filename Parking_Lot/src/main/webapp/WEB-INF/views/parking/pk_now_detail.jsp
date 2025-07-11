<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../include/header.jsp" />	
	
	<c:set var="psd" value="${Psdetail }" />
	
	<c:if test="${empty psd }">
		<h1>psd ����</h1>
	</c:if>
	
	<div class="container">
		<table class="table table-hover">
			<thead>	
				<tr>
					<th colspan="2">
						�� ����
					</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>	
					<th>������ġ</th>
					<td>${psd.floor }�� ${psd.sno }</td>
				</tr>
				
				<tr>	
					<th>���� ��ȣ��</th>
					<td>${psd.car_num }</td>
				</tr>
				
				<tr>	
					<th>���� �ð�</th>
					<td>${psd.in_time }</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>