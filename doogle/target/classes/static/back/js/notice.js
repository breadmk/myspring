$(function(){
	$(".viewRow").click(function(){
		let nno = $(this).find(".nnum").val();
		location.href = "/admin/notice_view?no="+nno;
	});
	delete_ok();
});

function delete_ok(){
	$(".delete").click(function(){
		var con = confirm("정말로 삭제하시겠습니까?");
		if(con)
		{
			return true;
		}else
		{
			return false;
		}
	});
}