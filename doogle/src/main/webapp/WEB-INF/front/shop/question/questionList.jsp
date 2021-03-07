<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@include file="../navbar.jsp"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
#snb .list_menu li a {
	display: block;
	overflow: hidden;
	padding: 15px 0 15px 20px;
	background: #fff
		url(https://res.kurly.com/pc/ico/2008/ico_arrow_6x11.svg) no-repeat
		174px 52%;
	background-size: 6px 11px;
	font-size: 14px;
	color: #666;
	line-height: 20px;
	letter-spacing: -.3px;
}

.page_aticle {
	width: 800px;
	height: auto;
}

.head_aticle .tit {
	height: 36px;
	font-weight: 700;
	font-size: 24px;
	line-height: 36px;
	color: #333;
	letter-spacing: -.5px
}

.head_aticle .tit_sub {
	padding-left: 11px;
	font-size: 14px;
	color: #999;
	line-height: 20px;
	letter-spacing: -.3px;
	vertical-align: 3px
}

.page_section {
	float: right;
	width: 820px
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

/* .page_aticle.aticle_type2 { */
/*     padding-top: 65px */
/* } */
/* .page_aticle.aticle_type2:after { */
/*     content: ""; */
/*     display: block; */
/*     overflow: hidden; */
/*     width: 100%; */
/*     clear: both */
/* } */

/* .page_aticle.aticle_type2 .page_section { */
/*     float: right; */
/*     width: 820px */
/* } */
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

.xans-board-listheader td.product {
	width: auto;
	padding: 12px 20px
}

.xans-board-listheader p.ordno {
	letter-spacing: .2px
}

.xans-board-listheader th {
	padding: 20px 0;
	vertical-align: middle;
	font-size: 12px
}

.page_aticle button, .page_aticle input, .page_aticle select,
	.page_aticle * {
	font-family: noto sans;
	font-weight: 400;
	letter-spacing: 0
}

#aa {
	border-collapse: collapse;
	border-spacing: 0;
	line-height: 140%;
	font-size: 12px;
	word-break: break-all;
	text-align: left;
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	background-color: transparent;
	text-decoration: none;
	font-family: noto sans;
	font-weight: 400;
	letter-spacing: 0;
	color: #555;
}

.layout-pagination {
	margin: 60px 0 0;
	text-align: center
}

.layout-pagination-button {
	display: inline-block;
	width: 34px;
	height: 34px;
	border: 1px solid #ddd;
	border-left: 0;
	vertical-align: top
}

.layout-pagination-button:first-child {
	border-left: 1px solid #ddd
}

.layout-pagination-number {
	font-weight: 700;
	color: #333;
	line-height: 34px
}

.layout-pagination-number:hover, .layout-pagination-number.__active {
	background-color: #f7f7f7;
	color: #5f0080
}

.layout-pagination-first-page, .layout-pagination-prev-page,
	.layout-pagination-next-page, .layout-pagination-last-page {
	background-repeat: no-repeat;
	background-position: 50% 50%;
	text-indent: -9999px
}

.layout-pagination-first-page {
	background-image:
		url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-first.png)
}

.layout-pagination-prev-page {
	background-image:
		url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-prev.png)
}

.layout-pagination-next-page {
	background-image:
		url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-next.png)
}

.layout-pagination-last-page {
	background-image:
		url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-last.png)
}

.xans-board-search2 {
	height: 80px;
	padding: 0
}

.xans-board-search input[type=text] {
	height: 34px;
	line-height: 34px;
	width: 220px;
	border: 1px solid #bfbfbf;
	color: #000;
	float: right;
	padding: 4px
}

.xans-board-search select#search_date {
	margin: 0 2px 0 22px
}

.xans-board-search input[type=image] {
	float: right;
	position: relative
}

.xans-board-search select {
	margin: 0 2px 0 0;
	border: 1px solid #bfbfbf;
	line-height: 34px;
	height: 34px;
	vertical-align: middle;
	padding-bottom: 5px
}

.xans-board-search .input_txt img {
	position: relative;
	right: 5px;
	top: -2px
}

.xans-board-search .stxt {
	font-size: 14px
}

.xans-board-search .stxt input {
	margin-left: 10px;
	margin-right: 3px;
	position: relative;
	top: 3px
}

.xans-board-listheader td a {
	color: #555
}

.input_txt {
	text-align: center;
}

#a1 {
	text-align: center;
	width: 20%;
}

#a2 {
	text-align: center;
	width: 30%;
}

#a3 {
	text-align: center;
	width: 50%;
}

.xans-board-search .input_txt img {
	position: relative;
	right: 5px;
	top: -2px;
}

.search_bt select {
	margin: 0 2px 0 10px;
	width: 120px;
	border: 1px solid #bfbfbf;
	line-height: 34px;
	height: 34px;
	vertical-align: middle;
	padding-bottom: 5px;
	float: right;
}

.xans-board-search {
	float: right;
}

.xans-board-search input[type=text] {
	height: 34px;
	line-height: 34px;
	width: 220px;
	border: 1px solid #bfbfbf;
	color: #000;
	float: right;
	padding: 4px;
}

.search_date {
	height: 50px;
}

.search_date .btn_layer {
	overflow: hidden;
	position: absolute;
	right: 350px;
	top: 30px;
	width: 157px;
	height: 44px;
	padding: 11px 0 0 15px;
	border: 1px solid #ddd;
	font-size: 14px;
	color: #666;
	line-height: 18px;
	letter-spacing: -.5px
}

.search_date .btn_layer:after {
	content: "";
	position: absolute;
	left: 128px;
	top: 18px;
	width: 12px;
	height: 8px;
	background: url(https://res.kurly.com/pc/ico/2008/ico_down_12x8.svg)
		no-repeat 0 0;
	background-size: 12px 8px
}

.search_date .btn_layer.on:after {
	transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
	-o-transform: rotate(-180deg)
}

.search_date .layer_search {
	display: none;
	position: absolute;
	right: 350px;
	top: 100px;
	width: 157px;
	border: 1px solid #dddfe1;
	border-top: 0
}

.search_date .layer_search li {
	background-color: #fff;
	border-top: 1px solid #dddfe1
}

.search_date .layer_search li:first-child {
	border-top: 0
}

.search_date .layer_search a {
	display: block;
	overflow: hidden;
	height: 32px;
	padding: 7px 0 0 8px;
	font-size: 12px;
	color: #666;
	line-height: 18px;
	letter-spacing: -.2px
}

.search_date select {
	float: right;
}

.search_date .layer_search a.on {
	background-color: #f7f7f7
}

.table_faq {
	border-top: 1px solid #f4f4f4
}

.table_faq tr td {
	padding: 20px 0
}

#tdtitle {
	text-align: center;
	margin: auto;
}

.page_aticle {
	width: 800px;
}

.qna_answer {
	display: none;
	text-align: center;
}

#qnaRegister {
	float: left;
	width: 100px;
	display: inline-block;
	line-height: 30px;
	text-align: center;
	background-color: #795b8f;
	border: 1px solid #5f0080;
	color: #fff;
	font-size: 15px;
	margin-left: 2px;
	margin-bottom: 5px;
	font-size: 13px;
	text-decoration: none;
}

.qna #td1 {
	text-align: center;
	width: 8%;
}

.qna #td2 {
	width: 16%;
	text-align: center;
}

.qna #td3 {
	width: 70%;
	text-align: center;
}

#page {
	text-align: center;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:link {
	text-decoration: none;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="/static/front/js/questionList.js"></script>
<div class="page_aticle aticle_type2">
	<form name="frmList" id="form" method="get" action="?">
		<div class="page_section">
			<div class="head_aticle">
				<h2 class="tit">
					자주하는 질문 <span class="tit_sub">고객님들께서 가장 자주하시는 질문을 모두 모았습니다.</span>
				</h2>
			</div>
			<div class="search_date">
				<a href="./questionRegister" id="qnaRegister">질문지작성</a> <select
					onchange="if(this.value) {window.open(value,'_black')}">
					<!--  	<option value="questionList" class="btn_layer">전체</option> -->
					<option value="">선택</option>
					<option value="questionList">전체</option>
					<option value="questionList?ctno=217">회원문의</option>
					<option value="questionList?ctno=218">주문결제</option>
					<option value="questionList?ctno=219">취소/교환/반품</option>
					<option value="questionList?ctno=220">배송문의</option>
					<option value="questionList?ctno=221">쿠폰/적립금</option>
					<option value="questionList?ctno=222">서비스 이용 및 기타</option>
				</select>
			</div>
			<div class="xans-element- xans-myshop xans-myshop-couponserial ">
				<table width="100%" class="xans-board-listheader">
					<tr>
						<th id="a1">번호</th>
						<th id="a2">카테고리</th>
						<th id="a3">제목</th>
					</tr>
					<!-- </table> -->
					<!-- <table width="100%" class="table_faq"> -->

					<c:forEach items="${list}" var="list">
						<c:if test="${list.type eq 'y'}">
							<tr class="qna">
								<td class="td1">${list.qno}</td>
								<c:if test="${list.ctno==217}">
									<td id="td1">회원문의</td>
								</c:if>
								<c:if test="${list.ctno==218}">
									<td id="td2">주문/결제</td>
								</c:if>
								<c:if test="${list.ctno==219}">
									<td id="td2">취소/교환/반품</td>
								</c:if>
								<c:if test="${list.ctno==220}">
									<td id="td2">배송문의</td>
								</c:if>
								<c:if test="${list.ctno==221}">
									<td id="td2">쿠폰/적립금</td>
								</c:if>
								<c:if test="${list.ctno==222}">
									<td id="td2">서비스 이용 및 기타</td>
								</c:if>
								<td style="cursor: pointer" id="td3">${list.title}</td>
							</tr>
							<tr class="qna_answer">
								<td colspan="5">${list.content}</td>
							</tr>
						</c:if>
					</c:forEach>
				</table>
			</div>
			<div id="page">
				<ul class="pagination justify-content-center" id="pageWrap">${paging}</ul>
			</div>
		</div>
</div>

<!-- </form> -->
