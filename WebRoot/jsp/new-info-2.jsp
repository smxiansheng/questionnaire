<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>
<div class="page-header">
	<h1>Basic  <small>Info registration</small></h1>
</div>
		<form class="form-horizontal" action="int-main.php" method="POST">
				<fieldset>
	<div class="control-group">
						<label class="control-label" for="email">经营主体类型</label>
		<div class="controls">
							<input type="text" name="jyztlxmc" class="input-xlarge" id="经营主体类型" />
		</div>
    </div>
					
					
				<div class="form-actions" style="background: none;">
						<input type="button" class="btn btn-success btn-large" onclick="addManagement()" value="添加信息" /> <!--<a class="btn" href="main-stats.php">返回</a>-->
				</div>					
				</fieldset>
			</form>
		
      <hr>

      
 

 <script>
function addManagement(){
  var str=$("#经营主体类型").val();
	  /* $("#f").click(); */
	  $.ajax({
			url :"${path}/addManagement.do?jyztlxmc="+str,
			//data:{"scmc": str},
			type:"GET",
			dataType : "text",
			success : function(data) {
			 if(data==1){
			 alert("添加成功");
			 $("#i").click();
			 }else{
			 alert("添加失败");
			 };
			 
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
