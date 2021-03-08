$(function(){
	$(".answer").click(function(){
		
		let qqno = $(this).parents("tr").find(".qnno").text();
		location.href="/admin/quaAnswerWrite?no="+qqno;
	});
})


