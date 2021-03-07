$(function(){
	$(".qna").click(function(){
		$(this).next().slideToggle().siblings('.answer').slideUp();
	});
	
	$(".update").on("click",function(){
		var obj = $(this).parents("tr").find("input").val()
		location.href="qnaUpdate?qnno="+obj;
	})
	
	$(".delete").on("click",function(){
		var obj = $(this).parents("tr").find("input").val()
		location.href="qnaDelete?qnno="+obj;
	})
});