<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
<<<<<<< HEAD
<style type="text/css">
.con {
=======
<style type="text/css">		
#main-holder {
	max-width: 1000px;
	width: 100%;
	background: #fff;
	border-radius: 15px;
	box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
	padding: 40px 30px;
	text-align: center;
	margin: 0px auto;
}

.container {
>>>>>>> branch 'main' of https://github.com/jhpark0623/Parking_Lot.git
	display: flex;
	flex-wrap: nowrap;
	justify-content: center;
<<<<<<< HEAD
	width: 700px;
=======
	gap: 10px;
	margin-top: 20px;
>>>>>>> branch 'main' of https://github.com/jhpark0623/Parking_Lot.git
}

.container-pspace {
	flex: none;
	order: 0;
}

.container-floor {
	display: flex;
	flex-direction: column;
	order: 1;
	justify-content: center;
<<<<<<< HEAD
	align-items: center;
	flex: 1;
=======
	flex: 1;	
	
>>>>>>> branch 'main' of https://github.com/jhpark0623/Parking_Lot.git
}

.container-pspace>button {
	width: 7.5%;
	max-width: 53px;
	min-width: 25px;
	height: 75px;
	margin: 5px;
}

.container-floor>button {
	margin: 10px;
	height: 50px;
	width: 100px;
}

.description {
	margin-top: 50px;
}
</style>
</head>
<body>

<<<<<<< HEAD
	<jsp:include page="../../include/header.jsp" />

	<div class="con">
		<c:set var="pspace" value="${Pspace }" />

		<c:if test="${empty pspace }">
			<div>
				<span>������ ������ �ҷ����� ���߽��ϴ�..</span>
			</div>
		</c:if>

		<!-- ������ ��Ȳ ��� -->
		<div class="container-pspace">
			<c:if test="${!empty pspace}">
				<c:forEach items="${pspace}" var="space" varStatus="status">
					<c:if test="${space.state == 'N'}">
						<button class="btn btn-info" id="full"
							onclick="if(confirm('${space.floor }�� ${space.sno } �� �����Ͻðڽ��ϱ�?')) {
		      					location.href='parking_in_ok.go?sid=${space.sid }'
		      					}else { return; }">
							${space.sno}</button>
					</c:if>

					<c:if test="${space.state == 'Y'}">
						<button class="btn btn-danger" id="empty"
							onclick="alert('�ش� �ڸ����� ������ �ֽ��ϴ�. �� �ڸ��� ã���ּ���.')">
							${space.sno}</button>
					</c:if>
					<c:if test="${status.count % 10 == 0}">
						<br />
					</c:if>
				</c:forEach>
			</c:if>
		</div>
		<br>

		<div class="d-grid gap-2 col-3">
			<div class="container-floor">
				<c:forEach var="i" begin="1" end="3">
					<c:choose>
						<c:when test="${param.floor == i}">
							<button class="btn btn-primary"
								onclick="location.href='<%=request.getContextPath() %>/parking_in.go?floor=${i}'">
								${i}��</button>
						</c:when>
						<c:otherwise>
							<button class="btn btn-secondary"
								onclick="location.href='<%=request.getContextPath() %>/parking_in.go?floor=${i}'">
								${i}��</button>
						</c:otherwise>
					</c:choose>
				</c:forEach>
=======
	<jsp:include page="../../include/header.jsp" />	
	<div id="main-holder">
		<div class="container">
			<c:set var="pspace" value="${Pspace }" />
			
			<div>
				<c:if test="${empty pspace }">
					<span>������ ������ �ҷ����� ���߽��ϴ�..</span>
				</c:if>
			</div>
			
			<!-- ������ ��Ȳ ��� -->
			<div class="container-pspace">
			  <c:if test="${!empty pspace}">
			    <c:forEach items="${pspace}" var="space" varStatus="status">
			    	<c:if test="${space.state == 'N'}">
			      		<button class="btn btn-info" id="full" 
			      		onclick="if(confirm('${space.floor }�� ${space.sno } �� �����Ͻðڽ��ϱ�?')) {
			      					location.href='parking_in_ok.go?sid=${space.sid }'
			      					}else { return; }">
			      			${space.sno}
			      		</button>
			      	</c:if>
			      	
			      	<c:if test="${space.state == 'Y'}">
			      		<button class="btn btn-danger" id="empty" 
			      		onclick="alert('�ش� �ڸ����� ������ �ֽ��ϴ�. �� �ڸ��� ã���ּ���.')">
			      			${space.sno}
			      		</button>
			      	</c:if>
			      <c:if test="${status.count % 10 == 0}">
			        <br/>
			      </c:if>
			    </c:forEach>
			  </c:if>
			</div>
			<br>
			
			<div class="d-grid gap-2 col-3 mx-auto">
				<div class="container-floor">
				    <c:forEach var="i" begin="1" end="3">
				        <c:choose>
				            <c:when test="${param.floor == i}">
				                <button class="btn btn-primary" onclick="location.href='<%=request.getContextPath() %>/parking_in.go?floor=${i}'">
				                    ${i}��
				                </button>
				            </c:when>
				            <c:otherwise>
				                <button class="btn btn-secondary" onclick="location.href='<%=request.getContextPath() %>/parking_in.go?floor=${i}'">
				                    ${i}��
				                </button>
				            </c:otherwise>
				        </c:choose>
				    </c:forEach>
			    </div>
>>>>>>> branch 'main' of https://github.com/jhpark0623/Parking_Lot.git
			</div>
		</div>
<<<<<<< HEAD
	</div>

	<div class="description">
		<p>�� �� �ڸ��� �������ֽø� �ش� �ڸ��� ������ ������ �����մϴ�.</p>
=======
		
		<div class="description">
			<span>�� �� �ڸ��� �������ֽø� �ش� �ڸ��� ������ ������ �����մϴ�.</span>
		</div>
>>>>>>> branch 'main' of https://github.com/jhpark0623/Parking_Lot.git
	</div>
</body>
</html>