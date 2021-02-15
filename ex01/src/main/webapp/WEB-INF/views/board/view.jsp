<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!--   <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->

<!-- 댓글 js 모듈 등록 -->
<script src="/js/reply.js"></script>

  <script type="text/javascript">
  	$(function () {
  		
  		//댓글 리스트는 이벤트가 없더라도 뿌려야 한다.
  		getList(1);
  		//댓글 리스트를 가져오는 함수 선언 - 호출을 해야 실행된다.
  		function getList(page){
  			// 기본페이지 처리
  			if(!page) page = 1;
  			// 데이터 수집
  			var pageInfo = {};
  			pageInfo.page = page;
  			pageInfo.no = $("#no").text();
  			//ajax 객체 호출 처리 - get 방식으로 처리할 거라면 body에 안 들어가고 url에 포함이 함.
  			replyService.list(pageInfo,
  			//성공했을 때의 함수 - callback함수
			function(result){
  				//alert("리스트 가져오기 성공");
  			//샘플 데이터 찍어보기
				//alert(result[0]);
				//alert(JSON.stringify(result));
				
				// 데이터를 표시할 div > ul의 내용을 업앤다.
				$("#replyListDiv >ul").empty();
				
				// 데이터가 많으므로 반복문 처리를 한다.
				$(result).each(function(mk,vo){
					
					//
					var src ="";
					src += "<li class='list-group-item rowData'>";
					src += "<span class='rno'>"+vo.rno+"</span>.<span class='content'>"+vo.content+"</span>";
					src += "<span class='badge' style='background: none;'>";
					src += "<button class='replyUpdateBtn btn btn-default'>수정</button>";
					src += "<button class='replyDeleteBtn btn btn-default'>삭제</button>";
					src += "</span>";
					src += "<hr>";
					src += "<span class='writer'>"+vo.writer+"</span>("+
						   "<span class='writeDate'>"+vo.writeDate+"</span>)";
					src += "</li>";
					
					//작성이 li 태그를 replyListDiv 안에 ul 태그에 추가시킨다.
					$("#replyListDiv > ul").append(src);
				});
  					
  			});
  		}
  		
  		
		$('#deletebtn').click(function() {
			var pw = prompt("비밀번호입력:");
			if(pw.length >=4){
				$('#deletePw').val(pw);
				$('#deleteForm').submit();
				return;
			}
			alert("비밀번호가 틀렸습니다");
			return false;
		});
		//---------------------------댓글 수정을 위한 모달창 여는 이벤트-------------------
// 		$(".replyUpdateBtn").click(function(){  서버에서 추가되는거라서 순서가 늦어서 적용안됨. on 이벤트 사용
// 			alert("댓글 수정 버튼 클릭됨.");
// 		});
		$("#replyListDiv").on("click",".replyUpdateBtn", //on 이벤트.
				function(){
						alert('댓글 수정 버튼이 클릭됨.');	
						$("#myModal").find(".modal-title").text("댓글 수정");
						//수정 데이터 셋팅
					var rowData = $(this).closest(".rowData");
						$("#rno").val(rowData.find(".rno").text());
						$("#content").val(rowData.find(".content").text());
						$("#writer").val(rowData.find(".writer").text());
						
						//버튼처리
						$("#replyWriteProcessBtn").hide();
						$("#replyUpdateProcessBtn").show();
						//모달창 보이기
						$("#myModal").modal("show");
		});
		
		//---------------------------댓글 수정 처리 이벤트-------------------
		$("#replyUpdateProcessBtn").click(function(){
			//데이터 수집 -form 밖에 button 이므로 submit이 일어나지 않는다.
			var reply = {};
			reply.rno = $("#rno").val();
			reply.content = $("#content").val();
			reply.writer = $("#writer").val();
			reply.writeDate = $(".writeDate").text();
			reply.replyPage = $("#replyPage").text();
// 			alert(reply);
// 			alert(JSON.stringify(reply));
			//처리호출
			replyService.update(JSON.stringify(reply),
					function(replyPage){
					//modal 입력 창을 비운다 = 데이터가 없는 것으로 세팅한다.
					alert("replyPage");
					$("#content").val("");
					$("#writer").val("");
					// modal 창 안 보이게 - 닫기 
					$("#myModal").modal("hide");
					//댓글이 달리면 댓글 리스트를 다시 뿌린다.
					getList(replyPage);
			});
		});
		
		//----------------------- 댓글 달기 모달창 여는 이벤튼
		$("#replyWriteBtn").click(function(){
			$("#myModal").find(".modal-title").text("댓글 쓰기");
			//데이터 지우기 - 댓글 수정시 내용이 들어가므로
			var rowData = $(this).closest(".rowData");
				$("#rno").val("");
				$("#content").val("");
				$("#writer").val("");
				//버튼 처리
				$("#replyWriteProcessBtn").show();
				$("#replyUpdateProcessBtn").hide();
		});
		
		//---------------------------댓글 달기 처리 이벤트-------------------
		$("#replyWriteProcessBtn").click(function(){
			//데이터 수집 -form 밖에 button 이므로 submit이 일어나지 않는다.
			var reply = {};
			reply.no = $("#no").text();
			reply.content = $("#content").val();
			reply.writer = $("#writer").val();
// 			alert(reply);
// 			alert(JSON.stringify(reply));
			//처리호출
			replyService.add(JSON.stringify(reply),
					function(){
					//modal 입력 창을 비운다 = 데이터가 없는 것으로 세팅한다.
					$("#content").val("");
					$("#writer").val("");
					// modal 창 안 보이게 - 닫기 
					$("#myModal").modal("hide");
					alert("댓글쓰기 완료");
					//댓글이 달리면 댓글 리스트를 다시 뿌린다.
					getList(1);
			});
		});
	});
  </script>
</head>
<body>
	<div class="container">
	<h1>게시판 글보기</h1>
		<table class="table">
			<tr>
				<th>번호</th>
				<td id="no">${vo.no}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${vo.title}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><pre style="border:none;">${vo.content}</pre></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${vo.writer}</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><fmt:formatDate value="${vo.writeDate}" pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${vo.hit}</td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="update.do?no=${vo.no}" class="btn btn-default">수정</a>
					<a href="#" class="btn btn-default" id="deletebtn">삭제</a>
					<a href="list.do" class="btn btn-default">리스트</a>
				</td>
			</tr>
		</table>
		<!-- 댓글 처리를 위한 div -->
			<div>
			 <button type="button" class="btn btn-default" 
			 data-toggle="modal" data-target="#myModal" id="replyWriteBtn">
			 댓글달기</button>
			 <span id="replyPage">1</span>
			 </div>
	</div>
	
	<!--댓글 리스트 -->
	<div id="replyListDiv">
	<ul class="list-group">
	  <li class="list-group-item rowData">
	  <span class="rno">번호</span>.내용 입력
	   <span class="badge" style="background: none;">
	  <button class="replyUpdateBtn btn btn-default">수정</button>
	   <button class="replyDeleteBtn btn btn-default">삭제</button>
	  </span>
	  <hr>
	  이름(작성일)
	  </li>
	</ul>
	</div>
	<!--  삭제를 위한 form tag : 보이지않는다. -->
	<form action="delete.do" method="post" id="deleteForm">
		<input type="hidden" name="no" value="${vo.no}">
		<input type="hidden" name="pw" id="deletePw">
	</form>
	
	<!-- Modal :처음에는 안 보이다가 이벤트가 발생되면 나타나는 창.-->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <!-- 댓글 달기를 클릭하면 "댓글 쓰기" 로  / 댓글 수정을 클릭하면 "댓글 수정" 으로 제목 변경-->
        <h4 class="modal-title">댓글쓰기</h4>
      </div>
      <div class="modal-body">
        <p>
        	<form id="replyWriteForm">
        	<!-- 댓글 수정할 때는 댓글 번호가 필요하다. rno -->
        	<input type="hidden" name="rno" id="rno">
        	<input type="hidden" value="${vo.writeDate }" id="writeDate">
        		<div class="form-group">
				  <label for="content">댓글내용</label>
				  <textarea class="form-control" rows="5" id="content"></textarea>
				</div>
				<div class="form-group">
				  <label for="writer">작성자</label>
				  <input type="text" class="form-control" id="writer">
				</div>
        	</form>
        </p>
      </div>
      <div class="modal-footer">
        <button id="replyWriteProcessBtn" class="btn btn-default" >등록</button>
        <button id="replyUpdateProcessBtn" class="btn btn-default" >수정</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>

  </div>
</div>

</body>
</html>