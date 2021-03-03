$(function(){
	$(".qna").click(function(){
		$(this).next().slideToggle().siblings('.qna_answer').slideUp();
	});
	$("button[name=up]").click(function(){
		var qno = $(this).parent().parent().find(".td1").text();
		location.href="/admin/questionUpdate?qno="+qno;
	})
	
	$("button[name=del]").click(function(){
		var qno = $(this).parent().parent().find(".td1").text();
		location.href="/admin/questionDelete?qno="+qno;
	});
	
});

	