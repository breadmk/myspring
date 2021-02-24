<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@include file="../navbar.jsp"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags" %>
<style>

.page_aticle{
	width:800px;
	height:auto;
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

.page_aticle button,.page_aticle input,.page_aticle select,.page_aticle * {
    font-family: noto sans;
    font-weight: 400;
    letter-spacing: 0
}

.page_aticle fieldset {
    padding: 0;
    margin: 0;
    border: 0
}

.page_aticle caption,.page_aticle legend {
    display: none
}

.page_aticle.aticle_type2 {
    padding-top: 65px
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
    word-wrap: break-word;
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
    color: #6a3664!important
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
    font-size: 12px;
    text-align: center;
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
.page_aticle button,.page_aticle input,.page_aticle select,.page_aticle * {
    font-family: noto sans;
    font-weight: 400;
    letter-spacing: 0
}
#aa{
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

.layout-pagination-number:hover,.layout-pagination-number.__active {
    background-color: #f7f7f7;
    color: #5f0080
}

.layout-pagination-first-page,.layout-pagination-prev-page,.layout-pagination-next-page,.layout-pagination-last-page {
    background-repeat: no-repeat;
    background-position: 50% 50%;
    text-indent: -9999px
}

.layout-pagination-first-page {
    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-first.png)
}

.layout-pagination-prev-page {
    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-prev.png)
}

.layout-pagination-next-page {
    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-next.png)
}

.layout-pagination-last-page {
    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-last.png)
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
.input_txt{
text-align: left;
}
.input_txt th {
    padding: 10px 0
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
.xans-board-search{
  float:right;
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
.page_aticle{
	width:800px;
	}
#insert_notice{
	float:right;
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
    margin-bottom:5px;
    font-size: 13px;
    text-decoration: none;
    }
    
 .notice .layout-pagination{margin: 0}
 .eng2{color: #939393}
 .xans-board-listheader{font-size:12px}
 #page{text-align: center;}
 .noRow{ display:none;}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="/static/front/js/notice.js"></script>
<div class="page_aticle aticle_type2">
<div class="page_section">
<div class="head_aticle">
<h2 class="tit">공지사항 <span class="tit_sub">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span></h2>
</div>
<a href="/shop/notice_insert" id="insert_notice">공지작성</a>
<!-- <form name="frmList" action="/shop/board/list.php?&amp;" onsubmit="return chkFormList(this)"> -->
<input type="hidden" name="id" value="notice">
<table width="100%" align="center" cellpadding="0" cellspacing="0">
<tbody><tr>
<td>
<div class="xans-element- xans-myshop xans-myshop-couponserial ">
<table width="100%" class="xans-board-listheader jh" cellpadding="0" cellspacing="0">
<thead>
<tr>
<th>번호</th>
<th>제목</th>
<th>작성자</th>
<th>작성일</th>
<th>조회</th>
</tr>
</thead>
<tbody>
<c:forEach items="${list}" var="list">
<tr class="viewRow">
<c:if test="${list.state==1}">
<td width="50" nowrap="" align="center">공지</td>
<td class=noRow>${list.nno}</td>
</c:if>
<c:if test="${list.state==0}">
<td width="50" nowrap="" align="center" class="NNo">${list.nno}</td>
</c:if>
<td style="padding-left:10px; text-align:left; color:#999">${list.title}</td>
<td width="100" nowrap="" align="center">${list.name}</td>
<fmt:parseDate value="${list.writedate}" var="writedate" pattern="yyyy-MM-dd"/>
<td width="100" nowrap="" align="center" class="eng2"><fmt:formatDate value="${writedate}" pattern="yyyy-MM-dd"/></td>
<td width="30" nowrap="" align="center" class="eng2">${list.read_cnt}</td>

</tr>
</c:forEach>
</tbody>
</table>
</div>
</td>
</tr>
</tbody>
</table>
<div id="page">
<c:if test="${pageObject.totalPage > 1 }">
		<tr>
			<td>
			 <pageNav:pageNav listURI="notice" pageObject="${pageObject}" />
			</td>
		</tr>
	</c:if>
</div>
</div>
<table class="xans-board-search xans-board-search2">
<tbody><tr>
<td class="input_txt"><img src="/static/front/img/search1.jpg">검색어</td>
<td class="stxt">
<input type="checkbox" name="search[name]">이름
<input type="checkbox" name="search[subject]">제목
<input type="checkbox" name="search[contents]">내용&nbsp;
</td>
<td class="input_txt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>
<div class="search_bt">
<a href="javascript:document.frmList.submit()"><img src="/static/front/img/search.jpg" align="right"></a>
<input type="text" name="search[word]" value="" required="">
</div>
</td>
</tr>
</tbody></table>
<!-- 검색을 위한 태그 시작 -->
<div>
  <form class="navbar-form">
    <div class="input-group">
     <div class="form-group navbar-left">
      <select name="key" class="form-control">
       <!-- selected="select" or selected -->
       <option value="t" ${(pageObject.key == "t")? " selected ":"" }
        >제목</option>
       <option value="c" ${(pageObject.key == "c")? " selected ":"" }
       >내용</option>
       <option value="w" ${(pageObject.key == "w")? " selected ":"" }
       >작성자</option>
       <option value="tc" ${(pageObject.key == "tc")? " selected ":"" }
       >제목/내용</option>
       <option value="tw" ${(pageObject.key == "tw")? " selected ":"" }
       >제목/작성자</option>
       <option value="cw" ${(pageObject.key == "cw")? " selected ":"" }
       >내용/작성자</option>
       <option value="tcw" ${(pageObject.key == "tcw")? " selected ":"" }
       >전체</option>
      </select>
       <input type="text" class="form-control" placeholder="Search"
        name="word" value="${pageObject.word }">
      </div>
      <div class="input-group-btn">
        <button class="btn btn-default" type="submit">
          <i class="glyphicon glyphicon-search"></i>
        </button>
      </div>
    </div>
  </form>

 </div>
<!-- </form> -->
</div>
</div>