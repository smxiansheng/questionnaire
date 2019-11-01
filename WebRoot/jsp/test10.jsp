<%@ page language="java" import="java.util.*,com.ssm.model.AYhb"
	pageEncoding="utf-8"%>
<input id="PageContext" type="hidden"
	value="${pageContext.request.contextPath}" />
<div id="part">
	<div class="page-header">
		<h1>
			用户查询 <small>用户查询</small>
		</h1>
	</div>
	<div class="page-search">


		<form>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="nameid"
				name="a_xm" placeholder="请输入姓名" style="width: 300px;" />&nbsp; <input
				type="button" onclick="searchUsers()" id="soub" value="搜索"
				style="width: 50px;" />
			<!--<input type="button" id="soub" value="新建信息" style="width: 50px;position: relative;float: right;left: -100px;" />-->
			<a href="#" id="new-5" class="btn btn-success"
				style="position: relative;float: right;left: -100px;">新建用户</a>
		</form>


	</div>
	<table id="a"
		class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>姓名</th>
				<th>用户名</th>
				<th>E-mail</th>
				<th>联系方式</th>
				<th>部门名称</th>
				<th>角色</th>
				<th>管理</th>
			</tr>
		</thead>
		<tbody id="list_users">



		</tbody>
	</table>

	<div class="pagination">
		<ul>
			<li><a href="#">Prev</a>
			</li>
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a>
			</li>
			<li><a href="#">3</a>
			</li>
			<li><a href="#">4</a>
			</li>
			<li><a href="#">Next</a>
			</li>
		</ul>
	</div>


</div>
<input type="text" id="userid" style="display:none">


<!--隐藏的修改信息表	-->
<div id="xiugai"
	style="display: none;position: relative;left: 300px;top: 30px;background-color: #FFFFFF;">
	<form class="cd-form">
		<input id="aid" type="hidden" value="" />

		<div class="control-group">
			<label class="control-label" for="name">姓名</label>
			<div class="controls">
				<input type="text" class="input-xlarge" id="xingming" name="name" /><font
					color='red'>*</font>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="email">E-mail</label>
			<div class="controls">
				<input type="text" class="input-xlarge" id="email" name="email" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="pnohe">联系方式</label>
			<div class="controls">
				<input type="text" class="input-xlarge" id="phone" name="phone" /><font
					color='red'>*</font>
			</div>
		</div>


		<div class="control-group">
			省<select id="prov" name="province"
				style="width:100px;">
			</select> 市 <select id="city" name="city" style="width:100px;">
			</select> 县<select id="county" name="xian" style="width:100px;">
			</select>
		</div>



		<div class="control-group" id="jibie"></div>

		<div class="control-group" id="bmmc"></div>
		
		<div class="control-group" id="zbmmc"></div>

		<div class="control-group" id="xjmc"></div>
		
		&nbsp; &nbsp; &nbsp; &nbsp;<a href="#0" id="queding"
			onclick="queding()" class="btn btn-success">确定</a>
	</form>
</div>
<!--隐藏信息表结束-->
     <script src="../js/ProviCityArea.js"></script>
        

<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/usermanage/usera.js"></script>


