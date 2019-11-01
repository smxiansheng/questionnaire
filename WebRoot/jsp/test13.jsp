<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div class="page-header">
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />

	<h1>New Password <small>User password</small></h1>
</div>
		<form class="form-horizontal" action="php/new-user.php" method="post">
				<fieldset>
						<input type="password" class="input-xlarge" id="password" name="bb" style="display:none"/>
					<div class="control-group">
						<label class="control-label" for="password" >原密码</label>
						<div class="controls">
							<input type="password" class="input-xlarge" id="oldpassword" name="oldpassword" AUTOCOMPLETE="OFF"/>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="email">现密码</label>
						<div class="controls">
							<input type="password" class="input-xlarge" id="newpassword" name="newpassword" autocomplete="off"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="pnohe">确定密码</label>
						<div class="controls">
							<input type="password" class="input-xlarge" id="newapassword" name="newapassword" autocomplete="off" />
						</div>
					</div>
					
					
					
					
				
				
					<div class="control-group">
		
					</div>
					<div class="form-actions" style="background: none;">
						<input type="button" onclick="updatapassword()" class="btn btn-success btn-large" value="修改密码" /> <!--<a class="btn" href="users.php">返回</a>-->
					</div>					
				</fieldset>
			</form>
	
      <hr>

      
   
    <script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/usermanage/updatapassword.js"></script>