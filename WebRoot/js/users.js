function users(){

   
   alert("111");


    
 
     $.ajax({
    type:"POST",
    url:"./php/users.php",
    data:{},
    //data:$("#loginform").serialize(),
    //timeout                       //设置请求超时时间
    //dataType:'html',                //预期服务器返回的数据类型
      success:function(data)
      {   
    alert(""+data);
       
    },
    error:function(data)
    {
      //alert("该用户不存在!");
    //  alert(""+data);
    }
      
  });
  






}



/*function chakan(obj){
var  $td= $(obj).parents('tr').children('td');  
var paramName = $td.eq(0).text();

       alert(paramName+2);




}*/