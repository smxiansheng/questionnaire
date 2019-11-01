function get(){

 



     var a_scmc=$("#zhuzai").val();
     var a_bzsj=$("#nian").val()+"-"+$("#yue").val()+"-"+$("#ri").val();
     var a_shsj=$("#nian1").val()+"-"+$("#yue1").val()+"-"+$("#ri1").val();
     var a_bzmj=$("#bo").val();


    var a_nzpcl=$("#nchan").val();
     var a_zcpcl=$("#zchan").val();
     var a_fcpcl=$("#fchan").val();
     var a_nxssr=$("#nxiao").val();
     //var a_zcpjg=$("#text1").val();
     //var a_fcpjg=$("#text1").val();
     //var a_zcb=$("#text1").val();
     var a_zzf=$("#zz").val();
     var a_hff=$("#hf").val();
     var a_njff=$("#njf").val();
     var a_nyf=$("#nyf").val();
     var a_nmf=$("#nmf").val();
     var a_zlzyf=$("#zpf").val();
     var a_jxzyf=$("#jxf").val();
     var a_pgf=$("#pgf").val();
     var a_sf=$("#sf").val();
     var a_clf=$("#xlf").val();
     var a_rsdlf=$("#rsf").val();
     var a_jsfff=$("#jsf").val();
     var a_gjclf=$("#gjf").val();
     var a_xlwhf=$("#wxf").val();
     var a_qtzjfy=$("#qitaf").val();
     var a_gdzczj=$("#gdf").val();
     var a_bxf=$("#bxf").val();
     var a_glf=$("#glf").val();
     var a_cwf=$("#cwf").val();
     var a_xsf=$("#xsf").val();


     var a_jtygts=$("#tianshu").val();


     //var a_jtygrs$("#text1").val();



     var a_ggts=$("#ggt").val();
     var a_gggj=$("#ggj").val();


     //var a_ggrs=$("#text1").val();


     var a_mzzyl=$("#zzyl").val();
     var a_mhfyl=$("#hfyl").val();
     var a_mnmyl=$("#nmyl").val();
     var a_lzdzj=$("#zujin").val();
     var a_zydzz=$("#zhezu").val();

   /*alert(":"+a_bzsj+":"+a_shsj+a_bzmj+a_zcpcl+a_fcpcl+a_nxssr+a_zzf+a_hff+a_njff
    +a_nyf+a_nmf+a_zlzyf+a_jxzyf+a_pgf+a_sf+a_clf+a_rsdlf+a_jsfff+a_gjclf+a_xlwhf+a_qtzjfy+a_gdzczj
    +a_bxf+a_glf+a_cwf+a_xsf+a_jtygts+a_ggts+a_gggj+a_mzzyl+a_mhfyl+a_mnmyl+a_lzdzj+a_zydzz);
*/




   
      $.ajax({
    type:"POST",
    url:"./php/enter-a.php",
    data:{"a_scmc":a_scmc,"a_bzsj":a_bzsj,"a_shsj":a_shsj,"a_bzmj":a_bzmj,"a_zcpcl":a_zcpcl,"a_fcpcl":a_fcpcl,
         "a_nxssr":a_nxssr,"a_zzf":a_zzf,"a_hff":a_hff,"a_njff":a_njff,"a_nyf":a_nyf,
         "a_nmf":a_nmf,"a_zlzyf":a_zlzyf,"a_pgf":a_pgf,"a_sf":a_sf,"a_clf":a_clf,"a_rsdlf":a_rsdlf,"a_jsfff":a_jsfff,
         "a_gjclf":a_gjclf,"a_xlwhf":a_xlwhf,"a_qtzjfy":a_qtzjfy,"a_gdzczj":a_gdzczj,"a_bxf":a_bxf,
         "a_glf":a_glf,"a_cwf":a_cwf,"a_xsf":a_xsf,"a_jtygts":a_jtygts,"a_ggts":a_ggts,"a_gggj":a_gggj,"a_mzzyl":a_mzzyl,
         "a_mhfyl":a_mhfyl,"a_mnmyl":a_mnmyl,
         "a_lzdzj":a_lzdzj,"a_zydzz":a_zydzz
},
    //data:$("#").serialize(),
    //timeout                       //设置请求超时时间
    //dataType:'html',                //预期服务器返回的数据类型
      success:function(data)
      {   
     alert("保存成功");
       
    },
    error:function(data)
    {
      //alert("该用户不存在!");
    }
      
  });
   






}