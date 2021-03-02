<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
.input {
	user-select: none;
	box-sizing: border-box;
	font: inherit;
	margin: 0;
	width: 100%;
	border: 1px solid #ddd;
	line-height: 1.5;
	color: #333;
	appearance: none;
	outline: 0;
	height: 44px;
	padding: 1px 11px 0 15px;
	border-radius: 3px;
	font-family: Noto Sans;
	font-weight: 700;
	font-size: 14px;
	letter-spacing: -.5px;
}
.save{
user-select: none;
padding: 0;
box-sizing: border-box;
font: inherit;
margin: 0;
overflow: visible;
text-transform: none;
cursor: pointer;
letter-spacing: 0px;
width: 100%;
text-align: center;
outline: none;
border: 1px solid #5f0081;
background-color: #5f0080;
color: #fff;
font-family: Noto Sans;
height: 44px;
border-radius: 3px;
font-weight: 700;
font-size: 14px;
line-height: 42px;
margin-top: 30px;
}

.save1{
user-select: none;
padding: 0;
box-sizing: border-box;
font: inherit;
margin: 0;
overflow: visible;
text-transform: none;
cursor: pointer;
letter-spacing: 0px;
width: 100%;
text-align: center;
outline: none;
border: 1px solid #5f0081;
background-color: white;
color: black;
font-family: Noto Sans;
height: 44px;
border-radius: 3px;
font-weight: 700;
font-size: 14px;
line-height: 42px;
margin-top: 30px;}
.table2{
margin-top: -40px;
}
</style>
<script src="/static/front/js/deliveryUpdate.js"></script>
<form action="#" method="post" name="mk">
<input type="hidden" value="${param.dno}" name="dno">
<table width="400" align="center">
	<tr>
		<td><h2>배송지수정</h2></td>
	</tr>
	<tr>
		<td>기본 배송지</td>
	</tr>
	<tr>
		<td>${addr}</td>
	</tr>
	<tr>
		<td><input type="text" name="addr_detail" class="input"></td>
	</tr>
	<tr>
		<td>받으실 분</td>
	</tr>
	<tr>
		<td><input type="text" name="receive_name" placeholder="이름을 입력해주세요" class="input"></td>
	</tr>
	<tr>
		<td>휴대폰</td>
	</tr>
	<tr>
		<td><input type="text" name="phone" placeholder="번호를 입력해주세요" class="input"></td>
	</tr>
	<tr>
		<td align="center"><button onclick="update()" class="save">저장</button>
	</tr>
</table>
	</form>
<table width="400" align="center" class="table2">
		<tr>
		<td align="center"><button onclick="deliveryDelete()" class="save1">삭제</button>
	</tr>
</table>
