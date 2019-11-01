function save(){
var a_scjywt=$("#txtCon1").val();
//alert(":"+a_scjywt);
var a_jsbmwt=$("#txtCon2").val();
var a_zfbmwt=$("#txtCon3").val();



$.ajax({
	type:"POST",
	url:"./php/enter-e.php",
 
	data:{"a_scjywt":a_scjywt,"a_jsbmwt":a_jsbmwt,"a_zfbmwt":a_zfbmwt},


      success:function(data)
      {   
     alert("成功");
       
    },
    error:function(data)
    {
    alert("错误");
    }
      
  });
}