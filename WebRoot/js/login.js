
//用户登录是的方法
function login(){
	var username=$("#username").val();
	var password=$("#password").val();
	
	
	
	//判断用户名和密码
	if(username==''||username==null||password==''||password==null){
		
		$("#loginmsg").html("用户名和密码不允许为空");
		return false;
	}
	
	var PageContext = $("#PageContext").val();
	
	
	$.ajax({
		type:"POST",
		url:PageContext+"/login.do",
		data:{
			"aXm":username,
			"aKl":password
		},
		success:function(data){
			
	
			
			if(data=="error"){
				$("#loginmsg").html("用户名或密码错误");
				return false;
			}else{
				 window.location.href='jsp/enter.jsp';
			}
		},
		error:function(data){
			$("#loginmsg").html("用户名或密码错误");
		}
	});
}