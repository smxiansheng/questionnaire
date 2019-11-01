<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div class="page-header">
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
	<h1>New User <small>User registration</small></h1>
</div>
		<form class="form-horizontal" action="php/new-user.php" method="post">
				<fieldset>
						
					<div class="control-group">
						<label class="control-label" for="name" >用户名</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="xname" name="name" /><font color='red'>*</font>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="name" >姓名</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="xingming" name="name" /><font color='red'>*</font>
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
							<input type="text" class="input-xlarge" id="phone" name="phone" /><font color='red'>*</font>
						</div>
					</div>
					
					
					<div class="control-group">
	 <label class="control-label" for="role">省</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select id="prov" name="province" style="width:100px;">  
            </select>
             市 <select id="city" name="city" style="width:100px;">  
            </select>
            县<select id="county" name="xian" style="width:100px;">  
            </select>
					</div>
					
					
					
					<div class="control-group"id="jibie">
						<!-- <label class="control-label" for="user">用户级别</label>
						<div class="controls">
							<select style="width:160px">
							<option value= 1 >超级管理员</option>
							<option value= 2 >站级用户</option>
							</select>	
													
						</div> -->
					</div>
					
					<div class="control-group"id="pbmmc">
						<!-- <label class="control-label" for="planning">部门名称</label>
						<div class="controls">
							<select style="width:160px">
							<option></option>
							</select>	
											
						</div> -->
					</div>
					
					<div class="control-group" id="zjmc">
					<!-- <p>
                  <label class="control-label" for="role">省</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select id="province" name="province" style="width:100px;">  
            </select>
             市 <select id="city" name="city" style="width:100px;">  
            </select>
            县<select id="county" name="xian" style="width:100px;">  
            </select>
            
                </p> -->
					</div>	
					<div class="control-group" id="xjmc">
					
					</div>	
					<!--<div class="control-group">
						<label class="control-label" for="role">角色</label>
						<div class="controls">
							<select id="role">
								<option value="admin">管理员</option>
								<option value="user" selected>用户</option>
							</select>
						</div>
					</div>	-->
					<div class="control-group">
		
					</div>
					<div class="form-actions" style="background: none;">
						<input type="button" onclick="insertuser()" class="btn btn-success btn-large" value="新建用户" /> <!--<a class="btn" href="users.php">返回</a>-->
					</div>					
				</fieldset>
			</form>
	
      <hr>
      
        <script src="../js/ProviCityArea.js"></script>
        <script type="text/javascript">  
		addressInit('prov', 'city', 'county'); 
		</script> 

      
   
    <script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/usermanage/usera.js"></script>
	<script src="../js/usermanage/insertuser.js"></script>