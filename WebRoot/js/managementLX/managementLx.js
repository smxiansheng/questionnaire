//zhp added 2018-7-1---蔬菜管理
function test6jsp(PageContext) {
	$.ajax({
		url : "../jsp/test6.jsp",
		success : function(data) {

			$("#dd").html(data);
			$("#i").addClass("active");
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
			$("#new-2").click(function() {
				$.ajax({
					url : "new-info-2.jsp",
					success : function(data) {

						$("#dd").html(data);

					}
				});

			});

		}
	});
}
// ----获取蔬菜列表数据${path}
function getManagementData(PageContext) {
	$
			.ajax({
				url : PageContext + "/searchManagement.do",
				type : "POST",
				dataType : "json",
				success : function(data) {
					$
							.each(
									data,
									function(i, BJyztlx) {
										var cc = "";
										cc += '<tr height="50"><td>'
												+ BJyztlx.jyztlxid
												+ "</td><td>"
												+ BJyztlx.jyztlxmc + "</td>";

										cc += '<td><a class="btn btn-mini" onclick="deleteVegetables(this)"><i class="icon-trash"></i>删除</a></td>';
										$("#ManagementXianShi").append(cc);
									});
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
					// 状态码
					alert("提取经营主体数据:" + XMLHttpRequest.status + " "
							+ XMLHttpRequest.readyState + " " + textStatus);
				}
			});
}