<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style>
 #con_section{
 	width:1100px;
	height:1200px;
 	margin: auto;
 }
 
 #con_section #con_first > div {
 	width:500px;
 	height:600px;
 	display: inline-block;
 	text-align: center;
 }
 #con_section #con_first{height:650px; width:1300px;}
 #con_section #con_first #left {vertical-align: top;}
 #con_section td{height:50px;}
 #subox {border:1px solid #ccc; width:50px; height:20px;}
 #con_section #con_menu{
 			margin-top: 50px;
 			margin-left: 50px;
 			}
 #con_section #con_menu li{
 	display: inline-block;
 	list-style: none;
 	width:150px;
 	height:30px;
 	border : 1px solid #cccccc;
 	text-align: center;
 	padding-top: 5px;
 	background: #eeeeee;
 	}
 #con_section #con_content{
 	width:1000px;
 	height:500px;
 	margin: auto;
 }
</style>
<script src=""></script>
<div id="con_section">
	<div id="con_first">
		<div id="left"><img src="../resources/pimg/${pdto.mimg}" width="400" height="450"></div>
		<div id="right"> <!-- 상품정보 -->
		 <table width="480" align="center">
		 	<tr>
		 		<td colspan="2">${pdto.title}</td>
		 	</tr>
		 	<tr>
		 		<td colspan="2">${pdto.subtitle}</td>
		 	</tr>
		 	<tr>
		 		 <td colspan="2"> <fmt:formatNumber value="${pdto.price}"/>원 <br> 로그인 후, 적립혜택이 제공됩니다 </td>
		 	</tr>
		 	<tr>
		 		<td>판매단위</td>
		 		<td>${pdto.pdan}</td>
		 	</tr>
		 	<tr>
		 		<td>중량/용량</td>
		 		<td>${pdto.pwe}</td>
		 	</tr>
		 	<tr>
		 		<td>배송구분</td>
		 		<td>${pdto.bgubun}</td>
		 	</tr>
		 	<tr>
		 		<td>원산지</td>
		 		<td>${pdto.made}</td>
		 	</tr>
		 	<tr>
		 		<td>알레르기정보</td>
		 		<td>${pdto.pal}</td>
		 	</tr>
		 	<tr>
		 		<td>유통기한</td>
		 		<td>${pdto.gihan}</td>
		 	</tr>
		 	<tr>
		 		<td>구매수량</td>
		 		<input type="hidden" value="${pdto.su}" id="su">
		 		<td> 
		 		<div id="subox">
		 		<span style="cursor: pointer" onclick="suchange(0,${pdto.price})">-</span>
		 		<span id="con_su">1</span>
		 		<span style="cursor: pointer" onclick="suchange(1,${pdto.price})">+</span>
		 		</div>
		 		</td>
		 	</tr>
		 	<tr>
		 		 <td colspan="2"> 총 상품금액 : <span id="con_price"><fmt:formatNumber value="${pdto.price}"/></span>원 </td>
		 	</tr>
		 	<tr>
		 		<td colspan="2">
		 			<input type="submit" value="구매하기">
		 			<input type="button" value="장바구니 담기">
		 		</td>
		 	</tr>
		 </table>
		</div>
	</div>    
	<!-- 상품설명,상품이미지,상세정보,고객후기,상품문의 -->
	<ul id="con_menu">
		<li onclick="img_change('${pdto.pcon}',this)" class="con_m"> 상품 설명 </li>
     	<li onclick="img_change('${pdto.pimg}',this)" class="con_m"> 상품이미지 </li>
     	<li onclick="img_change('${pdto.pinfo}',this)" class="con_m"> 상세정보 </li>
		<li>고객후기</li>
		<li>상품문의</li>
	</ul>
	<div id="con_content">
		<img src="../resources/pimg/${pdto.pcon}" id="con_img">
	</div>	
	
</div>