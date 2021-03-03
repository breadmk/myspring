<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<input type="hidden" id="active" value="20" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/static/back/js/notice.js"></script>
<div class="w3-white w3-padding notranslate fix mt-3">
	<h3>공지관리</h3>
</div>
<table class="table">
	<thead class="thead-dark">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회</th>
			<th>수정/삭제</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="list">
			<tr class="viewRow">
				<c:if test="${list.state==1}">
					<td>공지</td>
				<input type="hidden" value="${list.nno}" class="nnum">
				</c:if>
				<c:if test="${list.state==0}">
				<input type="hidden" value="${list.nno}" class="nnum">
					<td class="NNo">${list.nno}</td>
				</c:if>
				<td>${list.title}</td>
				<td>${list.name}</td>
				<td><fmt:parseDate value="${list.writedate}" var="writedate"
						pattern="yyyy-MM-dd" /> <fmt:formatDate value="${writedate}"
						pattern="yyyy-MM-dd" /></td>
				<td>${list.read_cnt}</td>
				<td><a href="/admin/notice_update?no=${list.nno}">수정</a> / <a
					href="/admin/notice_delete?no=${list.nno}" class="delete">삭제</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div id="page">
			<ul class="pagination justify-content-center" id="pageWrap">${paging}</ul>
</div>
