$(function(){
	let ctno = $("#ctno").val();
	$(".ctno").val(ctno).prop("selected",true);
	initEdit();
	initEdit2();
})