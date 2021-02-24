$(function(){
	$(".qna").click(function(){
		$(this).next().slideToggle().siblings('.answer').slideUp();
	});
		$(".delete").click(function(){
			var qnno = $("#td1").text();
			location.href='qnaDelete?qnno='+qnno;
			alert(qnno);
		});
		$(".update").click(function(){
			var qnno = $("#td1").text();
			location.href='qnaUpdate?qnno='+qnno;
		});
		
});