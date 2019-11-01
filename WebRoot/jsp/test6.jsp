<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>
	<!-- c标签 -->
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="page-header">
				<h1>Users <small>All users</small></h1>
			</div>
			<div class="page-search">
				<form  method="POST">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="lxname" name="lxname" placeholder="请输入名称" style="width: 300px;"  />&nbsp;
				
				<input type="button" onclick="searchManagementByName()"  name="soub" value="搜索" style="width: 50px;" />
					<a href="#" id="new-2" class="btn btn-success" style="position: relative;float: right;left: -100px;">新建信息</a>
        </form>
				
				
			</div>
			<table class="table table-striped table-bordered table-condensed" id="deleteId">
				<thead>
					<tr>
						<th style="width: 20px;">ID</th>
						<th style="width: 60px;">经营主体类型名称</th>
						<th style="width: 50px;">编辑</th>
					</tr>
				</thead>
				 <tr class="list-roles" id="all">
					<tbody   id="ManagementXianShi">
					<%-- <c:forEach items="${list}" var="bsclx">
				<tr height="50">
					<td>${bsclx.scid}</td>
					<td>${bsclx.scmc}</td>
					<td>
					<div class="btn-group">
					<a class="btn btn-mini "  onclick="deleteItems(this)"><i class="icon-trash"></i>删除 </a>
						</div>
					</td>
				</tr>
			</c:forEach> --%>
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
	$(document).ready(function() {
		$('.dropdown-menu li a').hover(
		function() {
			$(this).children('i').addClass('icon-white');
		},
		function() {
			$(this).children('i').removeClass('icon-white');
		});
		
		if($(window).width() > 760)
		{
			$('tr.list-users td div ul').addClass('pull-right');
		}
	});

//按名字搜索方法
//----显示经营主体界面
				function test6jsp(){
				$.ajax({
						url : "test6.jsp",
						success : function(data) {

							$("#dd").html(data);
							$("#i").addClass("active");
							$("#add").removeClass("active");
							$("#d-1").removeClass("active");
							$("#d-2").removeClass("active");
							$("#e").removeClass("active");
							$("#f").removeClass("active");
							$("#g").removeClass("active");
							$("#h").removeClass("active");

							$("#j").removeClass("active");
							$("#k").removeClass("active");
							$("#l").removeClass("active");
							$("#m").removeClass("active");

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
function searchManagementByName(){
	  var str=$("#lxname").val();
	  /* $("#f").click(); */
	  test6jsp();
	  $.ajax( {
			type :"post",
			url :"${path}/searchManagementByName.do",
			data:{"str": str},
			dataType : "json",
			success : function(data) {
			  $.each(data,function(i, BJyztlx) {
                    var cc = "";
                       cc+='<tr height="50"><td>'+BJyztlx.jyztlxid+"</td><td>"+BJyztlx.jyztlxmc+"</td>";
                       
                        cc+='<td><a class="btn btn-mini" onclick="deleteVegetables(this)"><i class="icon-trash"></i>删除</a></td>';
                       $("#ManagementXianShi").append(cc);	
                           });	
			},
			error : function(XMLHttpRequest, textStatus,
					errorThrown) { //失败，回调函数
				// 状态码
					alert(XMLHttpRequest.status + " "
				+ XMLHttpRequest.readyState + " "
					+ textStatus);
								}
						
		});
  
  }
  
  
  //删除方法
  function deleteVegetables(node){
     var tr1=node.parentNode.parentNode;
    /*  alert(tr1.rowIndex-1);
     alert(tr1.cells[0].innerText); */
     var id=tr1.cells[0].innerText;
     $.ajax({
				url : "${path}/deleteManagementById.do?id="+id,
				type:"GET",
				dataType : "text",
				success : function(data) {
					if(data==1){
					
					$("#i").click(); 
					alert("删除成功");
					}else{
					alert("删除失败");
					}
                 },
				error : function(XMLHttpRequest, textStatus,
					errorThrown) { //失败，回调函数
				// 状态码
					alert(XMLHttpRequest.status + " "
				+ XMLHttpRequest.readyState + " "
					+ textStatus);
								}
							});

					
  }

	</script>