$(function(){
	$(".qna").click(function(){
		$(this).next().slideToggle().siblings('.answer').slideUp();
	});
});