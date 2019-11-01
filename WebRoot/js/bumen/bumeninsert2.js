var PageContext = $("#PageContext").val();
function bumenjibieChange() {
	var bumenjibie=$("#bumenjibie").val();
	if(bumenjibie==1){
		$("#zhanbumenname").html("");
		$("#xianbumenname").html("");
		
	}
	if(bumenjibie==2){
		alert("a");
		$("#zhanbumenname").html("");
		$("#xianbumenname").html("");
		pianbm();
	}
	if(bumenjibie==3){
		alert("b");
		$("#zhanbumenname").html("");
		$("#xianbumenname").html("");
		zhanbm();
	}
	
}

//为了搜索所有的片作为所属部门
function pianbm(){
	
	var suoshubumenid =0;
	$.ajax({
		
		url : PageContext + "/cbumenuserselect.do", // 后台url
		data : { // 数据
			"suoshubumenid" : suoshubumenid
		},
		type : "POST", // 类型，POST或者GET
		dataType : 'json', // 数据返回类型，可以是xml、json等
		success : function(data) { // 成功，回调函数
			 // alert(data);
			if(data == null || data == undefined){
				alert("搜索错误");
			}
			var cc = '<label class="control-label" for="planning">所属部门</label><div class="controls"><select style="width:160px" id="suo" >';
			$.each(data,function(i, item) {
								
								cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
							});
			cc+='</select></div>';
			$("#zhanbumenname").html(cc);
		
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
}
//为了搜索所有的片作为县级搜索
function zhanbm(){
	
	var suoshubumenid =0;
	$.ajax({
		
		url : PageContext + "/cbumenuserselect.do", // 后台url
		data : { // 数据
			"suoshubumenid" : suoshubumenid
		},
		type : "POST", // 类型，POST或者GET
		dataType : 'json', // 数据返回类型，可以是xml、json等
		success : function(data) { // 成功，回调函数
			 // alert(data);
			if(data == null || data == undefined){
				alert("搜索错误");
			}
			var cc = '<label class="control-label" for="planning">片级部门</label><div class="controls"><select style="width:160px" id="pianbumen" onchange="pianjiChange()">';
			$.each(data,function(i, item) {
								
								cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
							});
			cc+='</select></div>';
			$("#zhanbumenname").html(cc);
		
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
}
//站级所属部门
function pianjiChange(){
	$('#zjmc').html("");
	var PageContext = $("#PageContext").val();
	var suo1=$("#pianbumen").val();
	
	$.ajax({
		
		url : PageContext + "/cbumenuserselect.do", // 后台url
		data : { // 数据
			"suoshubumenid" : suo1
		},
		type : "POST", // 类型，POST或者GET
		dataType : 'json', // 数据返回类型，可以是xml、json等
		success : function(data) { // 成功，回调函数
			// alert(data.result);
			if(data==null){
				alert("搜索错误");
			}
			var cc = '<label class="control-label" for="planning">所属部门</label><div class="controls"><select style="width:160px" id="suo">';
			cc +='<option  value= >请选择站</option>';
			$.each(data,function(i, item) {
								
								cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
							});
			cc+='</select></div>';
			$("#xianbumenname").html(cc);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
}

function insertbumen() {
	var PageContext = $("#PageContext").val();
	var bumenmingcheng = $("#user").val();
	//alert(bumenmingcheng);
	var bumenjibie=$("#bumenjibie").val();
	var suoshubumenid=$("#suo").val();
	painadd(bumenmingcheng,suoshubumenid);
	//zxadd(bumenmingcheng,suoshubumenid)
	
	$("#zhanbumenname").html("");
	$("#xianbumenname").html("");
	$("#user").val('');
	$("#bumenjibie").val('1');

}

//增加片级部门
function painadd(bumenmingcheng,suoshubumenid) {
	
	$.ajax({
		url : PageContext+"/bumenInsert.do", // 后台url
		data : { // 数据
			"bumenmingcheng" : bumenmingcheng,"suoshubumenid":suoshubumenid
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
}


