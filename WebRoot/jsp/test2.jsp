<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>

<div class="page-header">
	<h1>问卷搜索</h1>
</div>
<script type="text/javascript" src="../js/ProviCityArea2.js"></script>
<form method="POST" action="myprofileSelect.php">
	<!-- <input type="text" id="a_wjid" name="a_wjid" placeholder="请输入ID"
		style="width: 100px;" /> -->&nbsp; <!-- <input type="text" id="a_dcrid"
		name="a_dcrid" placeholder="请输入调查人ID" style="width: 100px;" /> -->&nbsp;
	<input type="text" id="aBfzxm" name="aBfzxm" placeholder="请输入被访者姓名" style="width: 120px;" />&nbsp;
	<input type="text" id="aXueli" name="aXueli" placeholder="请输入学历" style="width: 120px;" />&nbsp;
	<!-- <input type="text" id="aSfzcpp" name="aSfzcpp" placeholder="请输入是否注册品牌" style="width: 120px;" />&nbsp; -->
	<input type="text" id="aBfznl" name="aBfznl" placeholder="请输入被访者年龄" style="width: 120px;" />&nbsp;
	<select id="aBfznl"  >
					<option  value="">请选择是否注册品牌</option>
					<option>是</option>
					<option>否</option>
    </select>
	
	<select id="ShuCaiZhongLei">
					<option>请选择蔬菜种类</option>
    </select>
    <div>
    请选择省份：<select id="ddsheng"></select>
    请选择城市： <select id="ddshi"></select>
    请选择县：  <select id="ddxian"></select>
    </div>
	<div>
           时间起<input type="date" id="aDcsjQi" name="aDcsjQi"  style="width: 120px;" />
	时间至<input type="date" id="aDcsjZhi" name="aDcsjZhi"  style="width: 120px;" />
	<input type="button" onclick="searchQuestionlistByCondition()"
		value="搜索" style="width: 50px;">
    </div>

</form>

<table class="table table-striped table-bordered table-condensed">
	<thead>
		<tr>
			<th style="width: 20px;">序号</th>
			<!-- <th style="width: 60px;">问卷时间</th> -->
			<th style="width: 45px;">调查人</th>
			<th style="width: 45px;">被访者</th>
			<th style="width: 70px;">联系方式</th>
			<th style="width: 30px;">年龄</th>
			<th style="width: 30px;">省份</th>
			<th style="width: 30px;">城市</th>
			<th style="width: 30px;">县</th>
			<th style="width: 110px;">学历</th>
			<th style="width: 60px;">蔬菜类型</th>
			<!-- <th style="width: 60px;">生产补贴</th> -->
			<th style="width: 50px;">注册品牌</th>
			<th style="width: 105px;">管理</th>
		</tr>
	</thead>
	<tbody id="QuestionlistXianShi">


		<!-- <tr class="list-roles" >
					<td ></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				
					<td>
						<div class="btn-group">
							<a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">编辑<span class="caret"></span></a>
							<ul class="dropdown-menu pull-right">
								<li><a href=""><i class="icon-search"></i>查看</a></li>
								<li><a href=""><i class="icon-book"></i>修改</a></li>
								<li><a href=""><i class="icon-pencil"></i>删除</a></li>
								
							</ul>
						</div>
					</td>
				</tr>	 -->

	</tbody>
</table>

<script>
addressInit2('ddsheng','ddshi','ddxian');
//调整下拉框
$(function(){
var ShuCaiLeiXing=new Array();;
      $.ajax({
        type:'post',
        url:"${path}/searchVegetables.do",
        dataType:"json",
        success:function(data){
        $.each(data,function(i, bsclx) {
        if (bsclx.scsx == 0) {
				ShuCaiLeiXing.push(bsclx);
			} 
		});	
          // console.log(data);
          $("#ShuCaiZhongLei").empty();
          $("#ShuCaiZhongLei").append("<option value=''>请选择主类</option>");
          
          for(var i=0;i<ShuCaiLeiXing.length;i++){
            $("#ShuCaiZhongLei").append('<option value='+ShuCaiLeiXing[i].scmc+'>'+ShuCaiLeiXing[i].scmc+'</option>');
          }
       },
       error : function(XMLHttpRequest, textStatus, errorThrown) { //失败，回调函数
						// 状态码
						alert("提取蔬菜数据方法:" + XMLHttpRequest.status + " "
								+ XMLHttpRequest.readyState + " " + textStatus);
					}
      });
     });
	

	

	
	//按名字搜索方法
	//显示问卷列表页面
	function test2jsp() {
		$.ajax({
			url : "test2.jsp",
			success : function(data) {

				$("#dd").html(data);
				$("#e").addClass("active");
				$("#add").removeClass("active");
				$("#d-1").removeClass("active");
				$("#d-2").removeClass("active");
				$("#f").removeClass("active");
				$("#g").removeClass("active");
				$("#h").removeClass("active");
				$("#i").removeClass("active");
				$("#j").removeClass("active");
				$("#k").removeClass("active");
				$("#l").removeClass("active");
				$("#m").removeClass("active");
			}
		});
	}
	function searchQuestionlistByCondition() {
	    var aDcsjQi= $("#aDcsjQi").val();
		var aDcsjZhi = $("#aDcsjZhi").val();
		var aBfzxm = $("#aBfzxm").val();
		var aXueli = $("#aXueli").val();
		var aSfzcpp = $("#aSfzcpp").val();
		var aBfznl = $("#aBfznl").val();
		var aSclx=$("#ShuCaiZhongLei").val();
		var aZhprovince = $("#ddsheng").val();
		var aZhcity = $("#ddshi").val();
		var aZhcounty=$("#ddxian").val();
		/* $("#f").click(); */
		test2jsp();
		$
				.ajax({
					type : "post",
					url : "${path}/searchQuestionlistByCondition.do",
					data : {
						"aBfzxm" : aBfzxm,
						"aXueli" : aXueli,
						"aSfzcpp" : aSfzcpp,
						"aBfznl" : aBfznl,
						"aSclx" : aSclx,
						"aZhprovince" : aZhprovince,
						"aZhcity" : aZhcity,
						"aZhcounty" : aZhcounty,
						"aDcsjQi" : aDcsjQi,
						"aDcsjZhi" : aDcsjZhi
					},
					dataType : "json",
					success : function(data) {
						$
								.each(
										data,
										function(i, AWjxx) {
										
										
										if(AWjxx.aDcrRealname==null){
							AWjxx.aDcrRealname='';
						}
						if(AWjxx.aBfzlxfs==null){
							AWjxx.aBfzlxfs='';
						}
						if(AWjxx.aBfzxm==null){
							AWjxx.aBfzxm='';
						}
						if(AWjxx.aBfznl==null){
							AWjxx.aBfznl='';
						}
						if(AWjxx.aZhprovince==null){
							AWjxx.aZhprovince='';
						}
						if(AWjxx.aZhcity==null){
							AWjxx.aZhcity='';
						}
						if(AWjxx.aZhcounty==null){
							AWjxx.aZhcounty='';
						}
						if(AWjxx.aXueli==null){
							AWjxx.aXueli='';
						}
						if(AWjxx.aSclx==null){
							AWjxx.aSclx='';
						}
						if(AWjxx.aSfzcpp==null){
							AWjxx.aSfzcpp='';
						}
											var cc = "";

											cc += '<tr style="width: 20px;" class="list-roles" ><td>';
											cc += (i+1)+ "</td><td>"
													+ AWjxx.aDcrRealname
													+ "</td><td>";
											cc += AWjxx.aBfzxm + "</td><td>"
													+ AWjxx.aBfzlxfs
													+ "</td><td>";
											cc += AWjxx.aBfznl + "</td><td>"
													+ AWjxx.aZhprovince + "</td><td>";
											cc += AWjxx.aZhcity + "</td><td>"
													+ AWjxx.aZhcounty
													+ "</td><td>";
											cc +=  AWjxx.aXueli
													+ "</td><td>";
											cc += AWjxx.aSclx + "</td><td>"
													+ AWjxx.aSfzcpp + "</td>";
											cc += '<td><div>';
											cc += '		<a onclick="seeQuestionlist(\''
													+ AWjxx.aWjid
													+ '\')"><i class="icon-search"></i>查看</a>';
											cc += '		<a onclick="reviseQuestionlist(\''
													+ AWjxx.aWjid
													+ '\')"><i class="icon-book"></i>修改</a>';
											cc += '		<a onclick="deleteQuestionlist(\''
													+ AWjxx.aWjid
													+ '\')"><i class="icon-pencil"></i>删除</a></div></td>';
											$("#QuestionlistXianShi")
													.append(cc);
										});
										$("#QuestionlistXianShi").paginathing({
			                                     perPage : 10,
			                                     insertAfter : '.table',
			                                      pageNumbers : true
		});
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) { //失败，回调函数
						// 状态码
						alert(XMLHttpRequest.status + " "
								+ XMLHttpRequest.readyState + " " + textStatus);
					}

				});

	}
	//获得id
	var QuestionlistId;
	function grtId(node) {
		var tr1 = node.parentNode.parentNode.parentNode;
		QuestionlistId = tr1.cells[0].innerText;
		//alert(tr1.cells[0].innerText);
	}
	var i;
	//修改方法
	function reviseQuestionlist(node) {
	
	
	$.ajax({
			
	url : "addWjxx.jsp",
			success : function(data) {

				$("#dd").html(data);
				$("#d-2").removeClass("active");
				$("#add").addClass("active");
				$("#e").removeClass("active");
				$("#d-1").removeClass("active");
				$("#f").removeClass("active");
				$("#g").removeClass("active");
				$("#h").removeClass("active");
				$("#i").removeClass("active");
				$("#j").removeClass("active");
				$("#k").removeClass("active");
				$("#l").removeClass("active");
				$("#m").removeClass("active");

				$("#z").removeClass("active");

			}
		});

		//alert(node);
		//alert("aaaaaaaaaaaaaaaaaaaaaaa"); 
		$.ajax({
			url : "${path}/selectForUpdate.do?aWjid=" + node,
			type : "GET",
			dataType : "text",
			//data : {"aWjid":node},
			success : function(data) {
			i=0;
				updata(data,i);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { //失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + " " + XMLHttpRequest.readyState
						+ " " + textStatus);
			}
		});

	}
	//查看方法
	function seeQuestionlist(node) {
	
		$.ajax({
			
	url : "addWjxx.jsp",
			success : function(data) {

				$("#dd").html(data);
				$("#d-2").removeClass("active");
				$("#add").addClass("active");
				$("#e").removeClass("active");
				$("#d-1").removeClass("active");
				$("#f").removeClass("active");
				$("#g").removeClass("active");
				$("#h").removeClass("active");
				$("#i").removeClass("active");
				$("#j").removeClass("active");
				$("#k").removeClass("active");
				$("#l").removeClass("active");
				$("#m").removeClass("active");

				$("#z").removeClass("active");

			}
		});
	
	
		$.ajax({
			url : "${path}/selectForUpdate.do?aWjid=" + node,
			type : "GET",
			dataType : "text",
			success : function(data) {
			i=1;
					updata(data,i);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { //失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + " " + XMLHttpRequest.readyState
						+ " " + textStatus);
			}
		});

	}
	//删除方法
	function deleteQuestionlist(node) {
		$.ajax({
			url : "${path}/deleteQuestionlistById.do?aWjid=" + node,
			type : "GET",
			dataType : "text",
			success : function(data) {
				if (data == 1) {

					$("#e").click();
					alert("删除成功");
				} else {
					alert("删除失败");
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { //失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + " " + XMLHttpRequest.readyState
						+ " " + textStatus);
			}
		});

	}
</script>


<script src="../js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/paginathing.js"></script>
