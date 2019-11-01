<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="page-header">
	<h1>部门管理 <small>部门查询</small></h1>
</div>
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
<div class="page-search">
				<form action="link-stats1.php" method="POST">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="lxname" name="lxname" placeholder="请输入部门名称" style="width: 300px;" />&nbsp;
				
				<input type="button" onclick="selectbumen()" name="soub" value="搜索" style="width: 50px;" />
				<!--<input type="button" id="soub" value="新建信息" style="width: 50px;position: relative;float: right;left: -100px;" />-->
					<a href="#" id="new-6" class="btn btn-success" style="position: relative;float: right;left: -100px;">新建部门</a>
        </form>
				
				
</div>
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
					    <th style="width: 10px;">序号</th>
						<th style="width: 20px;">部门名称</th>
						<th style="width: 60px;">所属部门</th>
						<th style="width: 50px;">管理</th>
					</tr>
				</thead>
				 
					<tbody id="bumen">
						
				
				
			
				<tr class="list-roles" >
					<td></td>
					<td></td>
				
					<td>
						<div class="btn-group">
							<!-- <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">编辑<span class="caret"></span></a>
							<ul class="dropdown-menu pull-right"> -->
							<!--	<li><i class="icon-trash"></i><input type="button" name="delete"  value="删除" onclick="del(this);" /></a></li>-->
							<a href="#"  class="btn btn-mini "  onclick="del();"><i class="icon-trash"></i>删除 </a>
							<!-- </ul> -->
						</div>
					</td>

				</tr>				
				

				</tbody>
				
			</table>
<div class="pagination">
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
</div>
		<!--	<a href="new-infors.html" class="btn btn-success">新建信息</a>-->
		
    <script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/bumen/bumen.js"></script>
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

	
	</script>