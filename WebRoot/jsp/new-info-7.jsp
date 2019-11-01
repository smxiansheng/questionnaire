<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="page-header">
	<h1>
		新建部门 <small>新建部门</small>
	</h1>
</div>
<input id="PageContext" type="hidden"
	value="${pageContext.request.contextPath}" />
<form class="form-horizontal" action="php/new-user.php" method="post">
	<fieldset>
		<div id=bumen>
			<label class="control-label" for="user">请选择新建部门级别</label>
			<div class="controls">
				<select style="width:160px" id="bumenjibie"onchange="bumenjibieChange()">
					<option value=1>片级部门</option>
					<option value=2>站级部门</option>
					<option value=3>县级部门</option>
				</select>

			</div>
		</div>
		<div id=zhanbumenname>
			
		</div>
		<div id=xianbumenname>
			
		</div>
		<div id=bumenname>
			<label class="control-label" for="user">部门名称</label>
			<div class="controls">
				<input type="text" class="input-xlarge" id="user" name="user" />

			</div>
		</div>
		
		
		<div class="control-group"></div>
		<div class="form-actions" style="background: none;">
			<input type="button" onclick="insertbumen()"
				class="btn btn-success btn-large" value="新建信息" />
			<!--<a class="btn" href="users.php">返回</a>-->
		</div>
	</fieldset>
</form>

<hr>



<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/bumen/bumeninsert2.js"></script>