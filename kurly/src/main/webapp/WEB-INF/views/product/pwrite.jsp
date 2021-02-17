<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<style>
	h2{text-align: center;}
</style>
<script>
	function get_jung(deacode)
	{
		var chk = new XMLHttpRequest();
		chk.open("get","get_jung?deacode="+deacode);
		chk.send();
		chk.onreadystatechange=function()
		{
			if(chk.readyState == 4) //value,text
				{
				var x =  decodeURI(chk.responseText).replace(/%2F/g,",")
// 				alert(decodeURI(chk.responseText).replace(/%2F/g,","));
				alert(x);
				var xarr = x.split("~");
				xarr1 = xarr[0].split(",");
				alert(xarr1.length);
			}
		}
	}
</script>
 <!-- 상품등록 페이지 -->
<div id="psection">
<form method="post" action="pwrite_ok">
	<table width="600" align="center">
	<h2>상품 등록 하기</h2>
		<tr>
		  <td> 상품코드 </td>
		  <td>
		  <!-- dea 분류 -->
		  	<select name="dea" onchange="get_jung(this.value)">
		  		<c:forEach items="${list}" var="pdto">
		  			<option value="${pdto.code}">${pdto.title}</option>
		  		</c:forEach>
		  	</select>
		  	<select name="jung">
		  		<c:forEach items="${jlist}" var="jdto">
		  			<option value="${jdto.code}">${jdto.title}</option>
		  		</c:forEach>
		  	</select>
		  	
		  </td>
		</tr>
		<tr>
		  <td> 상품제목 </td>
		  <td><input type="text" nama="title"></td>
		</tr>
		<tr>
		  <td> 상품요약설명 </td>
		  <td><input type="text" nama="subtitle"></td>
		</tr>
		<tr>
		  <td> 메인이미지 </td>
		  <td><input type="file" nama="ming"></td>
		</tr>
		<tr>
		  <td> 상품설명 </td>
		  <td><input type="file" nama="pcon"></td>
		</tr>
		<tr>
		  <td> 상품이미지 </td>
		  <td><input type="file" nama="pimg"></td>
		</tr>
		<tr>
		  <td> 상품상세정보 </td>
		  <td><input type="file" nama="pinfo"></td>
		</tr>
		<tr>
		  <td> 상품가격 </td>
		  <td><input type="text" nama="price"></td>
		</tr>
		<tr>
		  <td> 판매단위 </td>
		  <td><input type="text" nama="pdan"></td>
		</tr>
		<tr>
		  <td> 중량/용량 </td>
		  <td><input type="text" nama="pwe"></td>
		</tr>
		<tr>
		  <td> 배송구분 </td>
		  <td>
		  	<select name="bgubun">
		  	  <option value="0">샛별/택배</option>
		  	  <option value="1">샛별배송</option>
		  	  <option value="2">택배배송</option>
		  	</select>
		  </td>
		</tr>
		<tr>
		  <td> 원산지 </td>
		  <td>
		  	<select name="made">
		  		<option value="11">국내산</option>
		  		<option value="12">중국산</option>
		  		<option value="13">미국산</option>
		  		<option value="14">일본산</option>
		  		<option value="15">유럽산</option>
		  	</select>
		  </td>
		</tr>
		<tr>
		  <td> 알레르기 정보 </td>
		  <td><textarea cols="30" rows="3"></textarea></td>
		</tr>
		<tr>
		  <td> 입고 수량 </td>
		  <td><input type="text" nama="su"></td>
		</tr>
		<tr>
		  <td> 할인율 </td>
		  <td><input type="text" nama="halin" value="0"></td>
		</tr>
		<tr>
		  <td colspan="2" align="center">
		  	<input type="submit" value="상품등록하기">
		  </td>
		</tr>
	</table>
</form>
</div>






