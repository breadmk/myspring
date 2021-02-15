<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="pageObject" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
  
  <style type="text/css">
  	.dataRow:hover{
  		background: #ccc;
  		cursor: pointer;
  	}
  </style>
  <script type="text/javascript">
  	$(function () {
  		
	});
  
  </script>
</head>
<body>
 <div class="container">
	<h1>뀨::커뮤니티에 오신 것을 환영합니다.</h1>
	
	<!-- 이미지 게시판 리스트 -->
	<div class="panel panel-danger">
      <div class="panel-heading">이미지</div>
      <div class="panel-body">
      	 <div class="row">
      	 <!-- 데이터가 있는 만큼 반복 -->
      	 <c:forEach items="${imageList}" var="vo">
		  <div class="col-md-3"> <!-- 부트스트랩은 12가 최대라 3으로 수정하면 4개가 출력됨 -->
		    <div class="thumbnail dataRow">
		      <a href="/image/view.do?no=${vo.no}">
		        <img src="${vo.fileName}" alt="Fjords" style="width:100%">
		        <div class="caption">
		          <p>${vo.no}.${vo.title}</span></p>
		             ${vo.writer} (
		             <fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd" /> )
		        </div>
		      </a>
		    </div>
		  </div>
		  </c:forEach>
  <!-- 데이터 반복의 끝 -->
		</div>
      </div>
    </div>
    <div class="panel panel-danger">
      <div class="panel-heading">일반게시판</div>
      <div class="panel-body">
      	<ul class="list-group">
      	<!--  데이터만큼 반복하는 시작 -->
      	<c:forEach items="${boardList}" var="vo">
		  <li class="list-group-item dataRow">
		  	<a href="/board/view.do?no=${vo.no}&inc=1" style="text-decoration: none">
		  	${vo.no}.${vo.title} - ${vo.writer} (
		  	<fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd"/> )
		  	<span class="badge">${vo.hit}</span>
		  	</a>
		  	</li>
		</c:forEach>
		<!-- 데이터 반복의 종료 -->
		</ul>
      </div>
    </div>

 </div>
</body>
</html>