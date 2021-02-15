<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 파일 업로드를 하려면 
	1. 반드시 post 방식이어야만 한다.
	2. enctype = "multipart/form-data" 선언되어 있어야한다.
	3. input tag 에서는 type="file"
	4. name = "Contorller"의 변수 이름 -->
	<form action="upload_ok" method="post" enctype="multipart/form-data">
		<div>
			<label>첨부파일 :</label>
			<input type="file" name="files">
		</div>
		<div>
			<label>첨부파일 :</label>
			<input type="file" name="files">
		</div>
		<div>
			<label>첨부파일 :</label>
			<input type="file" name="files">
		</div>
		<div>
			<label>첨부파일 :</label>
			<input type="file" name="files">
		</div>
		<div>
			<label>첨부파일 :</label>
			<input type="file" name="files">
		</div>
		<button>파일올리기</button>
	</form>
</body>
</html>