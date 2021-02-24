$(function(){
	$("#delete").click(function(){
		var con = confirm("정말로 삭제하시겠습니까?");
		if(con)
		{
			return true;
		}else
		{
			return false;
		}
	});
});