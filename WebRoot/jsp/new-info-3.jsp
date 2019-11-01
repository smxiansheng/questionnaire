<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>

	<div class="page-header">
				<h1>Basic  <small>Info registration</small></h1>
			</div>
		<form class="form-horizontal" action="int-record.php" method="POST">
				<fieldset>
										<div class="control-group">
						<label class="control-label" for="email">学历</label>
						<div class="controls">
							<input type="text" name="a_xl" class="input-xlarge" id="学历" />
						</div>
					</div>
					
					<div class="control-group">
		
					</div>
					<div class="form-actions" style="background: none;">
						<input type="button" class="btn btn-success btn-large" onclick="addStudy()" value="添加信息" /> <!--<a class="btn" href="record-stats.php">返回</a>-->
					</div>					
				</fieldset>
			</form>
	

      <hr>

      
    <script>
function addStudy(){
  var str=$("#学历").val();
	  /* $("#f").click(); */
	  $.ajax({
			url :"${path}/addStudy.do?aXl="+str,
			//data:{"scmc": str},
			type:"GET",
			dataType : "text",
			success : function(data) {
			 if(data==1){
			 alert("添加成功");
			 $("#k").click();
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

    