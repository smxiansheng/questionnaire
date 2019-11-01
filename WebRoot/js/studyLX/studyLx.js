//zhp added 2018-7-1---蔬菜管理
function test8jsp(PageContext) {
	$.ajax({
		url : "../jsp/test8.jsp",
		success : function(data) {

			$("#dd").html(data);
			$("#k").addClass("active");
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
			$("#new-3").click(function() {
				$.ajax({
					url : "new-info-3.jsp",
					success : function(data) {

						$("#dd").html(data);

					}
				});

			});

		}
	});
}
// ----获取蔬菜列表数据${path}
function getStudyData(PageContext) {
	$
			.ajax({
				url : PageContext+"/searchStudy.do",
				type : "POST",
				dataType : "json",
				success : function(data) {
					$
							.each(
									data,
									function(
											i,
											BXl) {
										var cc = "";
										cc += '<tr height="50"><td>'
												+ BXl.aXlid
												+ "</td><td>"
												+ BXl.aXl
												+ "</td>";

										cc += '<td><a class="btn btn-mini" onclick="deleteStudy(this)"><i class="icon-trash"></i>删除</a></td>';
										$(
												"#StudyXianShi")
												.append(
														cc);
									});
				},
				error : function(
						XMLHttpRequest,
						textStatus,
						errorThrown) { //失败，回调函数
					// 状态码
					alert("获取学历数据:"
							+ XMLHttpRequest.status
							+ " "
							+ XMLHttpRequest.readyState
							+ " "
							+ textStatus);
				}
			});
} 