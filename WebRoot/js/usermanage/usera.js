var PageContext = $("#PageContext").val();


//修改-----参数：userid是要修改的用户的id
function xiugai(userid) {
	
	var PageContext = $("#PageContext").val();
	document.getElementById("xiugai").style.display = "inline"; // 修改表显示
	document.getElementById("part").style.display = "none";// 主要内容隐藏

	$.ajax({
		url : PageContext + "/usersSelectid.do", // 后台url
		data : { // 数据
			"a_dcrid" : userid
		},
		type : "POST", // 类型，POST或者GET
		dataType : 'json', // 数据返回类型，可以是xml、json等
		success : function(data) { // 成功，回调函数
			   
			$.each(data, function(i, items) {
				//alert(items.aProvince);
				//alert(items.aCity);
				//alert(items.aCountry);
				addressInit('prov', 'city', 'county',items.aProvince,items.aCity,items.aCountry); 
				$("#aid").val(items.aDcrid);
				$("#xingming").val(items.aRealname);//姓名
				$("#email").val(items.aEmail);
				$("#phone").val(items.aLxfs);
				//-----------获取当前登录用户的权限------------
				$.ajax({
						url : PageContext + "/selectroot.do", // 后台url
						data : {},
						type : "POST", // 类型，POST或者GET
						dataType : 'json', // 数据返回类型，可以是xml、json等
						success : function(data) { // 成功，回调函数
							
							
						
							
							
							//表示当前用户是----超级管理员
							if (data.aRoot==1) {
								
								//拼接用户级别
								var jibieHtml='<label class="control-label" for="user">用户级别</label>'+
								'<div class="controls">'+
								'<select style="width:160px"id="dengji" onchange="jibieChange()">'+
								'<option value=1>超级管理员</option>'+
								'<option value=2>站级用户</option>'+
								'<option value=3>县级用户</option>'+
								'</select></div>';
								
								$("#jibie").html(jibieHtml);
								
								$("#dengji").val(items.aRoot);//权限--要修改的用户的权限
								
								/** -----------------------
								$('#bmmc').html("");
								$('#xjmc').html("");
								*/
						
								//因为被修改的用户是站级用户，显示所有站名称对应的下拉列表框
								if(items.aRoot==2){
									//来获取当前站用户的片id
									getZhanByXian({
                                		callback:function(pianId){
                                			//2.获得所有站级部门（并默认）
                                			getAllPian(pianId);
                                			
                                			//3.根据站id获得，该站下的所有县
                                			getZhan(pianId,items.aBumenid);
                                		}
                                	},items.aBumenid);
									
								}	
								//如果被修改的用户是县级用户，显示所有站名称 & 所有县名称，同时要默认上站名称，和县名称
                                if(items.aRoot==3){
                                	
                                	//items.aBumenid===县级部门id
                                	
                                	//1.获取本县的所属部门---站级部门id
                                	getZhanByXian({
                                		callback:function(zhanId,zhanSuoId){
                                			getZhanByXian({
                                        		callback:function(pianId,painSuoId){
                                        			//2.获得所有站级部门（并默认）
                                        			getAllPian(pianId);
                                        			
                                       			//3.根据片id获得，该片下的所有站
                                        			getZhan(pianId,zhanId);

                                        		}
                                        	},zhanId);
                                			//4.根据站id获得，改站下的所有县
                                			getXian(zhanId,items.aBumenid);
                                		}
                                	},items.aBumenid);
                                	
                                	
                                	/*getZhanByXian({
                                		callback:function(zhanId){
                                			//2.
                                			getAllZhan(zhanId);
                                		}
                                	},items.aBumenid);*/
                                	
							}
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
										var cc = '<label class="control-label" for="planning">站级名称</label><div class="controls"><select style="width:160px" id="zhanSelectId">';
										$.each(data,function(i, item) {
															
															cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
														});
										cc+='</select></div>';
										var aa='<input id="dengji" type="hidden" value=3 />';
										$("#suo").val(items.aBumenid);
										$("#bmmc").html(cc);
										$("#jibie").html(aa);
									},
									error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
										// 状态码
										alert(XMLHttpRequest.status + "<br/>"
												+ XMLHttpRequest.readyState + "<br/>" + textStatus);
									}
								});
							}
							
                          
						
					
					
				    
				 
	

				//--------------------------------
				
			},   error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
				// 状态码
				alert("错误提示："+XMLHttpRequest.status + " " + 
						XMLHttpRequest.readyState
						+ " " + textStatus);
				alert("刷新失败！！");
			}
		});
	//-------------------------------------------
			});//each结尾
	
		}//sucess结果
		,   error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert("错误提示："+XMLHttpRequest.status + " " + 
					XMLHttpRequest.readyState
					+ " " + textStatus);
			alert("刷新失败！！");
		}
	});
	}
	//-----------------------------------end



//获取当前修改县级用户来查站级用户id,参数ids为县级id
function getZhanByXian(p,ids){
	
	$.ajax({
		
		url : PageContext + "/cbumenubyfatherid.do", // 后台url
		data : { // 数据
			"id" : ids
		},
		type : "POST", // 类型，POST或者GET
		dataType : 'json', // 数据返回类型，可以是xml、json等
		success : function(data) { // 成功，回调函数
			 
			
			var callback = p?p.callback:null; // 获取参数对象中的回调方法
			  if($.isFunction(p.callback)){ // 如果有回调方法
			    callback(data.id,data.suoshubumenid); // 返回一个计算后的数据，方便回调方法使用它
			  }
			  
			  
		
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			return '';
			// 状态码
			//alert(XMLHttpRequest.status + "<br/>"
			//		+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
}


//获取所有站名称，参数：ids，被修改的站用户的默认所属部门id
function getAllPian(ids){
	
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
			//=============================
			var cc = '<label class="control-label" for="planning">片级名称</label><div class="controls"><select style="width:160px" id="zhanSelectId" onchange="zhanjiChange()">';
			cc +='<option  value="1" >请选择站</option>'; 
			$.each(data,function(i, item) {
				if(item.id==ids){
					cc += '<option selected="selected" value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
				}else{
					cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
				}
					
			});
			cc+='</select></div>';
			
		
			
			//$("#suo").val(ids);
			$("#bmmc").html(cc);
		
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
}


//获取当前站级用户来加上站级下拉框
function getZhan(suo1,idss) {
	var PageContext = $("#PageContext").val();
	//var suo1=$("#suo").val();
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
			var cc = '<label class="control-label" for="planning">站级名称</label><div class="controls"><select style="width:160px" id="suo">';
			cc +='<option  value="1" >请选择站</option>';
			$.each(data,function(i, item) {
				if(item.id==idss){
					cc += '<option selected="selected" value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
				}else{
					cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
				}
							//	cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
							});
			cc+='</select></div>';
			$("#zbmmc").html(cc);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
	
	
	
}




//获取当前县级用户来加上县级下拉框
function getXian(suo1,idss) {
	var PageContext = $("#PageContext").val();
	//var suo1=$("#suo").val();
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
			var cc = '<label class="control-label" for="planning">县级名称</label><div class="controls"><select style="width:160px" id="suo">';
			cc +='<option  value="1" >请选择县</option>';
			$.each(data,function(i, item) {
				if(item.id==idss){
					cc += '<option selected="selected" value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
				}else{
					cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
				}
							//	cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
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






















//----------选择级别事件：---------------------
function jibieChange() {
	var PageContext = $("#PageContext").val();
	var root=$("#dengji").val();
	if(root==1||root ==9999 ){
		$('#bmmc').html("");
		$('#xjmc').html("");
		$("#zbmmc").html("");
	}
	if(root==2){
		$('#bmmc').html("");
		$('#xjmc').html("");
		$("#zbmmc").html("");
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
				var cc = '<label class="control-label" for="planning">片级名称</label><div class="controls"><select style="width:160px" id="pianSelectId" onchange="painChange1()">';
				cc +='<option  value="1" >请选择片</option>'; 
				$.each(data,function(i, item) {
									
									cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
								});
				cc+='</select></div>';
				$("#bmmc").html(cc);
			
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + "<br/>"
						+ XMLHttpRequest.readyState + "<br/>" + textStatus);
			}
		});
	}
	if(root==3){
		$('#bmmc').html("");
		$('#xjmc').html("");
		$("#zbmmc").html("");
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
				if(data == null || data == undefined){
					alert("搜索错误");
				}
				var cc = '<label class="control-label" for="planning">片级名称</label><div class="controls"><select style="width:160px" id="pianSelectId" onchange="painChange2()" >';
				cc +='<option  value="1" >请选择片</option>';
				$.each(data,function(i, item) {
									
									cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
								});
				cc+='</select></div>';
				
				$("#bmmc").html(cc);
			
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + "<br/>"
						+ XMLHttpRequest.readyState + "<br/>" + textStatus);
			}
		});
	}
	
}
//片级改变1
function painChange1() {
	var suoshubumenid=$("#pianSelectId").val();
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
			var cc = '<label class="control-label" for="planning">站级名称</label><div class="controls"><select style="width:160px" id="zhanSelectId"  >';
			cc +='<option  value="1" >请选择站</option>';
			$.each(data,function(i, item) {
								
								cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
							});
			cc+='</select></div>';
			$("#zbmmc").html(cc);
		
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
	
}

//片级改变2下一级有函数
function painChange2() {
	var suoshubumenid=$("#pianSelectId").val();
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
			var cc = '<label class="control-label" for="planning">站级名称</label><div class="controls"><select style="width:160px" id="zhanSelectId" onchange="zhanjiChange()" >';
			cc +='<option  value="1" >请选择站</option>';
			$.each(data,function(i, item) {
								
								cc += '<option  value=' + item.id + '>'+ item.bumenmingcheng + '</option>';
							});
			cc+='</select></div>';
			
			$("#zbmmc").html(cc);
		
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		}
	});
	
}


// 站级改变
function zhanjiChange(){
	//alert("aaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	$('#xjmc').html("");
	var PageContext = $("#PageContext").val();
	var suo1=$("#zhanSelectId").val();
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
			var cc = '<label class="control-label" for="planning">县级名称</label><div class="controls"><select style="width:160px" id="suo">';
			cc +='<option  value="1" >请选择县</option>';
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


//------------------------------------------



// 修改信息
function queding() {// 点击修改表的确定 将修改表隐藏，主要界面显示
	var realname = $("#xingming").val();
	var email = $("#email").val();
	var lxfs=$("#phone").val();
//	var provinceid=$("#prov").val();// 省
//	var cityid=$("#city").val();
//	var countyid=$("#county").val();
	var province=$("#prov option:selected").text();// 省
	var city=$("#city option:selected").text();
	var county=$("#county option:selected").text();
	var root=$("#dengji").val();
	var xian=$("#suo").val();
	var zhan=$("#zhanSelectId").val();
	var suo1=null;
	if(xian==""||xian=="1"||xian==null){
		suo1=zhan;
	}else{
		suo1=xian;
	}
	var aids=$("#aid").val();
	//alert(PageContext);
	$.ajax({
		url : PageContext + "/usersUpdata.do", // 后台url
		data : { // 数据
			"aDcrid":aids,
			"aRealname":realname,
			"aLxfs" : lxfs,
			"aEmail" : email,
			"aProvince":province,
			"aCity":city,
			"aCountry":county,
			"aRoot" : root,
			"aBumenid" : suo1,
//			"aCityid":cityid,
//			"aCountryid":countyid,
//			"aProvinceid":provinceid
		},
		type : "POST", // 类型，POST或者GET
		dataType : 'json', // 数据返回类型，可以是xml、json等
		success : function(data) { // 成功，回调函数
			// alert(data.result);
			// alert(data);
			if (data) {
				alert("更改用户成功");
			} else {
				alert("更改用户失败");
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>" + XMLHttpRequest.readyState
					+ "<br/>" + textStatus);
		}
	});

	document.getElementById("xiugai").style.display = "none"; //
	document.getElementById("part").style.display = "inline";
	$("tbody tr").remove();

	var username = "";
	$
			.ajax({
				url : PageContext + "/usersSelect.do", // 后台url
				data : { // 数据
					"aXm" : username
				},
				type : "POST", // 类型，POST或者GET
				dataType : 'json', // 数据返回类型，可以是xml、json等
				success : function(data) { // 成功，回调函数
					appendUserHtml(data);
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
					// 状态码
					alert(XMLHttpRequest.status + "<br/>"
							+ XMLHttpRequest.readyState + "<br/>" + textStatus);
				}
			});

}

$(document)
		.ready(
				function() {
					var username = "";
					$
							.ajax({
								url : PageContext + "/usersSelect.do", // 后台url
								data : { // 数据
									"aXm" : username
								},
								type : "POST", // 类型，POST或者GET
								dataType : 'json', // 数据返回类型，可以是xml、json等
								success : function(data) { // 成功，回调函数
										appendUserHtml(data);
								},
								error : function(XMLHttpRequest, textStatus,
										errorThrown) { // 失败，回调函数
									// 状态码
									alert(XMLHttpRequest.status + "<br/>"
											+ XMLHttpRequest.readyState
											+ "<br/>" + textStatus);
								}
							});
				});
		

// 搜索按钮的方法
function searchUsers() {
	var username = $("#nameid").val();
   
	$("tbody tr").remove();

	$
			.ajax({
				url : PageContext + "/usersSelect.do", // 后台url
				data : { // 数据
					"aXm" : username
				},
				type : "POST", // 类型，POST或者GET
				dataType : 'json', // 数据返回类型，可以是xml、json等
				success : function(data) { // 成功，回调函数
					
										appendUserHtml(data);
							
			
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
					// 状态码
					alert(XMLHttpRequest.status + "<br/>"
							+ XMLHttpRequest.readyState + "<br/>" + textStatus);
				}
			});
}

// 删除用户 added by thomas 2018-6-29
function deletetr(dcrId,aXm) {

	if(aXm=="admin"){
		alert('超级用户不允许删除！');
		return false;
	}
	

	// <td>下标从0开始
	$.ajax({
		url : PageContext + "/usersDelect.do", // 后台url
		data : { // 数据
			"aDcrid" : dcrId
		},
		type : "POST", // 类型，POST或者GET
		dataType : 'json', // 数据返回类型，可以是xml、json等
		success : function(data) { // 成功，回调函数
		
			
			if (data) {
				alert("删除用户成功");
				var username = "";
				$
						.ajax({
							url : PageContext + "/usersSelect.do", // 后台url
							data : { // 数据
								"aXm" : username
							},
							type : "POST", // 类型，POST或者GET
							dataType : 'json', // 数据返回类型，可以是xml、json等
							success : function(data) { // 成功，回调函数
								// alert(data.result);
								if(data==null){
									alert("搜索错误");
									return;
								}
							    appendUserHtml(data);
											
							},
							error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
								// 状态码
								alert("删除用户失败："+XMLHttpRequest.status + " "
										+ XMLHttpRequest.readyState + " " + textStatus);
							}
						});
			} else {
				alert("删除用户失败");
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>" + XMLHttpRequest.readyState
					+ "<br/>" + textStatus);
		}
	});
	
	
}
// 根据返回的item和i拼接用户列表html
function appendUserHtml(data){
	var cc = "";
	$.each(
			data,
			function(i, item) {
	var roota="县级用户";
	// users + ="<tr
	// c[lass="list-users"><td>'"+item.aDcrid+"'</td></tr>";
	if(item.aRoot==1){
		roota="超级管理员";
	}
	if(item.aRoot==2){
		roota="站级用户";
	}
	if(item.aRoot==3){
		roota="县级用户";
	}
	if(item.aRealname==null){
		var realname="空";
	
	}else{
		var realname=item.aRealname;
	}
	if(item.aEmail==null){
		var armail="空";
		
	}else{
		var armail=item.aEmail;
	}
	if(item.aLxfs==null){
		var alxfs="空";
	}else{
		var alxfs=item.aLxfs;
	}
	if(item.aZm==null){
		var azm="空";
	}else{
		var azm=item.aZm;
	}
	
	cc += '<tr id="list"><td>'
		+ realname
		+ '</td>';
	cc += '<td id="name" >'
			+ item.aXm
			+ '</td>';
	/*cc += "<td>" + item.aKl
			+ "</td>";*/
	cc += "<td>"
			+ armail
			+ "</td>";
	cc += "<td>"
			+ alxfs
			+ "</td>";
	cc += "<td>" + azm
			+ "</td>";
	cc += "<td>"+roota+"</td>";
	cc += '<td><div><a onclick="xiugai(\''
			+ item.aDcrid
			+ '\')" class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">修改</a>';
	cc += '<!--//设置修改id--><a onclick="deletetr(\''
			+ item.aDcrid+'\',\''+item.aXm
			+ '\')" class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#" >删除 </a></div></td></tr>';

	
});
$("#list_users").html(cc);
}


