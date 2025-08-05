<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주차 기록 view 페이지</title>

<!-- Bootstrap 5 CDN 추가 (혹시 없을 경우) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-white"> <!-- 배경 흰색 -->

	<jsp:include page="../../include/header.jsp" />

	<div class="container my-5" style="width: 800px">
		<c:set var="pkList" value="${pkList }" />
		<c:set var="paging" value="${Paging }" />

		<div class="card shadow" style="height: 630px">
			<div class="card-header bg-blue text-end border-bottom">
				<b style="color: black;">전체 입차 기록 수 : ${paging.totalRecord }</b>
			</div>

			<div class="card-body d-flex flex-column bg-white">
				<div class="flex-grow-1">
					<table class="table table-hover text-center align-middle">
						<thead class="table-dark">  
							<tr>
								<th style="width: 39px;">ID</th>
								<th style="width: 137px;">차량 번호</th>
								<th style="width: 185px;">입차 시간</th>
								<th style="width: 185px;">출차 시간</th>
								<th style="width: 96px;">정산 요금</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${empty pkList }">
								<tr>
									<td colspan="5">입차 목록이 없습니다.</td>
								</tr>
							</c:if>
							<c:if test="${!empty pkList }">
								<c:forEach items="${pkList }" var="dto">
									<tr>
										<td>${dto.pid }</td>
										<td>${dto.car_num }</td>
										<td>${dto.in_time }</td>
										<td>${dto.out_time }</td>
										
										<c:if test="${!empty dto.out_time }">
											<td>${dto.amount }원</td>
										</c:if>
										
										<c:if test="${empty dto.out_time }">
											<td></td>
										</c:if>
										
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>

				<div style="height: 50px">
					<!-- 페이징 영역 -->
					<div class="d-flex justify-content-center my-3 flex-wrap gap-2">
						<c:if test="${paging.page > paging.block }">
							<a class="btn btn-primary btn-sm"
								href="<%=request.getContextPath()%>/pk_list.go?page=1">맨 처음</a>
							<a class="btn btn-primary btn-sm"
								href="<%=request.getContextPath()%>/pk_list.go?page=${paging.startBlock - 1 }">◀ 이전</a>
						</c:if>

						<c:forEach begin="${paging.startBlock }" end="${paging.endBlock }" var="i">
							<c:choose>
								<c:when test="${i == paging.page }">
									<a class="btn btn-primary btn-sm">${i }</a>
								</c:when>
								<c:otherwise>
									<a class="btn btn-outline-primary btn-sm"
										href="<%=request.getContextPath()%>/pk_list.go?page=${i }">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						<c:if test="${paging.endBlock < paging.allPage }">
							<a class="btn btn-primary btn-sm"
								href="<%=request.getContextPath()%>/pk_list.go?page=${paging.endBlock + 1}">다음 ▶</a>
							<a class="btn btn-primary btn-sm"
								href="<%=request.getContextPath()%>/pk_list.go?page=${paging.allPage }">맨 마지막</a>
						</c:if>
					</div>
				</div>
				
				<div class="mb-3"></div>

				<!-- 검색 영역 -->
				<div style="height: 50px">
					<form class="row g-2 align-items-center" method="post"
						action="<%=request.getContextPath()%>/pk_search_detail.go">

						<div class="col-md-5 d-flex align-items-center">
							<label for="car_num" class="col-form-label me-2" style="min-width: 110px;">차량 뒤 네자리</label>
							<input id="car_num" name="car_num" class="form-control" placeholder="예: 1234">
						</div>

						<div class="col-md-5 d-flex align-items-center">
							<label for="date" class="col-form-label me-2" style="min-width: 110px;">입차 날짜</label>
							<input id="date" type="date" name="date" class="form-control">
						</div>

						<div class="col-md-2">
							<button type="submit" class="btn btn-primary btn-sm w-100">검색</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>