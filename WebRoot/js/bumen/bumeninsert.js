
$(document).ready(
		function() {
			var PageContext = $("#PageContext").val();
			 var a=11;
			$.ajax({
				url : PageContext + "/selectroot.do", // 后台url
				data : { // 数据
					"aXm" : a,
					
				},
				type : "POST", // 类型，POST或者GET
				dataType : 'json', // 数据返回类型，可以是xml、json等
				success : function(data) {
					var PageContext = $("#PageContext").val();
					var id = data.aBumenid ;
					//alert(id);
					$.ajax({
								url : PageContext+"/bumenSelectid.do", // 后台url
								data : { // 数据
									"id" : id
								},
								type : "POST", // 类型，POST或者GET
								dataType : 'json', // 数据返回类型，可以是xml、json等
								success : function(data) { // 成功，回调函数
									//alert(data.bumenmingcheng);
									var cc = "";
									$.each(data, function(i, item) {
//										if(item.suoshubumenid==null){
											cc += '<input type="text" class="input-xlarge" id="suoshubumen" name="name" disabled="disabled" value="'+item.bumenmingcheng+'" />';
//										}
										
									});
									$("#suoshubumen").html(cc);
								},
								error : function(XMLHttpRequest, textStatus,
										errorThrown) { // 失败，回调函数
									// 状态码
									alert(XMLHttpRequest.status + "<br/>"
											+ XMLHttpRequest.readyState + "<br/>"
											+ textStatus);
								}
							});
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
					// 状态码
					alert(XMLHttpRequest.status + "<br/>" + XMLHttpRequest.readyState
							+ "<br/>" + textStatus);
					alert("刷新失败！！");
				}
			
		    });
			
		});

function insertbumen() {
	var PageContext = $("#PageContext").val();
	var bumenmingcheng = $("#county1 option:selected").text();
	//var suoshubumen = $("#suoshubumen").val();
	//alert(bumenmingcheng);
	
	$.ajax({
				url : PageContext+"/bumenInsert.do", // 后台url
				data : { // 数据
					"bumenmingcheng" : bumenmingcheng
				},
				type : "POST", // 类型，POST或者GET
				dataType : 'json', // 数据返回类型，可以是xml、json等
				success : function(data) { // 成功，回调函数
					
					if(data){
						alert("保存部门成功");
					}else{
						alert("保存部门失败");
					}
				
				},
				error : function(XMLHttpRequest, textStatus,
						errorThrown) { // 失败，回调函数
					// 状态码
					alert(XMLHttpRequest.status + "<br/>"
							+ XMLHttpRequest.readyState + "<br/>"
							+ textStatus);
				}
			});
	
	$("#user").val('');

}



