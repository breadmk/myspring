/**
 * 	게시판 댓글 처리를 위한 객체 선언
 */
 // 댓글 js 모듈이 시작되고 있다.
 //console.log("Reply Module");

//alert("댓글 모듈 진행.. 시작");
 
 var replyService = (
 
 	function(){
 	//댓글 쓰기 함수
 	// reply 는 JSON객체를 문자열로 만들어서 넘겨야 한다.
 		function add(reply,callback){
 			//alert("댓글 쓰기 처리 진행");
 			//server에 데이터를 넘겨서 처리 - 브라우저의 URL을 바꾸지 않는다. AJAX
			$.ajax({
				url:'/ajax/replyWrite.do',
				type:'post',
				// 서버로 보내지는 데이터
				data:reply,
				// 보내지는 데이터의 형식 - 헤더 셋팅
				contentType:"application/json; charset=utf-8",
				// 처리가 성공했을때 실행되는 함수
				success: function(result,status,xhr){
					//성공하면 callback 함수가 있는 경우 실행한다.
					if(callback){
					    callback();
					}
					//alert(result);
					//alert(status);
				},
				// 처리가 실패했을때 실행되는 함수
				error : function(xhr,status,er){
					//alert(status);
					//alert(er);
				}
			});
 		}
 		
	 	//댓글 리스트 함수
 		function list(pageInfo,callback){
 			//alert("댓글 리스르 처리 진행"+JSON.stringify(pageInfo));
 			//server에 데이터를 넘겨서 처리 - 브라우저의 URL을 바꾸지 않는다. AJAX
			$.ajax({
				url:'/ajax/replyList.do',
				type:'get',
				// 서버로 보내지는 데이터
				data:pageInfo,
				// 보내지는 데이터의 형식 - 헤더 셋팅
				contentType:"application/json; charset=utf-8",
				// 받는 데이터 형식 - json
				dataType:"json",
				// 처리가 성공했을때 실행되는 함수
				success: function(result,status,xhr){
				//샘플 데이터 찍어보기
				//alert(result[0]);
				//alert(JSON.stringify(result));
				
				// 데이터가 많으므로 반복문 처리를 한다.
				$(result).each(function(idx,vo){
				
				});
					//성공하면 callback 함수가 있는 경우 실행한다.
					if(callback){
					    callback(result);
					}
					//alert(result);
					//alert(status);
				},
				// 처리가 실패했을때 실행되는 함수
				error : function(xhr,status,er){
					alert(status);
					alert(er);
				}
			});
 		}
 		
 		//댓글 수정 함수 
		// reply 는 JSON객체를 문자열로 만들어서 넘겨야 한다.
 		// reply에는 댓글의 페이지가 포함되어 있어야 한다. reply.page
 		function update(reply,callback){
 			alert("댓글 수정 처리 진행"+reply);
 			//server에 데이터를 넘겨서 처리 - 브라우저의 URL을 바꾸지 않는다. AJAX
			$.ajax({
				url:'/ajax/replyUpdate.do',
				type:'patch',
				// 서버로 보내지는 데이터
				data:reply,
				// 보내지는 데이터의 형식 - 헤더 셋팅
				contentType:"application/json; charset=utf-8",
				// 처리가 성공했을때 실행되는 함수
				success: function(result,status,xhr){
					//성공하면 callback 함수가 있는 경우 실행한다.
					if(callback){
					    callback(reply.page);
					}
					//alert(result);
					//alert(status);
				},
				// 처리가 실패했을때 실행되는 함수
				error : function(xhr,status,er){
					//alert(status);
					//alert(er);
				}
			});
 		}
 		
 		//댓글 삭제 함수 - delete()는 예약어라 재사용시 오류 표시
 		function replyDelete(rno,callback){
 			//alert("댓글 수정 처리 진행");
 			//server에 데이터를 넘겨서 처리 - 브라우저의 URL을 바꾸지 않는다. AJAX
			$.ajax({
				url:'/ajax/replyDelete.do?rno='+rno,
				type:'delete',
				// 서버로 보내지는 데이터
				success: function(result,status,xhr){
					//성공하면 callback 함수가 있는 경우 실행한다.
					if(callback){
					    callback();
					}
					//alert(result);
					//alert(status);
				},
				// 처리가 실패했을때 실행되는 함수
				error : function(xhr,status,er){
					alert(status);
					alert(er);
				}
			});
 		}
 		
 		//replyService.add(reply,callback)
 		return {
 		list:list,  //key:value
 		add:add,
 		update:update,
 		delete:replyDelete
 		}		
 	}
 )();
 
 