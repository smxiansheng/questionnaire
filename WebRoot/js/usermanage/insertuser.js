$(document).ready(function() {
	var PageContext = $("#PageContext").val();
	 var a=11;
	$.ajax({
		url : PageContext + "/selectroot.do", // 后台url
		data : { // 数据
			"aXm" : a,
			
		},
		type : "POST", // 类型，POST或者GET
		dataType : 'json', // 数据返回类型，可以是xml、json等
		success : function(data) { // 成功，回调函数
			// alert(data.result);
			// alert(data.aXm);
			if (data.aRoot<=1) {
				var aa='<label class="control-label" for="user">用户级别</label><div class="controls"><select style="width:160px"id="dengji" onchange="jibieChange()"><option value= 1>超级管理员</option><option value= 2 >站级用户</option><option value= 3 >县级用户</option></select></div>';
				$("#jibie").html(aa);
				$('#pbmmc').html("");
				$('#zjmc').html("");
				$('#xjmc').html("");
				
			}else{
				var suoshubumenid =123456789;
				$.ajax({
					
					url : PageContext + "/cbumenuserselect.do", // 后台url
					data : { // 数据
						"suoshubumenid" : suoshubumenid
					},
					type : "POST", // 类型，POST或者GET
					dataType : 'json', // 数据返回类型，可以是xml、json等
					success : function(data) { // 成功，回调函数
						// alert(data.result);
						if(data==null){
							alert("搜索错误");
						}
						if(data.length<=0){
							alert("此站下未建县级部门，请先建县级部门");
						}
						var cc = '<label class="control-label" for="planning">县级名称</label><div class="controls"><select style="width:160px" id="suo">';
						$.each(data,function(i, item) {
											
											cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
										});
						cc+='</select></div>';
						var aa='<input id="dengji" type="hidden" value=3 />';
						$("#pbmmc").html(cc);
						$("#jibie").html(aa);
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
						// 状态码
						alert(XMLHttpRequest.status + "<br/>"
								+ XMLHttpRequest.readyState + "<br/>" + textStatus);
					}
				});
			}
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>" + XMLHttpRequest.readyState
					+ "<br/>" + textStatus);
			alert("刷新失败！！");
		}
	
	
	
    });
});
// 级别下拉框
function jibieChange() {
	var PageContext = $("#PageContext").val();
	var root=$("#dengji").val();
	if(root==1||root ==9999 ){
		$('#pbmmc').html("");
		$('#zjmc').html("");
		$('#xjmc').html("");
	}
	if(root==2){
		$('#pbmmc').html("");
		$('#zjmc').html("");
		$('#xjmc').html("");
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
				if(data.length<=0){
					alert("未建片级部门，请先建片级部门");
				}
					var cc = '<label class="control-label" for="planning">片级名称</label><div class="controls"><select style="width:160px" id="pianjisou" onchange="pianjiChange()">';
					$.each(data,function(i, item) {
						
										cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
									});
					cc+='</select></div>';
					$("#pbmmc").html(cc);
				
			
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + "<br/>"
						+ XMLHttpRequest.readyState + "<br/>" + textStatus);
			}
		});
	}
	if(root==3){
		$('#pbmmc').html("");
		$('#zjmc').html("");
		$('#xjmc').html("");
		var PageContext = $("#PageContext").val();
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
				if(data.length<=0){
					alert("未建片级部门，请先建片级部门");
				}
				
				var cc = '<label class="control-label" for="planning">片级名称</label><div class="controls"><select style="width:160px" id="pianjisou" onchange="xpianjiChange()" >';
				$.each(data,function(i, item) {
					
									cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
								});
				cc+='</select></div>';
				$("#pbmmc").html(cc);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + "<br/>"
						+ XMLHttpRequest.readyState + "<br/>" + textStatus);
			}
		});
	}
	
}
// 片级改变搜索出下面的所有的站存最终存的站级
function pianjiChange(){
	$('#zjmc').html("");
	var PageContext = $("#PageContext").val();
	var suo1=$("#pianjisou").val();
	//alert(suo1);
	//alert(suo1);
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
			if(data.length<=0){
				alert("此片下未建站级部门，请先建站级部门");
			}
			var cc = '<label class="control-label" for="planning">站级名称</label><div class="controls"><select style="width:160px" id="suo">';
			$.each(data,function(i, item) {
				
								
								cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
							});
			cc+='</select></div>';
			$("#zjmc").html(cc);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
}
//片改变存放所有的站为了下面县做准备
function xpianjiChange(){
	$('#zjmc').html("");
	var PageContext = $("#PageContext").val();
	var suo1=$("#pianjisou").val();
	//alert(suo1);
	//alert(suo1);
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
			if(data.length<=0){
				alert("此片下未建站级部门，请先建站级部门");
			}
			var cc = '<label class="control-label" for="planning">站级名称</label><div class="controls"><select style="width:160px" id="zhanji" onchange=zhanChange()>';
			$.each(data,function(i, item) {
				
								cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
							});
			cc+='</select></div>';
			$("#zjmc").html(cc);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
}

//站级改变搜索出所有下面的县
function zhanChange() {
	$('#xjmc').html("");
	var PageContext = $("#PageContext").val();
	var suo1=$("#zhanji").val();
	//alert(suo1);
	//alert(suo1);
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
			if(data.length<=0){
				alert("此站下未建县级部门，请先建县级部门");
			}
			var cc = '<label class="control-label" for="planning">县级名称</label><div class="controls"><select style="width:160px" id="suo">';
			$.each(data,function(i, item) {
				
								cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
							});
			cc+='</select></div>';
			$("#xjmc").html(cc);
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
}

	function insertuser() {
		
		var PageContext = $("#PageContext").val();
		var username = $("#xname").val();
		var xingming=$("#xingming").val();// 姓名
		//alert(xingming);
		var email = $("#email").val();
		var phone = $("#phone").val();
		var province=$("#prov option:selected").text();// 省
		var city=$("#city option:selected").text();
		var county=$("#county option:selected").text();
		var root=$("#dengji").val();
		var suo1=$("#suo").val();
//		var provinceid=$("#prov").val();// 省
//		alert(provinceid);
//		var cityid=$("#city").val();
//		var countyid=$("#county").val();
		//alert(county);
		//alert(cityid);
		
		//alert(suo1);
		if(username==""||xingming==""||phone==""){
			alert("必填项不能为空！");
		}else{
			$.ajax({
				url : PageContext + "/usersInsert.do", // 后台url
				data : { // 数据
					"aXm" : username,
					"aRealname":xingming,
					"aLxfs" : phone,
					"aEmail" : email,
					"aProvince":province,
					"aCity":city,
					"aCountry":county,
					"aRoot" : root,
					"aBumenid" : suo1,
					/*"aCityid":cityid,
					"aCountryid":countyid,
					"aProvinceid":provinceid,*/
				},
				type : "POST", // 类型，POST或者GET
				dataType : 'json', // 数据返回类型，可以是xml、json等
				success : function(data) { // 成功，回调函数
					// alert(data.result);
					// alert(data);
					if (data) {
						alert("新建用户成功");
					} else {
						alert("新建用户失败");
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
					// 状态码
					alert(XMLHttpRequest.status + "<br/>" + XMLHttpRequest.readyState
							+ "<br/>" + textStatus);
					alert("新建用户失败！！");
				}
			});
			// $("#suo").val('');dengji
			$("#xingming").val('')
			$("#dengji").val('1')
			$('#pbmmc').html("");
			$('#zjmc').html("");
			$("#xname").val('');
			$("#email").val('');
			$("#phone").val('');
			$("#xjmc").html('');
		}
		
		
	}