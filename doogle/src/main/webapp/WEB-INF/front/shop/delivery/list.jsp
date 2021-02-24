<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
.page_aticle {
    width: 1050px;
    height: 800px;
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

.page_aticle .tbl th,.page_aticle .tbl td {
    word-break: break-all;
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
.page_section .user_wrap .order_agree {
    padding-bottom: 4px
}

.page_section .user_wrap .order_agree .txt_checkbox {
    font-size: 12px
}

.page_section .user_wrap .order_agree .check_all .txt_checkbox {
    font-size: 14px
}

.page_section .user_wrap .order_agree .check_view {
    position: relative;
    margin-left: 20px
}

.page_section .user_wrap .order_agree .txt_checkbox .txt_essential {
    color: #949296
}

.page_section .user_wrap .order_agree .link_agree {
    top: 5px;
    color: #5f0080
}

.page_section .user_wrap .order_agree .order_info {
    padding-left: 40px;
    color: #666
}

.page_section .user_wrap .reg_bulkorder .txt_info_email {
    font-size: 12px;
    color: #666
}
.page_aticle.aticle_type2 .page_section {
    float: right;
    width: 820px
}

.aticle_old {
    width: 100%
}

.aticle_old .page_section {
    min-width: 1050px;
    margin: 0 auto;
    background-color: #f7f7f7
}
#addrList{
line-height: 1;
color: #4c4c4c;
font-size: 12px;
word-break: break-all;
border-collapse: collapse;
border-spacing: 0;
box-sizing: border-box;
margin: 0;
padding: 0;
font-family: noto sans;
font-weight: 400;
letter-spacing: 0;
}
#addrList tr{
	height:100px;
	text-align: left;
}
#address{
border-collapse: collapse;
border-spacing: 0;
box-sizing: border-box;
margin: 0;
font-family: noto sans;
font-weight: 400;
word-break: break-all;
padding: 20px 10px 20px 20px;
padding-left: 2px;
border-top: 1px solid #333;
height: 90px;
font-size: 14px;
color: #333;
line-height: 22px;
letter-spacing: -0.4px;
vertical-align: middle;
}
.badge_default{
	text-align: left;
}
.delivery1{
border-collapse: collapse;
border-spacing: 0;
word-break: break-all;
font-size: 14px;
line-height: 22px;
text-align: center;
box-sizing: border-box;
margin: 0;
padding: 0;
font-family: noto sans;
font-weight: 400;
letter-spacing: 0;
color: #5f0080;
}

.address{
border-collapse: collapse;
border-spacing: 0;
box-sizing: border-box;
margin: 0;
font-family: noto sans;"ㅁ"
font-weight: 400;
padding: 0;
font-size: 16px;
color: #333;
line-height: 24px;
letter-spacing: -0.3px;
text-align: left;
word-break: break-all;
}
.ico2{
border-collapse: collapse;
border-spacing: 0;
word-break: break-all;
box-sizing: border-box;
padding: 0;
font: inherit;
margin: 0;
overflow: visible;
border-radius: 0;
text-transform: none;
cursor: pointer;
color: #4c4c4c;
max-width: 100%;
outline: none;
font-family: noto sans;
font-weight: 400;
letter-spacing: 0;
width: 24px;
height: 24px;
border: 0 none;
background: url(https://res.kurly.com/mobile/ico/2006/ico_modify.png) no-repeat 50% 50%;
font-size: 0;
line-height: 0;
}
.new_address{
	float:right;
}
.cho{
word-break: break-all;
box-sizing: border-box;
padding: 0;
font: inherit;
margin: 0;
overflow: visible;
border-radius: 0;
text-transform: none;
cursor: pointer;
max-width: 100%;
outline: none;
font-family: noto sans;
position: absolute;
right: 3px;
bottom: 7px;
border: 0 none;
background-color: #fff;
font-weight: 700;
font-size: 16px;
color: #333;
line-height: 24px;
letter-spacing: -0.5px;
text-align: right;

}
#bb{
width:800px;
margin: auto;
text-align: center;
	}
</style>
<div class="page_aticle aticle_type2">
<div id="" class="page_section section_destination">
<div class="head_aticle">
<h2 class="tit">배송지 관리 <span id="addrListInfo" class="tit_sub">배송지에 따라 상품 정보가 달라질 수 있습니다.</span></h2>
<div class="new_address">
<button type="button" class="btn" id="newAddressAdd" onclick="jusoPopup()">
새 배송지 추가
</button>
</div>
</div>
<span class="destination_add screen_out"></span>
<div id="tblParent" class="type_select">
<table class="tbl tbl_type1">
<thead>
<tr>
<th class="tit_select">선택</th>
<th class="tit_address">주소</th>
<th class="tit_receive">받으실 분</th>
<th class="tit_phone">연락처</th>
<th class="tit_delivery">배송유형</th>
<th class="tit_modify">수정</th>
</tr>
</thead>
<tbody id="addrList"><tr><td class="select type_radio"><label class="skin_checkbox"><input type="radio" name="addrNo" data-delivery-type="direct" value="7872732" checked=""><span class="ico1"></span><span class="screen_out">선택하기</span></label></td>
<td class="address">
<span class="badge_default">기본 배송지
</span>
<p class="addr">서울 구로구 중앙로15길 132-17 (삼익1단지아파트) 102동 1601호</p>
</td>
<td class="name">
</td>
<td class="phone"></td>
<td><span class="delivery1">샛별배송</span>
</td><td><button type="button" class="ico2" data-addr-no="7872732" data-addr-type="D" data-is-current-addr="true">수정하기</button></td></tr></tbody>
</table>

</div>
</div>
</div>
