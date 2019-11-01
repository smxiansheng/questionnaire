<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="page-header">
	<h1>新建部门  <small>新建部门 </small></h1>
</div>
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
		<form class="form-horizontal" action="php/new-user.php" method="post">
				<fieldset>
						<div class="control-group">
						<!-- <label class="control-label" for="user">部门名称</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="user" name="user" />
						</div> -->
						&nbsp;&nbsp; &nbsp;&nbsp; 	&nbsp;&nbsp; &nbsp;&nbsp; 	&nbsp;&nbsp; &nbsp;&nbsp; 	&nbsp;&nbsp; &nbsp;
				 省&nbsp;&nbsp; <select id="prov1" name="province" style="width:100px;">  </select>
   市 &nbsp;&nbsp;<select id="city1" name="City" style="width:100px;">  </select>
  县&nbsp;&nbsp;<select id="county1" name="xian" style="width:100px;">  </select>
					</div>
					<div class="control-group">
					<label class="control-label" for="name">所属部门</label>
					<div class="controls" id="suoshubumen">
					
					</div>
					</div>
					<!-- <div class="control-group">
						<label class="control-label" for="name">所属部门</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="suoshubumen" name="name" />
							<select style="width:120px" id="suoshubumen">
							<option></option>
							</select>
						</div>
					</div> -->
					<!--<div class="control-group">
						<label class="control-label" for="email">E-mail</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="email" name="email" />
						</div>
					</div>-->
					<!--<div class="control-group">
						<label class="control-label" for="pnohe">联系方式</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="phone" name="phone" />
						</div>
					</div>-->
					<!--<div class="control-group">-->
					<!-- <p>
                  <label class="control-label" for="role">省</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select id="province" name="province" style="width:100px;">  
            </select>
             市 <select id="city" name="city" style="width:100px;">  
            </select>
            县<select id="county" name="xian" style="width:100px;">  
            </select>
            
                </p> -->
				<!--	</div>	-->
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
							<input type="button" onclick="insertbumen()" class="btn btn-success btn-large" value="新建信息" /> <!--<a class="btn" href="users.php">返回</a>-->
					</div>					
				</fieldset>
			</form>
	
      <hr>
      
     <script src="../js/ProviCityArea.js"></script>
   <script type="text/javascript">
   addressInit('prov1', 'city1', 'county1');
</script>   
	 <script src="../js/ProviCityArea.js"></script>
    <script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/bumen/bumeninsert.js"></script>