//zhp added 2018-7-1---问卷管理---问卷列表
function test2jsp(PageContext) {
	$.ajax({
		url : "../jsp/test2.jsp",
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

			$("#z").removeClass("active");

		}
	});
}
// ----获取问卷列表数据${path}
function getQuestionlist(PageContext) {
	$.ajax({
				url : PageContext + "/searchQuestionlist.do",
				type : "POST",
				dataType : "json",
				success : function(data) {
					$.each(data,function(i, AWjxx) {
						
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
							cc += (i + 1) + "</td><td>" + AWjxx.aDcrRealname+ "</td><td>";
							cc += AWjxx.aBfzxm + "</td><td>"+ AWjxx.aBfzlxfs + "</td><td>";
							cc += AWjxx.aBfznl + "</td><td>"
												+ AWjxx.aZhprovince
												+ "</td><td>";
										cc += AWjxx.aZhcity + "</td><td>"
												+ AWjxx.aZhcounty 
												+ "</td><td>";
										cc += AWjxx.aXueli + "</td><td>";
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

										// cc+='<td><a class="btn btn-mini"
										// onclick="deleteStudy(this)"><i
										// class="icon-trash"></i>删除</a></td>';
										$("#QuestionlistXianShi").append(cc);
									});
					$("#QuestionlistXianShi").paginathing({
						perPage : 10,
						insertAfter : '.table',
						pageNumbers : true
					});
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
					// 状态码
					alert("获取问卷列表数据:" + XMLHttpRequest.status + " "
							+ XMLHttpRequest.readyState + " " + textStatus);
				}
			});
}