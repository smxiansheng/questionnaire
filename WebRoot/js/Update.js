function update(){

var wjid=$("#a_wjid").val();
var wjbm = $("#text1").val();
    var wjsj = $("#text2").val();
    var dcrid= $("#text3").val();
    var bfzxm = $("#text4").val();
    var bfzlxfs =$("#text5").val();
    var bfznl =$("#text6").val();
    var sf = $ ("#province").val();
    var city=$("#city").val();
    var xian = $("#xian").val();
    var xiang = $("#xiang").val();
    var cun = $("#cun").val();
    var xueli = $("#xueli").val();
    var sfkd = $("#kuoda").val();
    var kdyy = $("#yuanyin").val();
    var scbt =$("#butie").val();
    var sfzcpp = $("#zhuce").val();
    var ppmc = $("#mingcheng").val();


     var jyzt=new Array();  
$('input[name="jyztlx"]:checked').each(function(){  
    jyzt.push($(this).val());//向数组中添加元素  
});  
var a_jyztmc=jyzt.join('-');//将数组元素连接起来以构建一个字符串  
 
/*alert(":"+a_jyztmc);*/
    
           

   var sc=new Array();  
$('input[name="sc"]:checked').each(function(){  
    sc.push($(this).val());//向数组中添加元素  
});  
var a_scmc=sc.join('-');//将数组元素连接起来以构建一个字符串  
 
/*alert(":"+a_scmc);*/


   
  
   var jyhj=new Array();  
$('input[name="jyhj"]:checked').each(function(){  
    jyhj.push($(this).val());//向数组中添加元素  
});  
var a_jyhjmc=jyhj.join('-');//将数组元素连接起来以构建一个字符串  
 
/*alert(":"+a_jyhjmc);*/


   var scfs=new Array();  
$('input[name="scfs"]:checked').each(function(){  
    scfs.push($(this).val());//向数组中添加元素  
});  
var a_scfsmc=scfs.join('-');
/*alert(":"+a_scfsmc);*/
    var a_jyfx1=$("#feng1 option:selected").val();
    var a_jyfx2=$("#feng2 option:selected").val();
    var a_jyfx3=$("#feng3 option:selected").val(); 
     /*alert(":"+a_jyfx1+a_jyfx2+a_jyfx3);*/

  var zcjr=new Array();  
$('input[name="zcjr"]:checked').each(function(){  
    zcjr.push($(this).val());//向数组中添加元素  
});  
var a_zczclx=zcjr.join('-');
 var qita=$("#qitat").val();
 a_zczclx=a_zczclx+"-"+qita;
/*alert(":"+a_zczclx);*/
    




     $.ajax({
    type:"POST",
    url:"./php/update.php",
    data:{"wjid":wjid,"wjbm":wjbm,"wjsj":wjsj,"dcrid":dcrid,
          "bfzxm":bfzxm,"bfzlxfs":bfzlxfs,"bfznl":bfznl,
          "sf":sf,"city":city,"xian":xian,"xiang":xiang,
          "cun":cun,"xueli":xueli,"sfkd":sfkd,"kdyy":kdyy,"scbt":scbt,"sfzcpp":sfzcpp,
          "ppmc":ppmc,"a_jyztmc":a_jyztmc,"a_scmc":a_scmc,"a_jyhjmc":a_jyhjmc,"a_scfsmc":a_scfsmc,
          "a_jyfx1":a_jyfx1,"a_jyfx2":a_jyfx2,"a_jyfx3":a_jyfx3,"a_zczclx":a_zczclx},
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
     alert(""+data);
    }
      
  });
  





















}