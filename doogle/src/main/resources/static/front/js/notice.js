$(function(){
	$(".viewRow").click(function(){
		var NNo = $(this).find(".NNo").text();
		var NNo1 = $(this).find(".noRow").text();
		if(NNo==""){
			location.href="/shop/notice_view?no="+NNo1;
		}else{
			location.href="/shop/notice_view?no="+NNo;
		}
	});
});