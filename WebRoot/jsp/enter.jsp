<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
	/* added by sm 2018-7-1 */
	String st = "1";
	if (request.getQueryString() != null) {
		st = request.getQueryString();
	}
	/* if(st!="1"){
	       out.print("<script>alert('保存成功！');</script>");
	       st="1";//初始化
	}	 */
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>国家特色蔬菜产业体系平台</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/site.css" rel="stylesheet">
<link href="../css/bootstrap-responsive.css" rel="stylesheet">

<%-- <link href="${ctx}/business/css/bootstrapValidator.css" rel="stylesheet"> --%>
<%-- <script type="text/javascript" src="${ctx}/business/js/bootstrapValidator.js"></script> --%>

<!-- 国际化语言 -->

<%-- <script type="text/javascript" src="${ctx}/business/js/zh_CN.js"></script> --%>


<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="../js/jquery-1.11.0.min.js" type="text/javascript"></script>


<!--[if lt IE 9]>
      <script src="js/html5.js"></script>
    <![endif]-->
<!--[if lte IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
<style type="text/css">
html,body {
	height: 100%;
}

#show_time0 {
	position: relative;
	left: 500px;
	top: 14px;
	color: #FFFFFF;
	font-size: 16px;
}
</style>
<input id="path" name="path" type="hidden" value="${pageContext.request.contextPath}" />
<script>
	

	$(document)
			.ready(
					function() {
					
						//added by zzj
						var PageContext = $("#path").val();

						var a = 11;//返回权限标识
						$
								.ajax({
									url : PageContext + "/selectroot.do", // 后台url
									data : { // 数据
										"aXm" : a,
									},
									type : "POST", // 类型，POST或者GET
									dataType : 'json', // 数据返回类型，可以是xml、json等
									success : function(data) {

										addMenu(data);

										//菜单点击事件开始
											
												var PageContext = $("#path").val();
						//zt added by zzj
								$("#searchVeg").click(function() {
											searchVeg(PageContext);
											
										});
										
										$("#searchManage").click(function() {
											searchManage(PageContext);
											
										});
						//-----------------------------------------------
											
											
											
										$("#add").click(function() {
											addWjxxJsp(PageContext);

										});

										$("#d-1")
												.click(
														function() {//录入界面

															$
																	.ajax({
																		url : "froms.html",
																		success : function(
																				data) {

																			$(
																					"#dd")
																					.html(
																							data);

																			$(
																					"#d-1")
																					.addClass(
																							"active");
																			$(
																					"#e")
																					.removeClass(
																							"active");
																			$(
																					"#add")
																					.removeClass(
																							"active");
																			$(
																					"#d-2")
																					.removeClass(
																							"active");
																			$(
																					"#f")
																					.removeClass(
																							"active");
																			$(
																					"#g")
																					.removeClass(
																							"active");
																			$(
																					"#h")
																					.removeClass(
																							"active");
																			$(
																					"#i")
																					.removeClass(
																							"active");
																			$(
																					"#j")
																					.removeClass(
																							"active");
																			$(
																					"#k")
																					.removeClass(
																							"active");
																			$(
																					"#l")
																					.removeClass(
																							"active");
																			$(
																					"#m")
																					.removeClass(
																							"active");

																			$(
																					"#z")
																					.removeClass(
																							"active");

																			$(
																					"#part-1")
																					.click(
																							function() {
																								$
																										.ajax({
																											url : "forms-1.html",
																											success : function(
																													data) {

																												$(
																														"#placeholder")
																														.html(
																																data);//二次刷新

																											}
																										});
																							});

																			$(
																					"#part-2")
																					.click(
																							function() {//被访者基本信息，初始界面       初始 
																								$
																										.ajax({
																											url : "forms-2.html",
																											success : function(
																													data) {

																												$(
																														"#placeholder")
																														.html(
																																data);//二次刷新  思路：1.无论在哪一部分都可以随机填表   （这种）2.只可以顺时针填

																												//						         

																											}
																										});

																							});
																			$(
																					"#part-3")
																					.click(
																							function() {
																								$
																										.ajax({
																											url : "forms-3.html",
																											success : function(
																													data) {

																												$(
																														"#placeholder")
																														.html(
																																data);//二次刷新

																											}
																										});
																							});

																			$(
																					"#part-4")
																					.click(
																							function() {//被访者基本信息，初始界面  四里可点击一
																								$
																										.ajax({
																											url : "forms-4.jsp",
																											success : function(
																													data) {

																												$(
																														"#placeholder")
																														.html(
																																data);//二次刷新

																											}
																										});
																							});

																			$(
																					"#part-1")
																					.click(
																							function() {//被访者基本信息，初始界面  四里可点击一
																								$
																										.ajax({
																											url : "forms-1.jsp",
																											success : function(
																													data) {

																												$(
																														"#aa")
																														.html(
																																data);//二次刷新

																											}
																										});
																							});

																		}
																	});
														});

										$("#d-2")
												.click(
														function() {//被访者基本信息，初始界面
															$
																	.ajax({
																		url : "froms2.jsp",
																		success : function(
																				data) {

																			$(
																					"#dd")
																					.html(
																							data);
																			$(
																					"#d-2")
																					.addClass(
																							"active");
																			$(
																					"#add")
																					.removeClass(
																							"active");
																			$(
																					"#e")
																					.removeClass(
																							"active");

																			$(
																					"#d-1")
																					.removeClass(
																							"active");
																			$(
																					"#f")
																					.removeClass(
																							"active");
																			$(
																					"#g")
																					.removeClass(
																							"active");
																			$(
																					"#h")
																					.removeClass(
																							"active");
																			$(
																					"#i")
																					.removeClass(
																							"active");
																			$(
																					"#j")
																					.removeClass(
																							"active");
																			$(
																					"#k")
																					.removeClass(
																							"active");
																			$(
																					"#l")
																					.removeClass(
																							"active");
																			$(
																					"#m")
																					.removeClass(
																							"active");

																			$(
																					"#z")
																					.removeClass(
																							"active");

																		}
																	});
														});

										//zzj6-29-----------------------------

										//生产投入产出情况查询 zzj 6.29-------------------------------
										$("#sctrselect")
												.click(
														function() {//录入界面

															$
																	.ajax({
																		url : "Sstrccselect.jsp",
																		success : function(
																				data) {

																			$(
																					"#dd")
																					.html(
																							data);

																			$(
																					"#d-1")
																					.addClass(
																							"active");
																			$(
																					"#e")
																					.removeClass(
																							"active");
																			$(
																					"#add")
																					.removeClass(
																							"active");
																			$(
																					"#d-2")
																					.removeClass(
																							"active");
																			$(
																					"#f")
																					.removeClass(
																							"active");
																			$(
																					"#g")
																					.removeClass(
																							"active");
																			$(
																					"#h")
																					.removeClass(
																							"active");
																			$(
																					"#i")
																					.removeClass(
																							"active");
																			$(
																					"#j")
																					.removeClass(
																							"active");
																			$(
																					"#k")
																					.removeClass(
																							"active");
																			$(
																					"#l")
																					.removeClass(
																							"active");
																			$(
																					"#m")
																					.removeClass(
																							"active");
																			$(
																					"#z")
																					.removeClass(
																							"active");

																		}
																	});
														});

										//-------------------------------------------

										$("#e").click(function() {

											test2jsp(PageContext);
											getQuestionlist(PageContext);
										});

										$("#f").click(function() {

											test3Jsp(PageContext);
											getVegetablesData(PageContext);

										});
										//...........................................................................................
										//zhp  end

										//统计记录
										$("#g").click(function() {
											$.ajax({
												url : "test4.jsp",
												success : function(data) {

													$("#dd").html(data);
													addMyClass("#g");

												}
											});
										});
										//---------------------------------------------zzj

										$("#searchProducts")
												.click(
														function() {
															$
																	.ajax({
																		url : "searchProducts.jsp",
																		success : function(
																				data) {

																			$(
																					"#dd")
																					.html(
																							data);
																			addMyClass("#searchProducts");

																		}

																	});
														});

										$("#searchTech").click(function() {
											$.ajax({
												url : "searchTech.jsp",
												success : function(data) {

													$("#dd").html(data);
													addMyClass("#searchTech");

												}

											});

										});

										//---------------------------------------------zzj
										function addMyClass(element) {
											var elems = [ "#add", "#e", "#d-1",
													"#d-2", "#f", "#g", "#h",
													"#i", "#j", "#k", "#l",
													"#m" ];
											for ( var r in elems) {
												var e = elems[r];
												e == element ? $(e).addClass(
														"active") : $(e)
														.removeClass("active");
											}

										}

										$("#h")
												.click(
														function() {
															$
																	.ajax({
																		url : "test5.jsp",
																		success : function(
																				data) {

																			$(
																					"#dd")
																					.html(
																							data);
																			$(
																					"#h")
																					.addClass(
																							"active");
																			$(
																					"#add")
																					.removeClass(
																							"active");
																			$(
																					"#d-1")
																					.removeClass(
																							"active");
																			$(
																					"#d-2")
																					.removeClass(
																							"active");
																			$(
																					"#e")
																					.removeClass(
																							"active");
																			$(
																					"#f")
																					.removeClass(
																							"active");
																			$(
																					"#g")
																					.removeClass(
																							"active");
																			$(
																					"#i")
																					.removeClass(
																							"active");
																			$(
																					"#j")
																					.removeClass(
																							"active");
																			$(
																					"#k")
																					.removeClass(
																							"active");
																			$(
																					"#l")
																					.removeClass(
																							"active");
																			$(
																					"#m")
																					.removeClass(
																							"active");
																			$(
																					"#z")
																					.removeClass(
																							"active");

																			$(
																					"#new-6")
																					.click(
																							function() {

																								var PageContext = $(
																										"#path")
																										.val();

																								var a = 11;
																								$
																										.ajax({
																											url : PageContext
																													+ "/selectroot.do", // 后台url
																											data : { // 数据
																												"aXm" : a,

																											},
																											type : "POST", // 类型，POST或者GET
																											dataType : 'json', // 数据返回类型，可以是xml、json等
																											success : function(
																													data) { // 成功，回调函数
																												// alert(data.result);
																												// alert(data.aXm);
																												if (data.aRoot == 2) {

																													$
																															.ajax({
																																url : "new-info-6.jsp",
																																success : function(
																																		data) {

																																	$(
																																			"#dd")
																																			.html(
																																					data);

																																}
																															});

																												}
																												if (data.aRoot == 1) {

																													$
																															.ajax({
																																url : "new-info-7.jsp",
																																success : function(
																																		data) {

																																	$(
																																			"#dd")
																																			.html(
																																					data);

																																}
																															});
																												}

																											},
																											error : function(
																													XMLHttpRequest,
																													textStatus,
																													errorThrown) { // 失败，回调函数
																												// 状态码
																												alert(XMLHttpRequest.status
																														+ "<br/>"
																														+ XMLHttpRequest.readyState
																														+ "<br/>"
																														+ textStatus);
																												alert("刷新失败！！");
																											}

																										});

																							});

																		}
																	});
														});

										//zhp-----------------------------------------------

										$("#i").click(function() {
											test6jsp(PageContext);
											getManagementData(PageContext);
										});
										//----------------------------------------------

										//示范县搜索-----------------------------------------------

										function test7jsp() {
											$.ajax({
												url : "test7.jsp",
												success : function(data) {

													$("#dd").html(data);
													$("#j").addClass("active");
													$("#add").removeClass(
															"active");
													$("#d-1").removeClass(
															"active");
													$("#d-2").removeClass(
															"active");
													$("#e").removeClass(
															"active");
													$("#f").removeClass(
															"active");
													$("#g").removeClass(
															"active");
													$("#h").removeClass(
															"active");
													$("#i").removeClass(
															"active");
													//$("#j").removeClass("active");
													$("#k").removeClass(
															"active");
													$("#l").removeClass(
															"active");
													$("#m").removeClass(
															"active");
												}
											});

										}
										//----获取示范县列表数据
										//----获取示范县列表数据-----------------zzzzzzzzzzzzzzzzzzzzzzz---------------------------
										function getDemonstrationXian() {
											$
													.ajax({
														url : "${path}/searchDemonstrationXian.do",
														type : "POST",
														dataType : "json",
														success : function(data) {
															$
																	.each(
																			data,
																			function(
																					i,
																					CSfxjcxx) {
																				if (CSfxjcxx.aDcsj != null) {
																					CSfxjcxx.aDcsj = new Date(
																							CSfxjcxx.aDcsj)
																							.toLocaleDateString();
																				} else {
																					CSfxjcxx.aDcsj = "";
																				}
																				if(CSfxjcxx.aDcrRealname==null){
							                                                           CSfxjcxx.aDcrRealname='';
						                                                         }
						                                                         if(CSfxjcxx.aLxdh==null){
							                                                           CSfxjcxx.aLxdh='';
						                                                         }
						                                                         if(CSfxjcxx.aDcsj==null){
							                                                           CSfxjcxx.aDcsj='';
						                                                         }
						                                                         if(CSfxjcxx.xian==null){
							                                                           CSfxjcxx.xian='';
						                                                         }
																				var cc = "";
																				cc += '<tr style="width: 20px;" class="list-roles" ><td>';
																				//cc+=CSfxjcxx.aSfxid+"</td><td>";
																				cc += CSfxjcxx.aDcrRealname
																						+ "</td><td>"
																						+ CSfxjcxx.aLxdh
																						+ "</td><td>";
																				cc += CSfxjcxx.aDcsj
																						+ "</td><td>"
																						+ CSfxjcxx.xian
																						+ "</td>";

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
																				$(
																						"#DemonstrationXianXianShi")
																						.append(
																								cc);
																			});
															$(
																	"#DemonstrationXianXianShi")
																	.paginathing(
																			{
																				perPage : 20,
																				insertAfter : '.table',
																				pageNumbers : true
																			});
														},
														error : function(
																XMLHttpRequest,
																textStatus,
																errorThrown) { //失败，回调函数
															// 状态码
															alert(XMLHttpRequest.status
																	+ " "
																	+ XMLHttpRequest.readyState
																	+ " "
																	+ textStatus);
														}
													});

										}
										$("#j").click(function() { //示范县搜索
											test7jsp();
											getDemonstrationXian();
										});

										//-------------------------------------------------------

										$("#k").click(function() {
											test8jsp(PageContext);
											getStudyData(PageContext);
										});
										//--------------------------------------------------------------------

										$("#l").click(function() {
											test9jsp(PageContext);
											getTechnologyData(PageContext);
										});

										//--------------------------------------

										$("#z")
												.click(
														function() {
															$
																	.ajax({
																		url : "test13.jsp",
																		success : function(
																				data) {

																			$(
																					"#dd")
																					.html(
																							data);
																			$(
																					"#z")
																					.addClass(
																							"active");
																			$(
																					"#e")
																					.removeClass(
																							"active");
																			$(
																					"#add")
																					.removeClass(
																							"active");
																			$(
																					"#d-1")
																					.removeClass(
																							"active");
																			$(
																					"#d-2")
																					.removeClass(
																							"active");
																			$(
																					"#f")
																					.removeClass(
																							"active");
																			$(
																					"#g")
																					.removeClass(
																							"active");
																			$(
																					"#h")
																					.removeClass(
																							"active");
																			$(
																					"#i")
																					.removeClass(
																							"active");
																			$(
																					"#j")
																					.removeClass(
																							"active");
																			$(
																					"#k")
																					.removeClass(
																							"active");
																			$(
																					"#l")
																					.removeClass(
																							"active");
																			$(
																					"#m")
																					.removeClass(
																							"active");
																		}
																	});
														});

										//-----------------------------------------------------------------------		

										$("#m")
												.click(
														function() {
															$
																	.ajax({
																		url : "test10.jsp",
																		success : function(
																				data) {

																			$(
																					"#dd")
																					.html(
																							data);
																			$(
																					"#m")
																					.addClass(
																							"active");
																			$(
																					"#add")
																					.removeClass(
																							"active");
																			$(
																					"#d-1")
																					.removeClass(
																							"active");
																			$(
																					"#d-2")
																					.removeClass(
																							"active");
																			$(
																					"#e")
																					.removeClass(
																							"active");
																			$(
																					"#f")
																					.removeClass(
																							"active");
																			$(
																					"#g")
																					.removeClass(
																							"active");
																			$(
																					"#h")
																					.removeClass(
																							"active");
																			$(
																					"#i")
																					.removeClass(
																							"active");
																			$(
																					"#j")
																					.removeClass(
																							"active");
																			$(
																					"#k")
																					.removeClass(
																							"active");
																			$(
																					"#l")
																					.removeClass(
																							"active");

																			$(
																					"#z")
																					.removeClass(
																							"active");

																			$(
																					"#new-5")
																					.click(
																							function() {
																								$
																										.ajax({
																											url : "new-info-5.jsp",
																											success : function(
																													data) {

																												$(
																														"#dd")
																														.html(
																																data);
																											}
																										});
																							});

																		}
																	});
														});

									},
									error : function(XMLHttpRequest,
											textStatus, errorThrown) { // 失败，回调函数
										// 状态码
										alert("用户菜单：刷新失败：#m:"
												+ XMLHttpRequest.status
												+ "<br/>"
												+ XMLHttpRequest.readyState
												+ "<br/>" + textStatus);

									}

								});

					});
</script>

<!--<script>
	$('#test6').on('keyup',function(){
    var v = paresInt($(this).val(), 10);
    if(v > 10){
        $(this).val(10);
    }
}); 
	</script>-->
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">

			<a class="brand" href="#"><img src="../img/2.png" height="24"
				width="24" />&nbsp;&nbsp;&nbsp;国家特色蔬菜产业体系平台</a> <a id="show_time0"
				style=""> </a>

			<div class="btn-group pull-right">
				<a class="btn" href="../index.jsp"><i class="icon-off"></i>退出</a>

			</div>


		</div>
	</div>



	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<ul id="mune" class="nav nav-list">


					</ul>
				</div>
			</div>
			<div class="span9">
				<div class="row-fluid" id="dd">
					<!-- 从这里开始是要替换的页面jsp -->

					<!--   问卷录入信息界面结束 -->
				</div>
               
			</div>
			<div></div>
			
			
			<script src="../js/jquery.js"></script>
			<script src="../js/jquery.flot.js"></script>
			<script src="../js/jquery.flot.resize.js"></script>
			<script src="../js/bootstrap.min.js"></script>
			<script src="../js/ProviCityArea.js"></script>
			<script src="../js/enter.js"></script>
			<script src="../js/menu/menu.js"></script>

			<script>
				//这里就一句话就可以显示时间，但不是我想要的最理想结果  
				setInterval(
						"show_time0.innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
						1000);
			</script>

			<!-- <script type="text/javascript"
				src="http://res.42du.cn/vendor/jquery/jquery.min.js"></script> -->
			<!-- <script type="text/javascript">
				function callback0(data) {
					init($("#prov"), data.prov);
					init($("#city"), data.city);
					init($("#county"), data.county);
					init($("#town"), data.town);
					init($("#village"), data.village);
				}
				function callback1(data) {
					init($("#city"), data.city);
					init($("#county"), data.county);
					init($("#town"), data.town);
					init($("#village"), data.village);
				}
				function callback2(data) {
					init($("#county"), data.county);
					init($("#town"), data.town);
					init($("#village"), data.village);
				}
				function callback3(data) {
					init($("#town"), data.town);
					init($("#village"), data.village);
				}
				function callback4(data) {
					init($("#village"), data);
				}
				function init(sel, data) {
					sel.html("");
					$(data).each(
							function(i, item) {
								sel.append("<option value='"+item.re_code+"'>"
										+ item.re_name + "</option>");
							});
				}
				$(document).ready(function() {
					$.ajax({
						type : "get",
						dataType : "jsonp",
						url : "http://res.42du.cn/region/init",
						jsonpCallback : "callback0"
					});
					$("#prov").change(function() {
						var v = $(this).val();
						$.ajax({
							type : "get",
							dataType : "jsonp",
							url : "http://res.42du.cn/region/prov/" + v,
							jsonpCallback : "callback1"
						});
					});
					$("#city").change(function() {
						var v = $(this).val();
						$.ajax({
							type : "get",
							dataType : "jsonp",
							url : "http://res.42du.cn/region/city/" + v,
							jsonpCallback : "callback2"
						});
					});
					$("#county").change(function() {
						var v = $(this).val();
						$.ajax({
							type : "get",
							dataType : "jsonp",
							url : "http://res.42du.cn/region/county/" + v,
							jsonpCallback : "callback3"
						});
					});
					$("#town").change(function() {
						var v = $(this).val();
						$.ajax({
							type : "get",
							dataType : "jsonp",
							url : "http://res.42du.cn/region/" + v,
							jsonpCallback : "callback4"
						});
					});
				});
			</script> -->

			<!-- <script>
				document.getElementById('ve').setAttribute("disabled",
						"disabled");

				function check() {

					if (document.getElementById("hzs1").checked == false
							&& document.getElementById("ltqy").checked == false) {//复选框未选中

						document.getElementById('ve').setAttribute("disabled",
								"disabled");
					} else if (document.getElementById("hzs1").checked
							|| document.getElementById("ltqy").checked) {

						document.getElementById('ve').removeAttribute(
								"disabled");
					}
				}

				function no() {
					if (document.getElementById("zhuce2").checked) {//复选框选中
						//	
						document.getElementById('mingcheng1').setAttribute(
								"disabled", "disabled");
					} else if (document.getElementById("zhuce1").checked) {
						document.getElementById('mingcheng1').removeAttribute(
								"disabled");
					}
				}
			</script> -->
			<!-- 000000000000000000000000000000000000000000000000000 start -->


			<!-- 000000000000000000000000000000000000000000000000000 start-->
			<script src="../js/paginathing.js"></script>
			<script src="../js/wjmanage/wjlist.js"></script>
			<script src="../js/vegetablesLX/vegetablesLx.js"></script>
			<script src="../js/managementLX/managementLx.js"></script>
			<script src="../js/studyLX/studyLx.js"></script>
			<script src="../js/technologyLX/technologyLx.js"></script>
			<script src="../js/enter/updata.js"></script>
			<script src="../js/sfxian/searchInfo.js"></script>
</body>
</html>
