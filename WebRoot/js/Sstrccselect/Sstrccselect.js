var PageContext = $("#PageContext").val();

$(document).ready(function() {
	//var PageContext = $("#PageContext").val();
	
	
	 var date=new Date;
	 var yearq=date.getFullYear();
	// alert(yearq);
	 var cc='';
	 for(var i=5;i>0;i--){
		 cc+='<option value='+(yearq-i)+'>'+(yearq-i)+'</option>';
	 }
	 cc+='<option value='+(yearq)+'>'+(yearq)+'</option>';
	 $("#year").html(cc);
	 
	 var atrccid="0";
	 $.ajax({
		 	url : PageContext + "/selectStrcc.do", // 后台url
			data : { // 数据
				"aWjid" : atrccid
			},
			type : "POST", // 类型，POST或者GET
			dataType : 'json', // 数据返回类型，可以是xml、json等
			success : function(data) { // 成功，回调函数
				// alert(data.result);
				if(data==null){
					alert("搜索错误");
				}
				appendHtml(data);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + "<br/>"
						+ XMLHttpRequest.readyState + "<br/>" + textStatus);
			} 
	 });
	 
});
//查看按钮
function dele(awjdcid){
	
	document.getElementById("zzj").style.display="none";
	document.getElementById("placeholder1").style.display="inline";
	 
	 //alert(awjdcid); 
	 //$("tbody td").remove();
	$.ajax({
	 	url : PageContext + "/selectStrcc.do", // 后台url
		data : { // 数据
			"aWjid" : awjdcid
		},
		type : "POST", // 类型，POST或者GET
		dataType : 'json', // 数据返回类型，可以是xml、json等
		success : function(data) { // 成功，回调函数
			// alert(data.result);
			if(data==null){
				alert("搜索错误");
			}
			
			$.each(data,function(i, item) {
				$("#nian").val(item.aBzsj);
				$("#nian1").val(item.aShsj);
				var bzmj1='<td>'+item.aBzmj+'</td>';
				$("#bzmj").append(bzmj1);
				var nzcl='<td>'+item.aNcpcl+'</td>';
				$("#nzcl").append(nzcl);
				var zcpcl='<td>'+item.aZcpcl+'</td>';
				$("#zcpcl").append(zcpcl);
				var fcpcl='<td>'+item.aFcpcl+'</td>';
				$("#fcpcl").append(fcpcl);
				var nxssr='<td>'+item.aNxssr+'</td>';
				$("#nxssr").append(nxssr);
				var zcppjsjjg='<td>'+item.aZcpjg+'</td>';
				$("#zcppjsjjg").append(zcppjsjjg);
				var fcppjsjjg='<td>'+item.aFcpjg+'</td>';
				$("#fcppjsjjg").append(fcppjsjjg);
				var zcb='<td>'+item.aZcb+'</td>';
				$("#zcb").append(zcb);
				var oneheji='<td>'+item.aOneheji+'</td>';
				$("#oneheji").append(oneheji);
				var zzf='<td>'+item.aZzf+'</td>';
				$("#zzf").append(zzf);
				var flf='<td>'+item.aHff+'</td>';
				$("#flf").append(flf);
				var nyf='<td>'+item.aNyf+'</td>';
				$("#nyf").append(nyf);
				var nmf='<td>'+item.aNmf+'</td>';
				$("#nmf").append(nmf);
				var jxzyf='<td>'+item.aJxzyf+'</td>';
				$("#jxzyf").append(jxzyf);
				var ggf='<td>'+item.aPgf+'</td>';
				$("#ggf").append(ggf);
				var jsfwf='<td>'+item.aJsfff+'</td>';
				$("#jsfwf").append(jsfwf);
				var bxf='<td>'+item.aBxf+'</td>';
				$("#bxf").append(bxf);
				var qtzjfy='<td>'+item.aQtzjfy+'</td>';
				$("#qtzjfy").append(qtzjfy);
				var mmcbf='<td>'+item.aMmrgcb+'</td>';
				$("#mmcbf").append(mmcbf);		
				var jtygts='<td>'+item.aJtygts+'</td>';
				$("#jtygts").append(jtygts);
				var jtygrs='<td>'+item.aJtygrs+'</td>';
				$("#jtygrs").append(jtygrs);
				var gugf='<td>'+item.aGgfy+'</td>';
				$("#gugf").append(gugf);
				var gugongtianshu='<td>'+item.aGgts+'</td>';
				$("#gugongtianshu").append(gugongtianshu);
				var gugongtianjia='<td>'+item.aGggj+'</td>';
				$("#gugongtianjia").append(gugongtianjia);
				var gugongrenshu='<td>'+item.aGgrs+'</td>';
				$("#gugongrenshu").append(gugongrenshu);
				var meimuzhongzi='<td>'+item.aMzzyl+'</td>';
				$("#meimuzhongzi").append(meimuzhongzi);
				var mmhfyl='<td>'+item.aMhfyl+'</td>';
				$("#mmhfyl").append(mmhfyl);
				var mmnmyl='<td>'+item.aMnmyl+'</td>';
				$("#mmnmyl").append(mmnmyl);
				var mmtdcb='<td>'+item.aThreeheji+'</td>';
				$("#mmtdcb").append(mmtdcb);
				var lzdzj='<td>'+item.aLzdzj+'</td>';
				$("#lzdzj").append(lzdzj);
				var zydzz='<td>'+item.aZydzz+'</td>';
				$("#zydzz").append(zydzz);
				
			});
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>"
					+ XMLHttpRequest.readyState + "<br/>" + textStatus);
		} 
 });
	
}

//搜索按钮 方法
function selectAStrcc() {
	//var PageContext = $("#PageContext").val();
	var shijian =$("#year").val();
	var shengfen = $("#prov1").val();
	var zhonglei = $("#one").val();
	var zuowu = $("#two").val();
	
	//alert(shijian + shengfen + zhonglei + zuowu);
	 $.ajax({
		 	url : PageContext + "/selectWjxxStrcc.do", // 后台url
			data : { // 数据
				"aSf" : shengfen,"aSclx" : zuowu
			},
			type : "POST", // 类型，POST或者GET
			dataType : 'json', // 数据返回类型，可以是xml、json等
			success : function(data) { // 成功，回调函数
				// alert(data.result);
				if(data==null){
					alert("搜索错误");
				}
				appendHtml(data);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + "<br/>"
						+ XMLHttpRequest.readyState + "<br/>" + textStatus);
			} 
	 });
}

function appendHtml(data){
	if(data==null||data==""){
		alert("没有相关数据");
	}
	var cc='';
	$.each(data,function(i, item) {     
		var aScmc=item.aScmc;
		var aShsj=item.aShsj;
		var aBzmj=item.aBzmj;
		var aNcpcl=item.aNcpcl;
		var aZcpcl=item.aZcpcl;
		var aFcpcl=item.aFcpcl;
		var aNxssr=item.aNxssr;
		var aZcpjg=item.aZcpjg;
		var aFcpjg=item.aFcpjg;
		var aBzsj=item.aBzsj;
		if(item.aScmc==null)aScmc="空";
			if(item.aShsj==null)aShsj="空";
				if(item.aBzmj==null)aBzmj="空";
					if(item.aNcpcl==null)aNcpcl="空";
						if(item.aZcpcl==null)aZcpcl="空";
							if(item.aFcpcl==null)aFcpcl="空";
								if(item.aNxssr==null)aNxssr="空";
									if(item.aZcpjg==null)aZcpjg="空";
										if(item.aFcpjg==null)aFcpjg="空";
											if(item.aBzsj==null)aBzsj="空";
		cc += '<tr class="list-roles">';
		cc += '<td>' + (i + 1)+ '</td>';
		cc += '<td>'+ aScmc+ '</td>';
		cc += '<td>'+ aBzsj+ '</td>';
		cc += '<td>'+ aShsj+ '</td>';
		cc += '<td>'+ aBzmj+ '</td>';
		cc += '<td>'+ aNcpcl+ '</td>';
		cc += '<td>'+ aZcpcl+ '</td>';
		cc += '<td>'+ aFcpcl+ '</td>';
		cc += '<td>'+ aNxssr+ '</td>';
		cc += '<td>'+ aZcpjg+ '</td>';
		cc += '<td>'+ aFcpjg+ '</td>';
		//alert(item.aWjid);
		cc += '<td><a href="#"  class="btn btn-mini "  onclick="dele(\''
				+ item.aWjid
				+ '\')"><i class="icon-pencil"></i>查看 </a></td></tr>';
					});
	var aa='<input id="dengji" type="hidden" value=3 />';
	$("#list_sstrcc").html(cc);
}


