function chakan(DemonstrationXianId,pageContextUrl,oprType){
	
	
          
	$.ajax({
				url : pageContextUrl+"/seeDemonstrationXianById.do",
				type : "post",
				dataType : "text",
				data : {
					"aSfxid" : DemonstrationXianId
				},
				success : function(data) {
				           
				   // alert(data);
					//alert(obj.csfxcyjyzkdcList);
					var obj = JSON.parse(data);  
				//obj.csfxjcxx.aDcr;
			//年份设置		
	           var endYear = "";//结束年份 		
			for(var i = 0;(i*5)<obj.csfxcyjyzkdcList.length;i++){
					
				if(i==0){$("#startYear").val(obj.csfxcyjyzkdcList[i].nf);}//开始年份
				endYear=obj.csfxcyjyzkdcList[i*5].nf;//结束年份往后推
					
			}
			
				$("#endYear").val(endYear);
				
			//蔬菜种类设置
				var zl=new Array();
				
		if(obj.csfxcyjyzkdcList[0].cplb!=""){
			
			
		zl=	obj.csfxcyjyzkdcList[0].cplb.split("-");
		        
		
		}		
		//alert(zl);
				
      var xl=new Array("辣椒","葱","姜","蒜","洋葱","韭菜","芥菜","分蘖","韭葱","小香葱");
			//辛辣类
      var ss=new Array("莲藕","芋头","茭白","荸荠","水芹","菱角","慈姑","蕹菜","莼菜","蒲菜","芡实","豆瓣菜");
			//水生类
    //蔬菜类型设置选中
      
      for(let index in xl) {
    	    for(let i in zl){
    	    	if(xl[index]==zl[i]){$("#lb").val("辛辣蔬菜");	
    	    	setXLVegetablesType();
    	    	}
    	    	$("input:checkbox[value='"+zl[i]+"']").attr('checked','true');
    	    } 
    	};
    	for(let index in ss) {
    	    for(let i in zl){
    	    	if(ss[index]==zl[i]){$("#lb").val("水生蔬菜");
    	    	setSSVegetablesType();
    	    	
    	    	}
    	    	$("input:checkbox[value='"+zl[i]+"']").attr('checked','true');
    	    } 
    	};
				
				
				//表基础信息	
			    		
			     	 
				$("#pingzhong").val(obj.csfxjcxx.aDcrRealname);
				//alert("1111111:"+obj.csfxjcxx.aDcr);
				$("#aDcrid").val(obj.csfxjcxx.aDcr);
				$("#nian").val(obj.csfxjcxx.aLxdh);
				
				
				//调查时间
				if(obj.csfxjcxx.aDcsj){
				var date = new Date(obj.csfxjcxx.aDcsj).toLocaleDateString(); 
			       
				var str = [];
				//re = new RegExp("/","g"); //定义正则表达式
				          //第一个参数是要替换掉的内容，第二个参数"g"表示替换全部（global）。
				str = date.split("/"); //第一个参数是正则表达式。
	            var dt="";
	           for(var i=0;i<str.length;i++){
	        	   
	        	   if(str[i].length==1){
	        		   str[i]="0"+str[i];
	        	   }
	        	  if(i<(str.length-1)) 
	        	   dt=dt+str[i]+"-";
	        	  else 
	        		  dt=dt+str[i];
	           }
			   
				$("#aDcsj").val(dt);
				}
				
				$("#aZhsyzwjfzryx").val(obj.csfxjcxx.aZhsyzwjfzryx);
				
				$("#pro").val(obj.csfxjcxx.province);
				$("#cit").val(obj.csfxjcxx.city);
				$("#cou").val(obj.csfxjcxx.xian);
				//alert(obj.csfxjcxx.province);
		     	$("#aprovincename").val(obj.csfxjcxx.aSf);
		     	$("#acityname").val(obj.csfxjcxx.aCity);
		     	$("#axianname").val(obj.csfxjcxx.aXian);
				
				            
				  // 示范县蔬菜生产情况     
				
				
				according_select(obj,zl);											 
				//产业经营状况	
				
																
				//	农业园区建设情况
				$("#txtCon").val(obj.csfxnyyqjsqk.nqsl);
				$("#txtCon1").val(obj.csfxnyyqjsqk.nqmc);
				$("#txtCon2").val(obj.csfxnyyqjsqk.sjjgqyxx);
				$("#txtCon3").val(obj.csfxnyyqjsqk.wfhd);
				
				
				//产业发展报告或产业发展规划
		             
				$("#sfxcyfz").val(obj.csfxfz.sfxcyfz);
		if(oprType=="select"){$('input,select,textarea,td', $('form[name="my_form"]')).prop('readonly', true);
		               
		
		      $("#sclx").attr("disabled","true");  //或则true;
		      $("#startYear").attr("disabled","true");
		      $("#endYear").attr("disabled","true");
		      $("#lb").attr("disabled","true"); 
		      $("#sclx").prop('readonly', true);
		   //   $('checkbox',$('form[name="my_form"]')).prop('disabled', true);
		     // $("#vs").hide();
		
		
		$("#btnReturn").removeAttr("readonly");//取消只读的设置
		
		} 
				

				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { //失败，回调函数
					// 状态码
					alert(XMLHttpRequest.status + " "
							+ XMLHttpRequest.readyState + " " + textStatus);
				}
			});

           // alert("5555"+$("#aDcr").val());

}




function add(pageContextUrl) {
	

	
	$.ajax({
		url : pageContextUrl+"/addmodelCounty.do",
		type : "post",
		
		 contentType : 'application/json;charset=utf-8', //设置请求头信息
         dataType : "json",
         data :{},
		success : function(data) {
		           
	
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { //失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + " "
					+ XMLHttpRequest.readyState + " " + textStatus);
		}
	});
	
	
	
	
	
	};