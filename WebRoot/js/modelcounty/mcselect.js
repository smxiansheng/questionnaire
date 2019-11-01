

//显示和
function displayAnd(){


	var sv = $("#startYear").val();
	var ev = $("#endYear").val();
	lb = $("#lb").val();// 获取选中的值
	if (lb == "辛辣蔬菜") {
	scNum = $("input[name=xllx]:checked").length;}
	else{
	scNum = ("input[name=sslx]:checked").length;}
	var lbzdmj=new Array();
	var lbbzmj=new Array();
	var lbzcl=new Array();
	var lbspl=new Array();
	var lbswxl=new Array();
	var lbzcz=new Array();
	//alert((ev-sv)+":"+scNum);
	
	for(var i=0;i<= (ev - sv); i++){

		lbzdmj[i]=0;
		lbbzmj[i]=0;
		lbzcl[i]=0;
		lbspl[i]=0;
		lbswxl[i]=0;
		lbzcz[i]=0;
		
		//alert("5454");
for(var j=0;j<scNum;j++){
	
	    lbzdmj[i]= lbzdmj[i]+parseInt($("#lbzdmj_"+i+""+(j+1)+"").val());
	    lbbzmj[i]= lbbzmj[i]+parseInt($("#lbbzmj_"+i+""+(j+1)+"").val());
	    lbzcl[i]=lbzcl[i]+parseInt($("#lbzcl_"+i+""+(j+1)+"").val());
		lbspl[i]=lbspl[i]+parseInt($("#lbspl_"+i+""+(j+1)+"").val());
		lbswxl[i]=lbswxl[i]+parseInt($("#lbswxl_"+i+""+(j+1)+"").val());
		lbzcz[i]=lbzcz[i]+parseInt($("#lbzcz_"+i+""+(j+1)+"").val());
	    
		//if(j==0)alert($("#lbzdmj_"+i+""+(j+1)+"").val());
		
		}
		
$("#lbzdmj"+i+"").val(lbzdmj[i]);
$("#lbbzmj"+i+"").val(lbbzmj[i]);
$("#lbzcl"+i+"").val(lbzcl[i]);
$("#lbspl"+i+"").val(lbspl[i]);
$("#lbswxl"+i+"").val(lbswxl[i]);
$("#lbzcz"+i+"").val(lbzcz[i]);



	}
	
	
	
	
	
	

	
	
	
	
}

//end


//查看界面首显示
function according_select(data,zl) {
	
	//alert("0001");
	var sv = $("#startYear").val();
	var ev = $("#endYear").val();
   // alert("平安区"+sv+ev)  
	
	
	//显示和定义start
	
	var lbzdmj=new Array();
	var lbbzmj=new Array();
	var lbzcl=new Array();
	var lbspl=new Array();
	var lbswxl=new Array();
	var lbzcz=new Array();
//end
	
	
	
	
	var mc_t1 = '';
	var i = 0;
	var index = 0;
	for (; i <= (ev - sv); i++) {
		//显示和初始化
		
		lbzdmj[i]=0;
		lbbzmj[i]=0;
		lbzcl[i]=0;
		lbspl[i]=0;
		lbswxl[i]=0;
		lbzcz[i]=0;
		//end
		
		
		var yearNum = i;
		yearNum = yearNum + parseInt(sv);
		//alert("000"+yearNum);
		mc_t1 += '<h3>';
		mc_t1 += '	表' + (i + 1) + '&nbsp; ' + yearNum
				+ '<input type="text" id="bsfx'+i+'" name="" readonly="readonly" /> ';
		mc_t1 += '<input type="hidden" value="' + yearNum + '" name="nf[' + i
				+ ']">';
		mc_t1 += '	示范县蔬菜生产（注：蔬菜包括食用菌，不包含西瓜、甜瓜、草莓）                ';
		mc_t1 += '</h3>                                                                         ';
		mc_t1 += '<br>                                                                          ';
		mc_t1 += '<table                                                                        ';
		mc_t1 += '	class="table table-striped table-bordered table-condensed table-responsive" style="width:300px;">';
		mc_t1 += '	<tr>                                                                        ';
		mc_t1 += '		<td style="width: 60px;white-space: nowrap;">产品类别</td>                                                         ';
		mc_t1 += '		<td style="width: 60px;white-space: nowrap;">占地面积（万亩）</td>                                                 ';
		mc_t1 += '		<td style="width: 60px;white-space: nowrap;">播种面积（万亩）</td>                                                 ';
		mc_t1 += '		<td style="width: 60px;white-space: nowrap;">总产量（万吨）</td>                                                   ';
		mc_t1 += '		<td style="width: 60px;white-space: nowrap;">商品量（万吨）</td>                                                   ';
		mc_t1 += '		<td style="width: 60px;white-space: nowrap;">省外销量（万吨）</td>                                                 ';
		mc_t1 += '		<td style="width: 60px;white-space: nowrap;">总产值（万元）</td>                                                   ';
		mc_t1 += '	</tr>                                                                       ';
		mc_t1 += '	<tr>                                                                        ';
		mc_t1 += '		<td>蔬菜</td>                                                             ';
		mc_t1 += '		<td><input  id="" type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].zdmj['+ index+ ']" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[0].zdmj+'" /></td>                           ';
		mc_t1 += '		<td><input  id="" type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].bzmj['+ index+ ']" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[0].bzmj+'" /></td>                           ';
		mc_t1 += '		<td><input  id="" type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].zcl['+ index+ ']" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[0].zcl+'" /></td>                           ';
		mc_t1 += '		<td><input id="" type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].spl['+ index+ ']" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[0].spl+'" /></td>                           ';
		mc_t1 += '		<td><input id="" type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].swxl['+ index+ ']" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[0].swxl+'" /></td>                           ';
		mc_t1 += '		<td><input id="" type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].zcz['+ index+ ']" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[0].zcz+'" /></td>                           ';
		mc_t1 += '	</tr>                                                                       ';
		mc_t1 += '	<tr class="list-roles">                                                     ';
		mc_t1 += '		<td width="200">'+lb+'</td>                                             ';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbzdmj'+i+'" readonly="readonly"/></td>                                    ';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbbzmj'+i+'" readonly="readonly"/></td>                                    ';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbzcl'+i+'" readonly="readonly"/></td>                                    ';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbspl'+i+'" readonly="readonly"/></td>                                    ';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbswxl'+i+'" readonly="readonly"/></td>                                    ';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbzcz'+i+'" readonly="readonly"/></td>                                    ';
		mc_t1 += '	</tr>   ';
		
		
		for(var j=0;j<(zl.length-1);j++){
			mc_t1 = codeSegment_select(mc_t1, i, j+1,data);	
			
			lbzdmj[i]=lbzdmj[i]+data.cSfxscscqkMap[i].cSfxscscqkList[j+1].zdmj;
			lbbzmj[i]=lbbzmj[i]+data.cSfxscscqkMap[i].cSfxscscqkList[j+1].bzmj;
			lbzcl[i]=lbzcl[i]+data.cSfxscscqkMap[i].cSfxscscqkList[j+1].zcl;
			lbspl[i]=lbspl[i]+data.cSfxscscqkMap[i].cSfxscscqkList[j+1].spl;
			lbswxl[i]=lbswxl[i]+data.cSfxscscqkMap[i].cSfxscscqkList[j+1].swxl;
			lbzcz[i]=lbzcz[i]+data.cSfxscscqkMap[i].cSfxscscqkList[j+1].zcz;
			
			
		}
	  
		//alert(lbzdmj[i]);
		
		mc_t1 += '</table>';
		
          index=0;
	}
	  
	
	
	var mc_c = '<h3>表'
			+ (i + 1)
			+ ' &nbsp; '
			+ sv
			+ '-'
			+ ev
			+ '年 <input type="text" id="shifanxian" readonly="readonly">示范县水生蔬菜经营主体概况 单位：个</h3><br>';
	mc_c += '<table class="table table-striped table-bordered table-condensed table-responsive" style="width:300px;">'
	mc_c += '	<tr>';
	mc_c += '<td  style="width: 60px;white-space: nowrap;">产品类别</td>';
	mc_c += '<td  style="width: 60px;white-space: nowrap;">家庭农场（大户）</td>';
	mc_c += '<td  style="width: 60px;white-space: nowrap;">合作社</td>';
	mc_c += '<td  style="width: 60px;white-space: nowrap;">批发市场</td>';
	mc_c += '<td  style="width: 60px;white-space: nowrap;">加工企业（其中：省级以上龙头企业）</td>';
	mc_c += '<td  style="width: 60px;white-space: nowrap;">出口企业</td>';
	mc_c += '       </tr>';
	index = 0;
	
	//alert(data.csfxcyjyzkdcList.length);
	for ( var j = 0; j <= (ev - sv); j++) {
		var yearNum = j;
		yearNum = yearNum + parseInt(sv);
		mc_c += '<tr>';
		mc_c += '<td>' + yearNum + '</td>';
		for(var k=0 ;index<(j+1)*5;index++,k++)
			{
			mc_c += '<td><input type="text" style="width:78px;" value="'+data.csfxcyjyzkdcList[index].jylx+'" name="CSfxcyjyzkdcList['
			+ j + '].jylx[' + (k) + ']"  /></td>';//k修改储存，index查看和修改显示
			}		
		mc_c += '</tr>';	
	}

	mc_c += '</table>'
		
		
		index=0;		
	$('#mct_div').html(mc_t1);
	$('#mcc_div').html(mc_c);
	
	//显示 和start;
	//$("#lbzdmj0").val("15");
	
	for(var xs=0;xs<=(ev - sv);xs++){
		
		$("#lbzdmj"+xs+"").val(lbzdmj[xs]);
		$("#lbbzmj"+xs+"").val(lbbzmj[xs]);
		$("#lbzcl"+xs+"").val(lbzcl[xs]);
		$("#lbspl"+xs+"").val(lbspl[xs]);
		$("#lbswxl"+xs+"").val(lbswxl[xs]);
		$("#lbzcz"+xs+"").val(lbzcz[xs]);
		
	}
	
//end
	
	
	setCounty();
 
	//累加
	
}
	
	
//为查看和修改调查表使用
//i行
//index 列
function codeSegment_select(mc_t1, i, index,data) {
	
	
	var scmc=data.cSfxscscqkMap[i].cSfxscscqkList[index].cplb;
	//alert("scmc"+scmc);
	//alert("0");
	mc_t1 += '	<tr class="list-roles">  ';
		mc_t1 += '		<td>'+scmc+'<input type="hidden" value="'+scmc+'" name="CSfxscscqkList['+ i+ '].cplb['+ index+ ']"></td>                                                             ';
	mc_t1 += '		<td><input type="text" id="lbzdmj_'+i+''+index+'" style="width:60px;" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[index].zdmj+'" name="CSfxscscqkList['
			+ i
			+ '].zdmj['
			+ index
			+ ']"  onblur="displayAnd()"/></td>';
	mc_t1 += '		<td><input type="text" id="lbbzmj_'+i+''+index+'" style="width:60px;" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[index].bzmj+'" name="CSfxscscqkList['
			+ i
			+ '].bzmj['
			+ index
			+ ']" /></td>                                    ';
	mc_t1 += '		<td><input type="text" id="lbzcl_'+i+''+index+'" style="width:60px;" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[index].zcl+'" name="CSfxscscqkList['
			+ i
			+ '].zcl['
			+ index
			+ ']" onblur="displayAnd()"/></td>                                    ';
	mc_t1 += '		<td><input type="text" id="lbspl_'+i+''+index+'" style="width:60px;" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[index].spl+'" name="CSfxscscqkList['
			+ i
			+ '].spl['
			+ index
			+ ']" onblur="displayAnd()"/></td>                                    ';
	mc_t1 += '		<td><input type="text" id="lbswxl_'+i+''+index+'" style="width:60px;" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[index].swxl+'" name="CSfxscscqkList['
			+ i
			+ '].swxl['
			+ index
			+ ']" onblur="displayAnd()"/></td>                                    ';
	mc_t1 += '		<td><input type="text" id="lbzcz_'+i+''+index+'" style="width:60px;" value="'+data.cSfxscscqkMap[i].cSfxscscqkList[index].zcz+'" name="CSfxscscqkList['
			+ i + '].zcz[' + index+ ']" onblur="displayAnd()"/></td>                     ';
	mc_t1 += '	</tr>                                                                    ';
	
	//alert(mc_t1);
	return mc_t1;

}

