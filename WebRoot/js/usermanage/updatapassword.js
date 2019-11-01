function updatapassword() {

	var PageContext = $("#PageContext").val();
	var oldpassword1 = $("#oldpassword").val();
	var newpassword = $("#newpassword").val();
	var newapassword = $("#newapassword").val();
	//var username = <%= session.getAttribute("currentYhb")%>;
	//alert(oldpassword1);
	//alert(session);
	if (newpassword != newapassword) {
		alert("两次密码不同请重新输入");
		

	} else {
		$.ajax({
			url : PageContext + "/usersupdatapassword.do", // 后台url
			data : { // 数据
				"aKl" : newpassword ,"oldpassword":oldpassword1
			},
			type : "POST", // 类型，POST或者GET
			dataType : 'json', // 数据返回类型，可以是xml、json等
			success : function(data) { // 成功，回调函数
				// alert(data.result);
				// alert(data);
				if (data) {
					alert("更改密码成功");
					$("#oldpassword").val("");
					$("#newpassword").val("");
					$("#newapassword").val("");
				} else {
					alert("更改密码失败");
					$("#oldpassword").val("");
					$("#newpassword").val("");
					$("#newapassword").val("");
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
				// 状态码
				alert(XMLHttpRequest.status + "<br/>"
						+ XMLHttpRequest.readyState + "<br/>" + textStatus);
			}
		});
		
	}
	

}

