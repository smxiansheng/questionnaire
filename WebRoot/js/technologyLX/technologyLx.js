//zhp added 2018-7-1---蔬菜管理
function test9jsp(PageContext) {
	$.ajax({
		url : "../jsp/test9.jsp",
		success : function(data) {

			$("#dd").html(data);
			$("#l").addClass("active");
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
			$("#new-4").click(function() {
				$.ajax({
					url : "new-info-4.jsp",
					success : function(data) {

						$("#dd").html(data);

					}
				});

			});

		}
	});
}
// --获取技术数据
function getTechnologyData(PageContext) {
	$
			.ajax({
				url : PageContext+"/searchTechnology.do",
				type : "POST",
				dataType : "json",
				success : function(data) {
					$
							.each(
									data,
									function(i, BJslx) {
										var cc = "";
										cc += '<tr height="50"><td>'
												+ BJslx.jslxid + "</td><td>"
												+ BJslx.jslxmc + "</td>";

										cc += '<td><a class="btn btn-mini" onclick="deleteTechnology(this)"><i class="icon-trash"></i>删除</a></td>';
										$("#TechnologyXianShi").append(cc);
									});
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
					// 状态码
					alert("获取技术数据:" + XMLHttpRequest.status + " "
							+ XMLHttpRequest.readyState + " " + textStatus);
				}
			});
}