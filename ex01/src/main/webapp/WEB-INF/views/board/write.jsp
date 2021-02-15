<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!--   <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
  
</head>
<body>
<div class="container">
	<h1>게시판 글쓰기</h1>
	 <form method="post">
    <div class="form-group">
      <label for="usr">제목:</label>
      <input type="text" class="form-control" id="title" name="title" required="required" pattern=".{4,100}" maxlength="100">
    </div>
    <div class="form-group">
	  <label for="content">내용:</label>
	  <textarea class="form-control" rows="5" id="content" name="content"></textarea>
	</div>
    <div class="form-group">
      <label for="writer">작성자:</label>
      <input type="text" class="form-control" id="writer" name="writer" required="required" pattern="[가-힣a-zA-Z]{2,10}" maxlength="10">
    </div>
     <div class="form-group">
      <label for="pw">비밀번호:</label>
      <input type="password" class="form-control" id="pw" name="pw" required="required" pattern=".{3,50}" maxlength="50">
    </div>
    <button class="btn btn-default">등록</button>
  </form>
</div>
</body>
</html>