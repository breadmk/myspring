<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<div class="tit_page">
	<h2 class="tit">공지사항</h2>
</div>
<p class="sub">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</p>
<div id="main">
	<div id="content">

		<div id="qnb" class="quick-navigation" style="top: 70px;">
			<style>
#qnb {
	position: absolute;
	z-index: 1;
	right: 20px;
	top: 70px;
	width: 80px;
	font: normal 12px/16px "Noto Sans";
	color: #333;
	letter-spacing: -0.3px;
	transition: top 0.2s
}

.goods-goods_view #qnb {
	top: 20px
}
/* 배너 */
#qnb .bnr_qnb {
	padding-bottom: 7px
}

#qnb .bnr_qnb .thumb {
	width: 80px;
	height: 120px;
	vertical-align: top
}
/* 메뉴 */
#qnb .side_menu {
	width: 80px;
	border: 1px solid #ddd;
	border-top: 0 none;
	background-color: #fff
}

#qnb .link_menu {
	display: block;
	height: 29px;
	padding-top: 5px;
	border-top: 1px solid #ddd;
	text-align: center
}

#qnb .link_menu:hover, #qnb .link_menu.on {
	color: #5f0080
}
/* 최근본상품 */
#qnb .side_recent {
	position: relative;
	margin-top: 6px;
	border: 1px solid #ddd;
	background-color: #fff
}

#qnb .side_recent .tit {
	display: block;
	padding: 22px 0 6px;
	text-align: center
}

#qnb .side_recent .list_goods {
	overflow: hidden;
	position: relative;
	width: 60px;
	margin: 0 auto
}

#qnb .side_recent .list {
	position: absolute;
	left: 0;
	top: 0
}

#qnb .side_recent .link_goods {
	display: block;
	overflow: hidden;
	width: 60px;
	height: 80px;
	padding: 1px 0 2px
}

#qnb .side_recent .btn {
	display: block;
	overflow: hidden;
	width: 100%;
	height: 17px;
	border: 0 none;
	font-size: 0;
	line-height: 0;
	text-indent: -9999px
}

#qnb .side_recent .btn_up {
	position: absolute;
	left: 0;
	top: 0;
	background:
		url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover.png)
		no-repeat 50% 50%
}

#qnb .side_recent .btn_up.off {
	background:
		url(https://res.kurly.com/pc/service/main/2002/ico_quick_up.png)
		no-repeat 50% 50%
}

#qnb .side_recent .btn_down {
	background:
		url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover.png)
		no-repeat 50% 0
}

#qnb .side_recent .btn_down.off {
	background:
		url(https://res.kurly.com/pc/service/main/2002/ico_quick_down.png)
		no-repeat 50% 0
}

@media only screen and (-webkit-min-device-pixel-ratio: 1.5) , only screen and
		(min-device-pixel-ratio: 1.5) , only screen and (min-resolution:
	1.5dppx) {
	#qnb .side_recent .btn_up {
		background-image:
			url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover_x2.png);
		background-size: 12px 18px
	}
	#qnb .side_recent .btn_down {
		background-image:
			url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover_x2.png);
		background-size: 12px 18px
	}
	#qnb .side_recent .btn_up.off {
		background-image:
			url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_x2.png);
		background-size: 12px 18px
	}
	#qnb .side_recent .btn_down.off {
		background-image:
			url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_x2.png);
		background-size: 12px 18px
	}
}

@media all and (max-width: 1250px) {
	#qnb {
		display: none
	}
}

.tit_page {
	overflow: hidden;
	width: 1050px;
	margin: 0 auto;
	padding: 55px 0 46px
}

.tit_page {
	font-family: noto sans, malgun gothic, AppleGothic, dotum;
	line-height: 1;
	letter-spacing: -.05em;
	color: #4c4c4c;
	font-size: 12px;
	-webkit-box-sizing: border-box;
	word-break: break-all;
	overflow: hidden;
	width: 1050px;
	margin: 0 auto;
	padding: 55px 0 46px;
}

.tit_page h2.tit {
	font-weight: 800;
	font-family: noto sans;
	font-size: 30px;
	color: #333;
	line-height: 50px;
	text-align: center;
	letter-spacing: -.5px
}

.tit_page .sub {
	font-family: noto sans;
	font-size: 14px;
	color: #999;
	line-height: 20px;
	letter-spacing: -.3px;
	text-align: center
}

.page_aticle .tit_sub {
	padding-left: 11px;
	font-size: 14px;
	color: #999;
	line-height: 20px;
	letter-spacing: -.3px;
	vertical-align: 3px
}

.sub {
	-webkit-box-sizing: border-box;
	margin: 0;
	padding: 0;
	word-break: break-all;
	font-family: noto sans;
	font-size: 14px;
	color: #999;
	line-height: 20px;
	letter-spacing: -.3px;
	text-align: center;
}

.layout-wrapper {
	position: relative;
	width: 1050px;
	height: 100%;
	margin: 0 auto
}

.layout-wrapper.goods-view-area {
	padding-right: 40px
}

.xans-element-.xans-myshop.xans-myshop-couponserial td#contents span {
	line-height: 25px
}

.xans-element-.xans-myshop.xans-myshop-couponserial td#contents p {
	line-height: 25px
}

.xans-element-.xans-myshop.xans-myshop-couponserial td#contents .board_view_content
	{
	line-height: 25px
}

.xans-element-.xans-myshop.xans-myshop-couponserial td#contents .board_view_content div
	{
	line-height: 25px
}

.xans-element-.xans-myshop.xans-myshop-couponserial .eng {
	display: none
}

.boardView {
	table-layout: fixed;
	border-top: 2px solid #333;
	border-bottom: 1px solid #f4f4f4;
	color: #333;
	line-height: 180%;
	margin-top: 20px
}

.boardView th {
	width: 130px;
	padding: 13px 0 13px 20px;
	background-color: #f7f5f8;
	border-top: 1px solid #f4f4f4;
	text-align: left
}

.boardView td {
	width: auto;
	padding: 13px 0 13px 23px;
	border-top: 1px solid #f4f4f4
}

.boardView tr.etcArea td {
	padding: 0;
	border: 0
}

.xans-myshop-bankbook ul {
	display: table;
	width: 100%;
	min-width: 756px;
	font-size: 0;
	line-height: 0
}

.xans-myshop-boardlist tr td {
	padding: 25px 3px 23px;
	border-top: 1px solid #e3e3e3;
	text-align: center;
	vertical-align: middle
}

.xans-myshop-boardlist table td {
	padding: 25px 3px 23px;
	border-top: 1px solid #e3e3e3;
	text-align: center;
	font-weight: 700;
	vertical-align: middle
}

.xans-myshop-boardlist .goodsnm {
	padding-top: 10px;
	font-weight: 700
}

.xans-myshop-wishlistbutton {
	overflow: hidden;
	margin: 20px 0 0;
	text-align: right
}

.xans-myshop-wishlistbutton span.left {
	float: left
}

.xans-myshop-summary {
	margin: 0 0 50px;
	padding: 0;
	border-top: 2px solid #5f0080;
	border-bottom: 1px solid #5f0080
}

.xans-myshop-summary ul {
	display: table;
	width: 100%;
	min-width: 756px;
	font-size: 0;
	line-height: 0
}

.xans-myshop-summary li {
	display: inline-block;
	position: relative;
	overflow: hidden;
	width: 50%;
	margin: 0;
	font-size: 12px;
	color: #353535;
	line-height: 18px;
	vertical-align: top;
	border-bottom: 1px solid #e1e1e1
}

.xans-myshop-summary li .title {
	float: left;
	width: 30%;
	padding: 25px 0 23px 10px
}

.xans-myshop-summary li .data {
	width: 35%;
	padding: 25px 0 23px 10px;
	text-align: left;
	vertical-align: middle;
	float: left
}

.xans-myshop-summary li strong {
	background-color: #f7f5f8;
	font-size: 13px
}

.xans-myshop-mileagehistorypackage .tab {
	display: table;
	width: 100%;
	padding-bottom: 10px
}

.xans-myshop-mileagehistorypackage .tab .right {
	float: right
}

.xans-myshop-mileagehistorypackage .tab .right li {
	display: inline-block;
	padding-left: 15px
}

.xans-myshop-mileagehistorypackage .tab .right li .on {
	color: #6a3664;
	font-weight: 700
}

.xans-myshop-mileagehistorypackage .tab h2 {
	color: gray;
	float: left
}

.xans-myshop-mileagehistorypackage table tr:last-child {
	border-bottom: none
}

.xans-myshop-mileagehistorypackage table tr td {
	padding: 15px 0;
	border-bottom: 1px solid #d9d9d9;
	font-size: 13px
}

.xans-myshop-mileagehistorypackage table tr td.text {
	text-align: left;
	color: #858585
}

.xans-myshop-mileagehistorypackage table tr td.date {
	text-align: center
}

.xans-myshop-mileagehistorypackage table tr td.money {
	text-align: center;
	font-weight: 700
}

.xans-myshop-mileagehistorypackage .noact {
	color: #acacac
}

.xans-myshop-mileagehistorypackage .act {
	color: #5f0080
}

.xans-myshop-unavaillist table td.noData {
	padding: 50px 0;
	text-align: center;
	font-weight: 700;
	color: #757575
}

.xans-myshop-unavaillist table th {
	padding: 25px 0 23px;
	vertical-align: middle;
	font-size: 13px
}

.xans-myshop-unavaillist table {
	border-collapse: separate;
	line-height: 1.5;
	border-top: 2px solid #6a3664;
	border-bottom: 1px solid #6a3664
}

.xans-myshop-unavaillist2 table {
	border-top: 2px solid #5f0080
}

.xans-myshop-unavaillist table {
	border-top: 2px solid #5f0080
}

.xans-myshop-unavaillist2 table td.noData {
	padding: 50px 0;
	text-align: center;
	font-weight: 700;
	color: #757575
}

.xans-myshop-unavaillist2 table th {
	padding: 25px 0 23px;
	vertical-align: middle;
	font-size: 13px
}

.xans-myshop-unavaillist2 table {
	border-collapse: separate;
	line-height: 1.5;
	border-top: 2px solid #6a3664;
	border-bottom: 1px solid #6a3664
}

.boardView tr.etcArea ul {
	position: relative;
	z-index: 1;
	overflow: hidden;
	width: 100%;
	border-top: 1px solid #f4f4f4
}

.boardView tr.etcArea ul li {
	float: left
}

.boardView tr.etcArea ul .th {
	float: left;
	padding: 13px 0 13px 20px;
	width: 130px;
	background-color: #f7f5f8
}

.boardView tr.etcArea ul .td {
	float: left;
	padding: 13px 0 13px 20px;
	width: 180px
}

.bhs_button {
	width: 150px;
	display: inline-block;
	line-height: 40px;
	text-align: center;
	background-color: #795b8f;
	border: 1px solid #5f0080;
	color: #fff;
	font-size: 15px;
	float: right;
	margin-left: 2px;
	font-size: 13px
}

.bhs_button.cancel {
	width: 95px;
	height: 35px;
	line-height: 35px;
	float: none;
	margin-top: 10px
}

.bhs_button.cancel:hover {
	width: 95px;
	height: 35px;
	line-height: 35px;
	float: none;
	margin-top: 10px;
	background: #fff;
	color: #5f0080
}

.bhs_button:hover {
	width: 150px;
	display: inline-block;
	line-height: 40px;
	text-align: center;
	background-color: #fff;
	border: 1px solid #5f0080;
	color: #5f0080;
	font-size: 15px;
	float: right;
	margin-left: 2px;
	font-size: 13px
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

.bhs_buttonsm:hover {
	width: 100px;
	display: inline-block;
	line-height: 30px;
	text-align: center;
	background-color: #fff;
	border: 1px solid #5f0080;
	color: #5f0080;
	font-size: 15px;
	float: right;
	margin-left: 2px;
	font-size: 13px
}

.xans-board-movement {
	border-top: 2px solid #333;
	border-bottom: 2px solid #333;
	margin: 20px 0
}

.xans-board-movement li {
	overflow: hidden;
	padding: 0 20px;
	border-bottom: 1px solid #f4f4f4;
	line-height: 140%;
	color: #333
}

.xans-board-movement li strong {
	width: 6%;
	padding-left: 15px;
	border-right: 1px solid #f4f4f4;
	font-weight: 400;
	background:
		url(https://res.kurly.com/pc/etc/old/images/board/ico_move_prev.gif)
		no-repeat 0 15px
}

.xans-board-movement li a, .xans-board-movement li strong {
	float: left;
	padding-left: 10px;
	padding-top: 10px;
}

.xans-board-movement li.next {
	border: 0
}

.xans-board-movement li.next strong {
	background:
		url(https://res.kurly.com/pc/etc/old/images/board/ico_move_next.gif)
		no-repeat 0 15px
}

.boardView {
	table-layout: fixed;
	border-top: 2px solid #333;
	border-bottom: 1px solid #f4f4f4;
	color: #333;
	line-height: 180%;
	margin-top: 20px
}

.boardView th {
	width: 130px;
	padding: 13px 0 13px 20px;
	background-color: #f7f5f8;
	border-top: 1px solid #f4f4f4;
	text-align: left
}

.boardView td {
	width: auto;
	padding: 13px 0 13px 23px;
	border-top: 1px solid #f4f4f4
}

.boardView tr.etcArea td {
	padding: 0;
	border: 0
}

.boardView tr.etcArea ul {
	position: relative;
	z-index: 1;
	overflow: hidden;
	width: 100%;
	border-top: 1px solid #f4f4f4
}

.boardView tr.etcArea ul li {
	float: left
}

.boardView tr.etcArea ul .th {
	float: left;
	padding: 13px 0 13px 20px;
	width: 130px;
	background-color: #f7f5f8
}

.boardView tr.etcArea ul .td {
	float: left;
	padding: 13px 0 13px 20px;
	width: 180px
}
</style>

			<div class="bnr_qnb" id="brnQuick">
				<a href="/shop/board/view.php?id=notice&amp;no=64" id="brnQuickObj">
					<img class="thumb"
					src="https://res.kurly.com/pc/service/main/1904/bnr_quick_20190403.png"
					alt="퀄리티있게 샛별배송">
				</a>
				<script>
    var brnQuickScript = (function(){
        var $target = $('#brnQuickObj'), $targetThumb = $('#brnQuickObj .thumb');
        // 시간체크
        function timeCheck(){
            var now = brnQuick.nowTime; // 호출 하는 js에서 변수선언되어 가져다 사용
            if( new Date('2020-12-31T11:00:00+09:00').getTime() <= now && now < new Date('2021-01-15T11:00:00+09:00').getTime() ){
              $target.attr('href', '/shop/event/kurlyEvent.php?htmid=event/2020/1231/newyearsday');
              $targetThumb.attr('src', 'https://res.kurly.com/pc/service/main/2012/bnr_quick.png');
              $targetThumb.attr('alt', '2021 설 선물');
            }else if(  new Date('2021-01-15T11:00:00+09:00').getTime() <= now && now <= new Date('2021-02-10T23:00:00+09:00').getTime() ){
              $target.attr('href', '/shop/event/kurlyEvent.php?htmid=event/2021/0115/newyearsday');
              $targetThumb.attr('src', 'https://res.kurly.com/pc/service/main/2101/bnr_quick.png');
              $targetThumb.attr('alt', '2021 설 선물');
            }
        }
        return {
            timeCheck : timeCheck
        }
    })();
    brnQuickScript.timeCheck();
</script>


			</div>
			<script>
    var brnQuick = {
        nowTime : '1613474380725',
        update : function(){
            $.ajax({
                url : campaginUrl + 'pc/service/bnr_quick.html'
            }).done(function(result){
                $('#brnQuick').html(result);
            });    
        }
    }
    brnQuick.update();
</script>
			<script src="/static/front/js/notice_view.js"></script>
			<div class="side_menu">
				<a href="/shop/main/html.php?htmid=event/kurly.htm&amp;name=lovers"
					class="link_menu ">등급별 혜택</a> <a
					href="/shop/board/list.php?id=recipe" class="link_menu ">레시피</a> <a
					href="/shop/goods/goods_review_best.php" class="link_menu ">베스트
					후기</a>
			</div>
			<div class="side_recent" style="display: none">
				<strong class="tit">최근 본 상품</strong>
				<div class="list_goods" data-height="209" style="height: 0px;">
					<ul class="list"></ul>
				</div>
				<button type="button" class="btn btn_up off">최근 본 상품 위로 올리기</button>
				<button type="button" class="btn btn_down off">최근 본 상품 아래로
					내리기</button>
			</div>
			<script>
/**
 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
 */
var getGoodsRecent = (function(){
    var i, len, getGoodsRecent, item, _nowTime = '1613474380725';

    _goodsRecent();
    function _goodsRecent(){
        if(localStorage.getItem('goodsRecent') === null){
            return false;
        }
        
        try{
            getGoodsRecent = JSON.parse(localStorage.getItem("goodsRecent"));
            len = getGoodsRecent.length;
            if(addDays(getGoodsRecent[len - 1].time, 1) < _nowTime){
                localStorage.removeItem('goodsRecent');
            }else{
                for(i = 0; i < len; i++){
                    item = '<li><a class="link_goods" href="/shop/goods/goods_view.php?goodsno=' + getGoodsRecent[i].no + '"><img src="' + getGoodsRecent[i].thumb + '" alt=""></a></li>';
                    $('.side_recent .list').append(item);
                }
                $('.side_recent').show();
            }
        } catch(e){
            console.log("JSON parse error from the Quick menu goods list!!!", e);
        }
    }

    function addDays(date, days){
        var result = new Date(date);
        result.setDate(result.getDate() + days);
        return result.getTime();
    }
    
    // return {
    // }
})();
</script>
		</div>
		<div class="layout-wrapper">
			<div class="xans-element- xans-myshop xans-myshop-couponserial ">
				<table width="100%" align="center" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td>
								<table width="100%">
									<tbody>
										<tr>
											<td>
												<table class="boardView" width="100%">
													<tbody>
														<tr>
															<th scope="row" style="border: none;">제목</th>
															<td>${dto.title}</td>
														</tr>
														<tr>
															<th scope="row">작성자</th>
															<td>${dto.name }</td>
														</tr>
														<tr class="etcArea">
															<td colspan="2">
																<ul>
																	<li class="date "><fmt:parseDate
																			value="${dto.writedate}" var="writedate"
																			pattern="yyyy-MM-dd" /> <strong class="th">작성일</strong>
																		<span class="td"><fmt:formatDate
																				value="${writedate}" pattern="yyyy-MM-dd" /></span></li>
																	<li class="hit "><strong class="th">조회수</strong> <span
																		class="td">${dto.read_cnt}</span></li>
																</ul>
															</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td align="right" class="eng" style="padding: 5px;"></td>
										</tr>
										<tr>
											<td style="padding: 10px;" height="200" valign="top"
												id="contents">
												<table width="100%" style="table-layout: fixed">
													<tbody>
														<tr>
															<td>${dto.content}</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td height="1" bgcolor="#f4f4f4"></td>
										</tr>
									</tbody>
								</table>
								<br>
								<table width="100%" style="table-layout: fixed" cellpadding="0"
									cellspacing="0">
									<tbody>
										<tr>
											<td align="center" style="padding-top: 10px;">
												<table width="100%">
													<tbody>
														<tr>
															<td align="right"><a href="/shop/notice"><span
																	class="bhs_button yb" style="float: none;">목록</span></a> <a
																href="/shop/notice_update?no=${dto.nno}"><span
																	class="bhs_button yb" style="float: none;">수정</span></a> <a
																href="/shop/notice_delete?no=${dto.nno}" id="delete"><span
																	class="bhs_button yb" style="float: none;">삭제</span></a></td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
								<div
									class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 ">
									<ul>
										<li class="prev "><strong>다음글</strong><a
											href="/board/free/read.html?no=27121&amp;board_no=1&amp;page="></a>
											<a href="/shop/notice_view?no=${dto.nno+1}">${dto1.next}</a>
										</li>
										<li class="next "><strong>이전글</strong><a
											href="/board/free/read.html?no=27121&amp;board_no=1&amp;page="></a>
											<a href="/shop/notice_view?no=${dto.nno-1}">${dto1.prev}</a>
										</li>
										<br>
									</ul>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<script>
// KM-1483 Amplitude
KurlyTracker.setScreenName('notice_detail');
</script>
		</div>
	</div>