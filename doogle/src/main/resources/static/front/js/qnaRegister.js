$(function(){
	$("#idemail_yn").change(function(){
		if($("#idemail_yn").is(":checked")){
			$("#email").val("y");
		}else{
			$("#email").val("n");
		}
	});
	
	$("#idphono_yn").change(function(){
		if($("#idphono_yn").is(":checked")){
			$("#phone").val("y");
		}else{
			$("#phone").val("n");
		}
	});
initEdit();
});