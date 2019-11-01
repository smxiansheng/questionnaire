//zhp added 2018-7-1---蔬菜管理
function test3Jsp(PageContext) {
	$.ajax({
		url : "../jsp/test3.jsp",
		success : function(data) {

			$("#dd").html(data);
			$("#f").addClass("active");
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

			$("#z").removeClass("active");
			$("#new-1").click(function() {
				$.ajax({
					url : "new-info-1.jsp",
					success : function(data) {

						$("#dd").html(data);

					}
				});

			});

		}
	});
}
// ----获取蔬菜列表数据${path}
function getVegetablesData(PageContext) {
	$
			.ajax({
				url : PageContext + "/searchVegetables.do",
				type : "POST",
				dataType : "json",
				success : function(data) {

					// 获取分类
					var ShuCaiLeiXing = new Array();
					$.each(data, function(i, bsclx) {
						if (bsclx.scsx == 0) {
							ShuCaiLeiXing.push(bsclx);
						}
					});
					// 获取td
					$
							.each(
									data,
									function(i, bsclx) {
										if (bsclx.scsx == 0) {
										} else {
											for ( var i = 0; i < ShuCaiLeiXing.length; i++) {
												if (ShuCaiLeiXing[i].scid == bsclx.scsx) {
													bsclx.scsx = ShuCaiLeiXing[i].scmc;
												}
											}

											var cc = "";
											cc += '<tr height="50"><td>'
													+ bsclx.scid + "</td><td>"
													+ bsclx.scmc + "</td><td>"
													+ bsclx.scsx + "</td>";

											cc += '<td><a class="btn btn-mini" onclick="deleteVegetables(this)"><i class="icon-trash"></i>删除</a></td>';

											// 显示
											$("#vegetablesXianShi").append(cc);
										}
									});

				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
					// 状态码
					alert("提取蔬菜数据方法:" + XMLHttpRequest.status + " "
							+ XMLHttpRequest.readyState + " " + textStatus);
				}
			});
}
