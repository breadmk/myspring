<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
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
.page_aticle .layout-pagination {
    font-size: 0
}

.page_aticle .layout-pagination a:hover {
    background-color: #f7f7f7
}

.page_aticle .layout-pagination a,.page_aticle .layout-pagination strong {
    font-weight: 700;
    font-size: 12px
}

.page_aticle .layout-pagination a {
    cursor: pointer
}

.page_aticle .layout-pagination-button:first-child {
    border-left: 0
}

.page_aticle .layout-pagination-first-page:first-child {
    border-left: 1px solid #ddd
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
.xans-board-write .boardWrite2 input[type=text].read_only {
    color: #949296
}

.input_txt th {
    padding: 10px 0
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
.xans-board-write .boardWrite2 input[type=text].read_only {
    color: #949296
}

.xans-board-write .prdSelect {
    overflow: hidden;
    margin: 20px 0;
    padding: 15px 20px;
    border: 5px solid #f4f4f4
}

.xans-board-write .prdThumb {
    float: left
}

.xans-board-write .prdInfo {
    float: left;
    width: 540px;
    padding: 0 0 0 17px
}

.xans-board-write .prdInfo h3 {
    margin: 17px 0 5px;
    font-size: 14px;
    color: #2e2e2e
}

.xans-board-write .prdInfo .price {
    font-size: 14px;
    font-weight: 700;
    color: #008bcc
}

.xans-board-write .prdInfo .button {
    margin: 19px 0 0;
    padding: 13px 0 0;
    border-top: 1px solid #f4f4f4
}

.xans-board-write .boardWrite {
    table-layout: fixed;
    border-top: 2px solid #6a3664;
    border-bottom: 1px solid #6a3664;
    line-height: 180%
}

.xans-board-write .boardWrite2 {
    table-layout: fixed;
    border-top: 2px solid #333;
    line-height: 180%
}

.xans-board-write table th {
    width: 110px;
    padding: 15px 0 15px 20px;
    background-color: #f7f5f8;
    border-bottom: 1px solid #f4f4f4;
    text-align: left;
    font-weight: 400;
    vertical-align: middle
}

.xans-board-write table td {
    width: auto;
    padding: 15px 0 15px 10px;
    height: 23px;
    border-top: 1px solid #f4f4f4;
    border-bottom: 1px solid #f4f4f4;
    vertical-align: middle;
    line-height: 20px
}

.xans-board-write table input[type=text],.xans-board-write table input[type=password] {
    height: 25px;
    padding: 3px
}

.xans-board-write table #subject {
    width: 630px
}

.xans-board-write table input[type=text],.xans-board-write table input[type=password],.xans-board-write table textarea {
    height: 30px;
    line-height: 25px;
    border: 1px solid #d9d9d9;
    color: #202020
}

.xans-board-write table select {
    padding: 6px 5px;
    border: 1px solid #d9d9d9;
    margin-bottom: 5px;
    color: #202020
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
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/static/front/js/qnaRegister.js"></script>
<div class="page_aticle aticle_type2">
<div class="page_section section_qna">
<div class="head_aticle">
<h2 class="tit">1:1 문의</h2>
</div>

<div class="xans-board-write">
<form name="fm" id="fm" method="post" action="/shop/qna_register_ok" enctype="multipart/form-data" onsubmit="return chkForm(this)" style="height: 100%;">
<input type="hidden" name="name" value="session">
<input type="hidden" name="mno" value="222">
<table id="table_after" class="boardWrite2" width="100%">
<colgroup><col width="14%" align="right">
</colgroup><tbody><tr>
<th class="input_txt">제목</th>
<td><select name="ctno" required="" fld_esssential="" label="질문유형" class="select">
<option value="">선택해주세요.</option>
<option value="01">배송지연/불만</option>
<option value="11">컬리패스 (무료배송)</option>
<option value="02">반품문의</option>
<option value="03">A/S문의</option>
<option value="06">환불문의</option>
<option value="07">주문결제문의</option>
<option value="08">회원정보문의</option>
<option value="04">취소문의</option>
<option value="05">교환문의</option>
<option value="09">상품정보문의</option>
<option value="10">기타문의</option>
</select><br>
<input type="text" name="title" style="width:100%" required="" fld_esssential="" label="제목" value="">
</td>
</tr>
<tr>
<th class="input_txt">주문번호</th>
<td>
<input type="text" name="ono" style="width:25%">
<input onclick="order_open()" type="button" class="bhs_button yb" value="주문조회" style="float:none; line-height:27px; width:100px;">
<div style="position:relative;z-index:1">
<iframe id="ifm_order" frameborder="0" scrolling="no" style="display:none;position:absolute;width:560px;height:380px;background-color:#fff;position:absolute;left:0;top:0;border:1px solid #000"></iframe>
</div>
</td>
</tr>
<tr>
<th class="input_txt">이메일</th>
<td>
<input type="text" name="email" size="26"  class="read_only">
<span class="noline smalle" style="padding-left:10px">
<input type="checkbox" id="idemail_yn">
<input type="hidden" name="email_yn" value="n" id="email">
<span style="font-size:8pt;">답변수신을 이메일로 받겠습니다.</span></span>
</td>
</tr>
<tr>
<th class="input_txt">문자메시지</th>
<td>
<input type="text" name="phone"  class="read_only">
<span class="noline smalle" style="padding-left:10px">
<input type="checkbox" id="idphono_yn">
<input type="hidden" name="phone_yn" value="n" id="phone">
<span style="font-size:8pt;">답변수신을 문자메시지로 받겠습니다.</span>
</span>
</td>
</tr>
<tr>
<th class="input_txt">내용</th>
<td class="edit_area" style="position: relative;">

<style>
                                #qnaNotice .qna_goods{display:none}
                            </style>
<div id="qnaNotice"><div class="inner_qnaNotice"><div class="notice_qna"><!--
1:1문의하기에 들어가는 class="qna_public"
상품문의하기에 들어가는 class="qna_goods"
-->
<strong class="tit qna_public">1:1 문의 작성 전 확인해주세요!</strong>
<strong class="tit qna_goods">상품문의 작성 전 확인해 주세요!</strong>

<dl class="list qna_public">
  <dd>현재 문의량이 많아 답변이 지연되고 있습니다. 문의 남겨 주시면 2일 이내 순차적으로 답변 드리겠습니다.</dd>
</dl>

<dl class="list qna_goods">
  <dd>
    <span>답변은 영업일 기준 2~3일 소요됩니다.</span>
    <span>해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</span>
    <span>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</span>
  </dd>
</dl>

<dl class="list qna_goods">
  <dt>제품</dt>
  <dd>
    <span>입고일: 품절 상품 입고 일이 확정된 경우, 섬네일에 기재되어 있습니다.(종 모양을 클릭하여, 재입고 알람 설정 가능)</span>
    <span>제품 상세정보: 영양성분 및 함량, 용량, 보관 및 취급 방법 등 제품 정보는 상세 이미지 또는 상세정보에서 확인 가능합니다.</span>
  </dd>
</dl>

<dl class="list qna_public">
  <dt>반품 / 환불</dt>
  <dd>
    <span>제품 하자 혹은 이상으로 반품 (환불)이 필요한 경우 사진과 함께 구체적인 내용을 남겨주세요.</span>
  </dd>
</dl>

<dl class="list" id="branchByVersion15">
  <dt>주문취소</dt>
  <dd class="old" style="display:none"><!-- 구버전 분기처리 -->
    <span>샛별 지역 : 배송일 전날 19시까지
            <br>
            택배 지역 : 배송일 전날 18시까지
            <br>
            고객행복센터(1644-1107)/ 1:1문의 게시판/ 카카오톡(마켓컬리) 으로 취소 요청 바랍니다.
        </span>
    <span>생산이 시작된 이후에는 취소가 불가능 한 점 고객님의 양해 부탁드립니다.</span>
    <span>일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.</span>
    <span>주문상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매 해주세요.</span>
    <span>비회원 주문건의 경우 1:1문의 게시판 접수가 불가하기에 고객행복센터(1644-1107), 카카오톡(마켓컬리) 로 취소 요청 부탁드립니다.</span>
  </dd>
  <dd class="new">
        <span>
            배송 단계별로 주문취소 방법이 상이합니다.
            <br>
            [입금확인] 단계 :  [마이컬리 &gt; 주문내역 상세페이지] 에서 직접 취소 가능
            <br>
            [입금확인] 이후 단계 : 고객행복센터로 문의
        </span>
    <br>
    <span>생산이 시작된 [상품 준비중] 이후에는 취소가 제한되는 점 고객님의 양해 부탁드립니다.</span>
    <span>비회원은 모바일 App 또는 모바일 웹사이트에서 [마이컬리 &gt; 비회원 주문 조회 페이지] 에서 취소가 가능합니다.</span>
    <span>일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.</span>
    <span>주문상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매 해주세요.</span>
  </dd>
</dl>

<dl class="list">
  <dt>배송</dt>
  <dd>
    <span>주문 완료 후 배송 방법(샛별 / 택배)은 변경이 불가능합니다.</span>
    <span>배송일 및 배송시간 지정은 불가능합니다. (예약배송 포함)</span>
    <p class="info">※ 전화번호, 이메일, 주소, 계좌번호 등의 상세 개인정보가 문의 내용에 저장되지 않도록 주의해 주시기 바랍니다.</p>
  </dd>
</dl>
</div></div></div>
<script>
                                var qnaNotice = new Vue({
                                    el: '#qnaNotice',
                                    data: {
                                        getData : null,
                                        layerOn : true
                                    },
                                    methods: {
                                        update:function(){
                                            var $self = this;
                                            $.ajax({
                                                type:'GET',
                                                url: campaginUrl + 'pc/notice/qna_info.html',
                                                datatype: 'html',
                                                async : true,
                                            }).done(function(result){
                                                $self.getData = result;
                                            });
                                        }
                                    }
                                });
                                $(document).ready(function(){
                                    qnaNotice.update();
                                });
                            </script>

<textarea name="content" style="width:100%;height:474px;" class="editing_area" required="" fld_esssential="" label="내용" id="summernote"></textarea>
<input type="hidden" name="fno" value="1">
</td>
</tr>
<tr>
<th class="input_txt">이미지</th>
<td>
<table width="95%" id="table" cellpadding="0" cellspacing="0" border="0" style="border:solid 1px #f4f4f4; border-collapse:collapse;">
<tbody><tr id="tr_0">
<td width="100%">
<input type="file" name="file" style="width:50%" class="linebg">
<a href="javascript:add()"><img src="../static/front/img/upload.jpg" align="absmiddle"></a>
</td>
</tr>
</tbody></table>
<table><tbody><tr><td height="2"></td></tr></tbody></table>
<div width="100%" style="padding:5px;" class="stxt">
- 파일은 최대 5개까지 업로드가 지원됩니다.<br>
</div>
</td>
</tr>
</tbody></table>

<table width="100%">
<tbody><tr>
<td align="right" style="padding-top:5px; border:none;" id="avoidDbl">
<input type="submit" class="bhs_button yb" value="저장" style="float:none;">
</td>
</tr>
</tbody></table>
</form>
</div>

</div>
</div>