
//根据蔬菜类型，查询该类型下的全部蔬菜品种
function getVegByType(aSclx){
	
}


//将后台查询的数据，赋值给页面控件
function updata(data,i){
	$("#wjinsert").hide();
	if(i==0){
		$("#wjupdata").show();
	}
	
	if(i==1){
		$("#wjupdata").hide();
	}
	data = JSON.parse(data);
	
//1.问卷信息基础表
	 //$("#b option:selected").text(data.aWjxx.aSclx);//水生或者辛辣蔬菜
	alert(data.aSctrcc.aScmc);
	if(data.aWjxx.aSclx=="水生蔬菜"){
		 $("#b").val(0);
		 changeCity(0);
		
	
	}else{
		 $("#b").val(1);
		 changeCity(1);
		
	}
	alert("data.aSctrcc.aScmc="+data.aSctrcc.aScmc);
	 $("#citys option:selected").text(data.aSctrcc.aScmc);
	
	 $("#aWjid").val(data.aWjxx.aWjid);
	 $("#text5").val(data.aWjxx.aBfzlxfs);
	 $("#yearcreate").val(data.aWjxx.aCreateTime);
	 $("#text4").val(data.aWjxx.aBfzxm);
	 $("#text5").val(data.aWjxx.aBfzlxfs);
	 $("#text6").val(data.aWjxx.aBfznl);
//	 $("#prov option:selected").val(data.aWjxx.aSf);
//	 $("#city option:selected").val(data.aWjxx.aCity);
//	 $("#county option:selected").val(data.aWjxx.aXian);

	 $("#prov option:selected").text(data.aWjxx.aZhprovince);
	 $("#city option:selected").text(data.aWjxx.aZhcity);
	 $("#county option:selected").text(data.aWjxx.aZhcounty);

	 $("#town option:selected").val(data.aWjxx.aXiang);
	 $("#village option:selected").val(data.aWjxx.aCun);
	 var xueli = data.aWjxx.aXueli;
	 if(xueli=="小学及以下"){
		 $("#xiaoxue").prop("checked", true);
	 }else if(xueli=="初中"){
		 $("#chuzhong").prop("checked", true);
	 }else if(xueli=="高中（包括职高，技校）"){
		 $("#gaozhong").prop("checked", true);
	 }else if(xueli=="大专及以上"){
		 $("#dazuan").prop("checked", true);
	 }
	 
	 $("#ve").val(data.aWjxx.aZw);
	 $("#all").val(data.aWjxx.aGdmj);
	 
	 if(data.aWjxx.aSfzcpp=="是"){
		 $("#zhuce1").prop("checked", true);
	 }else if(data.aWjxx.aSfzcpp=="否"){
		 $("#zhuce2").prop("checked", true);
	 }
	 
	 $("#mingcheng1").val(data.aWjxx.aPpmc);
	 if(data.aWjxx.aSfck=="是"){
		 $("#chanchu1").prop("checked", true);
	 }else if(data.aWjxx.aSfck=="否"){
		 $("#chanchu2").prop("checked", true);
	 }
	 $("#qitat").val(data.aWjxx.aQita);
	 
	 var jyztlx = data.aWjxx.aJyztlx;
	 if(jyztlx=="农户"){
		 $("#nh").prop("checked", true);
	 }else if(jyztlx=="合作社"){
		 $("#hzs1").prop("checked", true);
	 }else if(jyztlx=="龙头企业"){
		 $("#ltqy").prop("checked", true);
	 }else if(jyztlx=="家庭农场"){
		 $("#jtnc").prop("checked", true);
	 }else if(jyztlx=="种植大户"){
		 $("#zzdh").prop("checked", true);
	 }else if(jyztlx=="其他"){
		 $("#qt").prop("checked", true);
	 }
	 
	 var scfs = data.aWjxx.aScfs;
	 if(scfs=="露地栽培"){
		 $("#ludi").prop("checked", true);
	 }else if(scfs=="地膜栽培"){
		 $("#dimo").prop("checked", true);
	 }else if(scfs=="小拱棚栽培"){
		 $("#xiaogong").prop("checked", true);
	 }else if(scfs=="中大棚栽培"){
		 $("#zhongda").prop("checked", true);
	 }else if(scfs=="日光温室栽培"){
		 $("#riguang").prop("checked", true);
	 }
	 
	 
	 $('input[name="zcjr"]:checked').val(data.aWjxx.aZcbz);
	 var zcjr = data.aWjxx.aZcbz;
	 if(zcjr=="补贴政策"){
		 $("#buz").prop("checked", true);
	 }else if(zcjr=="优惠政策"){
		 $("#youz").prop("checked", true);
	 }else if(zcjr=="项目资金"){
		 $("#xiangz").prop("checked", true);
	 }else if(zcjr=="最低价格保险或目标价格保险"){
		 $("#zuiz").prop("checked", true);
	 }else if(zcjr=="其他"){
		 $("#qitaz").prop("checked",true);
	 }
	 
	 //console.log(data.aWjxx.aSfck);
	
	 
	 //2.投入产出表
	 
	
	 $("#pinzhong").val(data.aSctrcc.aScmc);
	 
	 
	 $("#nian").val(data.aSctrcc.aBzsj);
	 $("#nian1").val(data.aSctrcc.aShsj);
	 $("#bo").val(data.aSctrcc.aBzmj);
	 $("#nchan").val(data.aSctrcc.aNcpcl);
	 $("#zchan").val(data.aSctrcc.aZcpcl);
	 $("#fchan").val(data.aSctrcc.aFcpcl);
	 $("#nxiao").val(data.aSctrcc.aNxssr);
	 $("#zxiao").val(data.aSctrcc.aZcpjg);
	 $("#fxiao").val(data.aSctrcc.aFcpjg);
	 $("#zc").val(data.aSctrcc.aZcb);
	 $("#zz").val(data.aSctrcc.aZzf);
	 $("#flf").val(data.aSctrcc.aHff);
	 $("#nyf").val(data.aSctrcc.aNyf);
	 $("#nmf").val(data.aSctrcc.aNmf);
	 $("#jxf").val(data.aSctrcc.aJxzyf);
	 $("#ggf").val(data.aSctrcc.aPgf);
	 $("#jsf").val(data.aSctrcc.aJsfff);
	 $("#bxf").val(data.aSctrcc.aBxf);
	 $("#qitaf").val(data.aSctrcc.aQtzjfy);
	 $("#rgcb").val(data.aSctrcc.aMmrgcb);
	 $("#tudicb").val(data.aSctrcc.aMmtdcb);
	 $("#tianshu").val(data.aSctrcc.aJtygts);
	 $("#gongj").val(data.aSctrcc.aJtygrs);
	 $("#ggfy").val(data.aSctrcc.aGgfy);
	 $("#ggts").val(data.aSctrcc.aGgts);
	 $("#gggj").val(data.aSctrcc.aGggj);
	 $("#ggrs").val(data.aSctrcc.aGgrs);
	 $("#zzyl").val(data.aSctrcc.aMzzyl);
	 $("#hfyl").val(data.aSctrcc.aMhfyl);
	 $("#nmyl").val(data.aSctrcc.aMnmyl);
	 $("#zujin").val(data.aSctrcc.aLzdzj);
	 $("#zhezu").val(data.aSctrcc.aZydzz);
	 $("#fei").val(data.aSctrcc.aOneheji);
	 $("#rgcbhj").val(data.aSctrcc.aTwoheji);
	 $("#tudicb").val(data.aSctrcc.aThreeheji);

	 //3.销售渠道及销售价格
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 //4.技术研发推广需求及评价
	 $("#pingzhong").val(data.aSctrcc.aScmc);
	 //console.log(data.aJList);
	
	 $.each(data.aJList,function(i,item){
		 var aJslx = item.aJslx;
		 var aXjspj = item.aXjspj;
		 var aXyjspj = item.aXyjspj;
		 //alert("222222");
		 function pingjia(i){
			 //alert(i);
			 if(aXyjspj=="非常不满意"){
				 
				 $("#"+aJslx+"fcb").prop('checked',true);
			 }else if(aXyjspj=="不满意"){
				 $("#"+aJslx+"bmy").prop('checked',true);
			 }else if(aXyjspj=="一般"){
				 $("#"+aJslx+"yb").prop('checked',true);
			 }else if(aXyjspj=="比较满意"){
				 $("#"+aJslx+"bjmy").prop('checked',true);
			 }else if(aXyjspj=="非常满意"){
				 $("#"+aJslx+"fcmy").prop('checked',true);
			 }
			 
			 if(aXjspj=="非常不重要"){
				 $("#"+aJslx+"fcbzy").prop('checked',true);
			 }else if(aXjspj=="不重要"){
				 $("#"+aJslx+"bzy").prop('checked',true);
			 }else if(aXjspj=="一般程度"){
				 $("#"+aJslx+"ybcd").prop('checked',true);
			 }else if(aXjspj=="比较重要"){
				 $("#"+aJslx+"bjzy").prop('checked',true);
			 }else if(aXjspj=="非常重要"){
				 $("#"+aJslx+"fczy").prop('checked',true);
			 }
		 }
		 
		 if(aJslx=="良种繁育技术"){
			 pingjia(i);
		 }else if(aJslx=="提高品质良种技术"){
			pingjia(i);
		 }else if(aJslx=="病虫害防控技术"){
			 pingjia(i);
		 }else if(aJslx=="优质高效栽培技术"){
			 pingjia(i);
		 }else if(aJslx=="省工机械技术"){
			 pingjia(i);
		 }else if(aJslx=="水肥及管理系统"){
			 pingjia(i);
		 }else if(aJslx=="储运和保险技术"){
			 pingjia(i);
		 }else if(aJslx=="加工技术"){
			 pingjia(i);
		 }else if(aJslx=="互联网销售技术"){
			 pingjia(i);
		 }
		 
		
		
		 
	 });
	 
	 
	 
	 //5.主观问题表
	 $("#scwt").val(data.aZgwt.aScjywt);
	 $("#jswt").val(data.aZgwt.aJsbmwt);
	 $("#zfwt").val(data.aZgwt.aZfbmwt);

	 
	 
	 
	 
	 
	 
}