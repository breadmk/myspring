<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--     <%@include file="../navbar.jsp"%> --%>
<style>
.xans-board-listheader {
	border-top: 2px solid #522772;
	font-size: 13px;
	line-height: 140%
}

.xans-board-listheader tr td {
	padding: 12px;
	border-top: 1px solid #f4f4f4;
	text-align: center;
	vertical-align: middle;
	word-wrap: break-word
}

.xans-board-listheader tbody tr:first-child td {
	border-top: 1px solid #333
}

.xans-board-listheader.jh {
	border-bottom: 1px solid #f4f4f4
}

.xans-board-listheader.jh tr td {
	padding: 20px 0
}

.xans-board-listheader td.product {
	padding-left: 10px;
	text-align: left;
	font-size: 16px
}

.xans-board-listheader td .price {
	font-size: 18px;
	font-weight: 700;
	color: #6a3664 !important
}

.xans-board-listheader td.button a span {
	width: 100px;
	line-height: 27px;
	margin: 0 15px 5px 0
}

.xans-board-listheader .thumb {
	width: 126px
}

.xans-board-listheader .thumb img {
	width: 126px
}

.xans-board-listheader .thumb2 {
	width: 150px
}

.xans-board-listheader .quantity {
	width: 70px
}

.xans-board-listheader .system {
	width: 100px
}

.xans-board-listheader .rev {
	width: 100px
}

.xans-board-listheader .price_p {
	font-size: 12px;
	color: #000
}

.xans-board-listheader .opt {
	color: gray;
	font-size: 12px
}

.xans-board-listheader td.product {
	width: auto;
	padding: 12px 20px
}

.xans-board-listheader p.ordno {
	text-decoration: underline;
	letter-spacing: .2px
}

.xans-board-listheader th {
	padding: 20px 0;
	vertical-align: middle;
	font-size: 12px
}

.xans-board-listheader .state {
	width: 110px;
	font-weight: 700
}

.xans-board-listheader .product {
	width: auto
}

.xans-board-listheader .state {
	width: 110px;
	font-weight: 700
}

.xans-board-listheader .number {
	width: 181px
}

.xans-board-listheader .state {
	width: 156px;
	font-weight: 700
}

.xans-board-listheader td.state {
	color: #795c90
}

.page_aticle {
	width: 1050px;
	margin: 0 auto
}

.page_aticle button, .page_aticle input, .page_aticle select,
	.page_aticle * {
	font-family: noto sans;
	font-weight: 400;
	letter-spacing: 0
}

.page_aticle fieldset {
	padding: 0;
	margin: 0;
	border: 0
}

.page_aticle caption, .page_aticle legend {
	display: none
}

.page_aticle.aticle_type2:after {
	content: "";
	display: block;
	overflow: hidden;
	width: 100%;
	clear: both
}

.page_aticle.aticle_type2 .page_section {
	float: right;
	width: 820px
}

.page_aticle .head_aticle {
	padding: 5px 0 34px
}

.page_aticle .head_aticle .tit {
	height: 36px;
	font-weight: 700;
	font-size: 24px;
	line-height: 36px;
	color: #333;
	letter-spacing: -.5px
}

.page_aticle .head_aticle .tit_sub {
	padding-left: 11px;
	font-size: 14px;
	color: #999;
	line-height: 20px;
	letter-spacing: -.3px;
	vertical-align: 3px
}

.page_aticle .head_section.fst {
	padding-top: 0
}

.page_aticle .head_section .tit {
	font-weight: 700;
	font-size: 16px;
	color: gray;
	line-height: 24px
}

.page_aticle .head_section .txt_sub {
	padding-left: 24px;
	font-size: 12px;
	color: #777;
	letter-spacing: -.2px
}

.page_aticle .head_type2 {
	overflow: hidden;
	width: 100%
}

.page_aticle .head_type2 .tit {
	float: left;
	font-size: 16px;
	color: gray
}

.page_aticle .head_type2 .desc {
	float: left;
	padding: 1px 0 0 19px;
	font-size: 13px;
	color: #939393
}

.page_aticle .no_data {
	padding: 50px 0;
	font-size: 13px;
	color: #757575;
	text-align: center
}

.page_aticle .list_type1 li {
	overflow: hidden;
	width: 100%
}

.page_aticle .list_type1 .ico {
	float: left;
	margin: 4px 3px 0 0
}

.page_aticle .list_type1 .txt {
	overflow: hidden;
	font-size: 14px;
	color: #999;
	line-height: 22px;
	letter-spacing: -.3px
}

.page_aticle .tbl {
	width: 100%
}

.page_aticle .tbl th, .page_aticle .tbl td {
	word-break: break-all
}

.page_aticle .tbl_type1 th {
	padding: 20px 0;
	border-top: 2px solid #333;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	color: #333;
	letter-spacing: -.5px
}

.page_aticle .tbl_type1 td {
	border-top: 1px solid #f4f4f4
}

.page_aticle .tbl_type1 tr:first-child td {
	border-top: 1px solid #333
}

.page_aticle .tbl_type2 {
	border-top: 2px solid #333;
	border-bottom: 1px solid #f4f4f4
}

.bhs_buttonsm {
	width: 100px;
	display: inline-block;
	line-height: 30px;
	text-align: center;
	background-color: #795b8f;
	border: 1px solid #5f0080;
	color: #fff;
	font-size: 15px;
	float: right;
	margin-left: 2px;
	font-size: 13px
}

.page_aticle {
	width: 800px;
}

.answer {
	display: none;
	text-align: center;
}

.update {
	word-break: break-all;
	box-sizing: border-box;
	font: inherit;
	margin: 0;
	overflow: visible;
	border-radius: 0;
	text-transform: none;
	cursor: pointer;
	max-width: 100%;
	outline: none;
	display: inline-block;
	border: 1px solid #5f0080;
	background-color: #fff;
	color: #5f0080;
	text-align: center;
	font-family: noto sans;
	font-weight: 400;
	letter-spacing: 0;
	width: auto;
	min-width: 75px;
	padding: 0 15px;
	height: 30px;
	line-height: 28px;
	font-size: 12px;
}

.delete {
	word-break: break-all;
	box-sizing: border-box;
	font: inherit;
	margin: 0;
	overflow: visible;
	border-radius: 0;
	text-transform: none;
	cursor: pointer;
	max-width: 100%;
	outline: none;
	display: inline-block;
	border: 1px solid #5f0080;
	background-color: #fff;
	color: #5f0080;
	text-align: center;
	font-family: noto sans;
	font-weight: 400;
	letter-spacing: 0;
	width: auto;
	min-width: 75px;
	padding: 0 15px;
	height: 30px;
	line-height: 28px;
	font-size: 12px;
}

.titleFonts{
	font-size: 3px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/static/front/js/qna.js"></script>
<div class="page_aticle aticle_type2">
	<div class="page_section section_qna">
		<div class="head_aticle">
			<h2 class="tit">1:1 문의</h2>
		</div>

		<table class="xans-board-listheader" width="100%">
			<tbody>
				<tr class="input_txt">
					<th width="8%">번호</th>
					<th width="15%">카테고리</th>
					<th>제목</th>
					<th width="12%">작성자</th>
					<th width="12%">작성일</th>
				</tr>
				<c:forEach var="list" items="${list}" varStatus="status">
					<tr class="qna">
					<td class="td1">${list.qnno}</td>
					<td id="td3">
								<c:if test="${list.ctno==243}">
								배송/지연불만
								</c:if> 
								<c:if test="${list.ctno==244}">
								컬리패스(무료배송)
								</c:if> 
								<c:if test="${list.ctno==245}">
								반품문의
								</c:if> 
								<c:if test="${list.ctno==246}">
								A/S 문의
								</c:if> 
								<c:if test="${list.ctno==247}">
								환불문의
								</c:if> 
								<c:if test="${list.ctno==248}">
								주문결제문의
								</c:if> 
								<c:if test="${list.ctno==249}">
								회원정보문의
								</c:if> 
								<c:if test="${list.ctno==250}">
								취소문의
								</c:if> 
								<c:if test="${list.ctno==251}">
								교환문의
								</c:if> 
								<c:if test="${list.ctno==252}">
								상품정보문의
								</c:if> 
								<c:if test="${list.ctno==253}">
								기타문의
								</c:if>
					</td>
					<td>${list.title}[${list.count}]</td>
					<td>${list.name}</td>
					<td><fmt:parseDate value="${list.writedate}" var="writedate"
							pattern="yyyy-MM-dd" /> <fmt:formatDate value="${writedate}"
								pattern="yyyy-MM-dd" /></td>
					</tr>
					<tr class="answer">
						<td colspan="5">[ 주문번호 ${list.ono} 문의 ]<p>
							${list.content}
		--------------------------------------------------------- 문의 답변 안내 ---------------------------------------------------------<p>
							<span class="ajax"></span><p>
							<button class="update">수정</button>
							<button class="delete">삭제</button> <input type="hidden"
							value="${list.qnno}">
						</td>
					</tr>
				</c:forEach>
		</table>
		<div style="position: relative">
			<div style="position: absolute; right: 0; top: 60px;">
				<a href="/shop/qna_register"><span class="bhs_buttonsm yb"
					style="float: none;">글쓰기</span></a>
			</div>
		</div>
		<div class="no_data"
			style="padding: 150px 0 148px; border-top: 1px solid #e6e6e6; border-bottom: 1px solid #e6e6e6; font-size: 12px; color: #4c4c4c">
		</div>
		<div class="layout-pagination">
			<div class="pagediv"></div>
		</div>

	</div>
</div>