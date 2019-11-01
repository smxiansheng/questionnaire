<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>
<div class="page-header">
	<h1>
		Basic <small>Info registration</small>
	</h1>
</div>
<form class="form-horizontal" action="int-sclx.php" method="POST">
	<fieldset>
		<div class="control-group">
			<label class="control-label" for="email">蔬菜名称</label>
			<div class="controls">
				<input type="text" name="scmc" class="input-xlarge" id="蔬菜种类" />
				蔬菜种类 <select id="ShuCaiZhongLei">
					<option>请选择</option>
				</select>
			</div>
		</div>


		<div class="form-actions" style="background: none;">
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"
				class="btn btn-success btn-large" onclick="addVegetables()"
				value="添加信息" />
			<!--<a class="btn" href="stats.php">返回</a>-->
		</div>
	</fieldset>
</form>


<hr>


<script>
	
	//*******调整下拉框
$(function(){
var ShuCaiLeiXing=new Array();;
      $.ajax({
        type:'post',
        url:"${path}/searchVegetables.do",
        dataType:"json",
        success:function(data){
        $.each(data,function(i, bsclx) {
        if (bsclx.scsx == 0) {
				ShuCaiLeiXing.push(bsclx);
			} 
		});	
          // console.log(data);
          $("#ShuCaiZhongLei").empty();
          $("#ShuCaiZhongLei").append("<option value=''>请选择主类</option>");
          $("#ShuCaiZhongLei").append("<option value='0'>添加类别</option>");
          for(var i=0;i<ShuCaiLeiXing.length;i++){
            $("#ShuCaiZhongLei").append('<option value='+ShuCaiLeiXing[i].scid+'>'+ShuCaiLeiXing[i].scmc+'</option>');
          }
       },
       error : function(XMLHttpRequest, textStatus, errorThrown) { //失败，回调函数
						// 状态码
						alert("提取蔬菜数据方法:" + XMLHttpRequest.status + " "
								+ XMLHttpRequest.readyState + " " + textStatus);
					}
      });
     });
	
	
	//添加蔬菜。。。。。品种
	function addVegetables() {
	    var sclxid=$("#ShuCaiZhongLei").val();
		var str = $("#蔬菜种类").val();
		/* $("#f").click(); */
		$.ajax({
			url : "${path}/addVegetables.do?scmc=" + str+"&&scsx="+sclxid,
			//data:{"scmc": str},
			type : "GET",
			dataType : "text",
			success : function(data) {
				if (data == 1) {
					alert("添加成功");
					$("#f").click();
				} else {
					alert("添加失败");
				}
				;

			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { //失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + " " + XMLHttpRequest.readyState
						+ " " + textStatus);
			}

		});

	}
</script>

