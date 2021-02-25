$(function(){
		alert("test");
		$('form').submit(function(event){
			var formData = {
				'name':$("input[name=name]").val(),
				'phone':$("input[name=phone]").val()
			};
			
			$.ajax({
				type : 'post',
				url : $('form').attr('action'),
				data : formData,
				dataType:'json',
			}).success(function(data){
				alert(data.name+','+'data.phone'+','+data.result);
			});
			event.preventDefault();
			alert("ww");
		});
});