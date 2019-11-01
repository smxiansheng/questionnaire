$(document)
		.ready(
				function() {
					var PageContext = $("#PageContext").val();
					var name = "";

					$
							.ajax({
								url : PageContext + "/bumenSelectname.do", // 后台url
								data : { // 数据
									"bumenmingcheng" : name
								},
								type : "POST", // 类型，POST或者GET
								dataType : 'json', // 数据返回类型，可以是xml、json等
								success : function(data) { // 成功，回调函数
									var cc = "";
									$
											.each(
													data,
													function(i, item) {
														cc += '<tr class="list-roles">';
														cc += '<td>' + (i + 1)
																+ '</td>';
														cc += '<td>'
																+ item.bumenmingcheng
																+ '</td>';
														if (item.suoshubumen == null) {
															cc += "<td>&nbsp</td>";
														} else {
															cc += "<td>"
																	+ item.suoshubumen
																	+ "</td>";
														}

														cc += '<td><a href="#"  class="btn btn-mini "  onclick="delectbyid(\''
																+ item.id
																+ '\')"><i class="icon-trash"></i>删除 </a></td></tr>';
													});
									$("#bumen").html(cc);

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

// 部门搜索--按钮---方法
function selectbumen() {
	var PageContext = $("#PageContext").val();
	var name = $("#lxname").val();

	$
			.ajax({
				url : PageContext + "/bumenSelectname.do", // 后台url
				data : { // 数据
					"bumenmingcheng" : name
				},
				type : "POST", // 类型，POST或者GET
				dataType : 'json', // 数据返回类型，可以是xml、json等
				success : function(data) { // 成功，回调函数
					var cc = "";
					$
							.each(
									data,
									function(i, item) {
										cc += '<tr class="list-roles">';
										cc += '<td>' + (i + 1)
												+ '</td>';
										cc += '<td>'
												+ item.bumenmingcheng + '</td>';
										if (item.suoshubumen == null) {
											cc += "<td>&nbsp</td>";
										} else {
											cc += "<td>" + item.suoshubumen
													+ "</td>";
										}

										cc += '<td><a href="#"  class="btn btn-mini "  onclick="del()"><i class="icon-trash"></i>删除 </a></td></tr>';
									});
					$("#bumen").html(cc);

				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
					// 状态码
					alert(XMLHttpRequest.status + "<br/>"
							+ XMLHttpRequest.readyState + "<br/>" + textStatus);
				}
			});
}

function delectbyid(id) {
	var PageContext = $("#PageContext").val();
	var a = 0;
	a = id;
	$
			.ajax({
				url : PageContext + "/bumenSelectparent.do", // 后台url
				data : { // 数据
					"id" : a
				},
				type : "POST", // 类型，POST或者GET
				dataType : 'json', // 数据返回类型，可以是xml、json等
				success : function(data) { // 成功，回调函数
					if (data) {

						$
								.ajax({
									url : PageContext + "/bumenDelectbyid.do", // 后台url
									data : { // 数据
										"id" : a
									},
									type : "POST", // 类型，POST或者GET
									dataType : 'json', // 数据返回类型，可以是xml、json等

									success : function(data) { // 成功，回调函数
										if (data) {
											alert("删除成功");
											$
													.ajax({
														url : PageContext
																+ "/bumenSelectname.do", // 后台url
														data : { // 数据
															"bumenmingcheng" : name
														},
														type : "POST", // 类型，POST或者GET
														dataType : 'json', // 数据返回类型，可以是xml、json等
														success : function(data) { // 成功，回调函数
															var cc = "";
															$
																	.each(
																			data,
																			function(
																					i,
																					item) {

																				cc += '<tr class="list-roles"><td>'
																					+(i+1)
																					+'</td><td>'
																						+ item.bumenmingcheng
																						+ '</td>';
																				if (item.suoshubumen == null) {
																					cc += "<td>&nbsp</td>";
																				} else {
																					cc += "<td>"
																							+ item.suoshubumen
																							+ "</td>";
																				}

																				cc += '<td><a href="#"  class="btn btn-mini "  onclick="delectbyid(\''
																						+ item.id
																						+ '\')"><i class="icon-trash"></i>删除 </a></td></tr>';
																			});
															$("#bumen")
																	.html(cc);

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
														}
													});
										} else {
											alert("删除失败");
										}

									},
									error : function(XMLHttpRequest,
											textStatus, errorThrown) { // 失败，回调函数
										// 状态码
										alert(XMLHttpRequest.status + "<br/>"
												+ XMLHttpRequest.readyState
												+ "<br/>" + textStatus);
									}
								});
					} else {
						alert("此部门下有所属县，请删除所属县！");
					}

				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
					// 状态码
					alert(XMLHttpRequest.status + "<br/>"
							+ XMLHttpRequest.readyState + "<br/>" + textStatus);
				}
			});

}
