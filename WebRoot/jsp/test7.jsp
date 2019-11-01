<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>
<div class="page-header">
	<h1>
		Planning <small>All plan</small>
	</h1>
</div>
<script type="text/javascript" src="../js/ProviCityArea2.js"></script>
<div class="page-search">
	<form method="POST">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="aDcr" name="aDcr"
			placeholder="请输入调查人" style="width: 300px;" />&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 时间起<input type="date" id="aDcsjQi"
			name="aDcsjQi" style="width: 120px;" /> 时间至<input type="date"
			id="aDcsjZhi" name="aDcsjZhi" style="width: 120px;" />

		<div>
			请选择省份：<select id="ddsheng"></select> 请选择城市： <select id="ddshi"></select>
			请选择县： <select id="ddxian"></select>
		</div>
		<!-- <input type="text" id="aXian" name="aXian" placeholder="请输入县" style="width: 300px;" />&nbsp; -->
		<input type="button" name="soub"
			onclick="searchDemonstrationXianByCondition()" value="搜索"
			style="width: 50px;" />
		<!--<input type="button" id="soub" value="新建信息" style="width: 50px;position: relative;float: right;left: -100px;" />-->
		<!--<a href="new-product.html" class="btn btn-success" style="position: relative;float: right;left: -100px;">新建信息</a>-->
	</form>


</div>
<table class="table table-striped table-bordered table-condensed">
	<thead>
		<tr>
			<th style="width: 50px;">调查人</th>
			<th style="width: 50px;">联系电话</th>
			<th style="width: 50px;">调查时间</th>
			<th style="width: 50px;">省</th>
			<th style="width: 50px;">市</th>
			<th style="width: 50px;">县</th>
			<th style="width: 80px;">管理</th>
		</tr>
	</thead>

	<tbody id="DemonstrationXianXianShi">





	</tbody>

</table>
<!-- <div class="pagination">
				<ul>
					<li><a href="#">Prev</a></li>
					<li class="active">
						<a href="#">1</a>
					</li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">Next</a></li>
				</ul>
	</div> -->

<script>
	addressInit2('ddsheng', 'ddshi', 'ddxian');

	$(document).ready(function() {
		$('.dropdown-menu li a').hover(function() {
			$(this).children('i').addClass('icon-white');
		}, function() {
			$(this).children('i').removeClass('icon-white');
		});

		if ($(window).width() > 760) {
			$('tr.list-users td div ul').addClass('pull-right');
		}
	});

	//按名字搜索方法
	//显示问卷列表页面
	function test7jsp() {
		$.ajax({
			url : "test7.jsp",
			success : function(data) {

				$("#dd").html(data);
				$("#j").addClass("active");
				$("#add").removeClass("active");
				$("#d-1").removeClass("active");
				$("#d-2").removeClass("active");
				$("#e").removeClass("active");
				$("#f").removeClass("active");
				$("#g").removeClass("active");
				$("#h").removeClass("active");
				$("#i").removeClass("active");
				//$("#j").removeClass("active");
				$("#k").removeClass("active");
				$("#l").removeClass("active");
				$("#m").removeClass("active");
			}
		});

	}

	Date.prototype.format = function(format) {
		var o = {
			"M+" : this.getMonth() + 1, //month  
			"d+" : this.getDate(), //day  
			"h+" : this.getHours(), //hour  
			"m+" : this.getMinutes(), //minute  
			"s+" : this.getSeconds(), //second  
			"q+" : Math.floor((this.getMonth() + 3) / 3), //quarter  
			"S" : this.getMilliseconds()
		//millisecond  
		};
		if (/(y+)/.test(format))
			format = format.replace(RegExp.$1, (this.getFullYear() + "")
					.substr(4 - RegExp.$1.length));
		for ( var k in o)
			if (new RegExp("(" + k + ")").test(format))
				format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k]
						: ("00" + o[k]).substr(("" + o[k]).length));
		return format;
	};

	function searchDemonstrationXianByCondition() {
		var aDcsjQi = $("#aDcsjQi").val();
		var aDcsjZhi = $("#aDcsjZhi").val();
		var aDcr = $("#aDcr").val();
		var aSf = $("#prov1").val();
		var aCity = $("#city1").val();
		var aXian = $("#county1").val();
		test7jsp();
		$
				.ajax({
					type : "post",
					url : "${path}/searchDemonstrationXianByCondition.do",
					data : {
						"aDcr" : aDcr,
						"aSf" : aSf,
						"aCity" : aCity,
						"aXian" : aXian,
						"aDcsjQi" : aDcsjQi,
						"aDcsjZhi" : aDcsjZhi
					},
					dataType : "json",
					success : function(data) {
						$
								.each(
										data,
										function(i, CSfxjcxx) {
											if (CSfxjcxx.aDcsj != null) {
												CSfxjcxx.aDcsj = new Date(
														CSfxjcxx.aDcsj)
														.toLocaleDateString();
											} else {
												CSfxjcxx.aDcsj = "";
											}
											if (CSfxjcxx.aDcrRealname == null) {
												CSfxjcxx.aDcrRealname = '';
											}
											if (CSfxjcxx.aLxdh == null) {
												CSfxjcxx.aLxdh = '';
											}
											if (CSfxjcxx.aDcsj == null) {
												CSfxjcxx.aDcsj = '';
											}
											if (CSfxjcxx.xian == null) {
												CSfxjcxx.xian = '';
											}
											if (CSfxjcxx.city == null) {
												CSfxjcxx.city = '';
											}
											if (CSfxjcxx.province == null) {
												CSfxjcxx.province = '';
											}
											var cc = "";

											cc += '<tr style="width: 20px;" class="list-roles" ><td>';
											cc += CSfxjcxx.aDcrRealname
													+ "</td><td>"
													+ CSfxjcxx.aLxdh
													+ "</td><td>";
											cc += CSfxjcxx.aDcsj + "</td><td>"
													+ CSfxjcxx.province
													+ "</td><td>";
											cc += CSfxjcxx.city + "</td><td>"
													+ CSfxjcxx.xian + "</td>";

											cc += '<td><div>';
											cc += '		<a onclick="seeDemonstrationXian(\''
													+ CSfxjcxx.aSfxid
													+ '\')"><i class="icon-search"></i>查看</a>';
											cc += '		<a onclick="reviseDemonstrationXian(\''
													+ CSfxjcxx.aSfxid
													+ '\')"><i class="icon-book"></i>修改</a>';
											cc += '		<a onclick="deleteDemonstrationXian(\''
													+ CSfxjcxx.aSfxid
													+ '\')"><i class="icon-pencil"></i>删除</a></div></td>';
											$("#DemonstrationXianXianShi")
													.append(cc);
										});
						$("#DemonstrationXianXianShi").paginathing({
							perPage : 20,
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

	//修改方法
	function reviseDemonstrationXian(node) {

		$.ajax({
			url : "froms2.jsp",
			success : function(data) {

				$("#dd").html(data);

				querySfx(node, "update");
				$("#d-2").addClass("active");
				$("#add").removeClass("active");
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
			}
		});

	}
	//查看方法  sm  start
	function seeDemonstrationXian(node) {
		//var newwindow=window.open('about:blank'); 

		$.ajax({
			url : "froms2.jsp",
			success : function(data) {

				// $("#dd").hide();
				$("#dd").html(data);
				//$("#dd2").show();
				querySfx(node, "select");
				$("#d-2").addClass("active");
				$("#add").removeClass("active");
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

				//newwindow.location.href="enter.jsp"; 
			}
		});

	}
	//删除方法
	function deleteDemonstrationXian(node) {

		$.ajax({
			url : "${path}/deleteDemonstrationXianById.do?aSfxid=" + node,
			type : "GET",
			dataType : "text",
			success : function(data) {
				if (data == 1) {

					$("#j").click();
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




