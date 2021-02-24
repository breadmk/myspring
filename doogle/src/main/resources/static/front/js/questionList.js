$(function(){
	$(".qna").click(function(){
		$(this).next().slideToggle().siblings('.qna_answer').slideUp();
	});
		$(".delete").click(function(){
			var qno = $("#td1").text();
			location.href='questionDelete?qno='+qno;
		});
		$(".update").click(function(){
			var qno = $("#td1").text();
			location.href='questionUpdate?qno='+qno;
		});
		
});

	