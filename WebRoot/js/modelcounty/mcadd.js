//设置默认开始年份 和结束年份

var cDate = new Date();
var cYear = cDate.getFullYear();
var lb="辛辣蔬菜";//初始化
var scNum=0;//选中蔬菜个数
var sc_val = new Array();//获取选中蔬菜的值
setSelectYear();// 方法调用


// 对select控件设置年份
function setSelectYear() {
	$("#startYear").empty();
	$("#endYear").empty();
	for ( var i = 0; i < 5; i++) {
		$("#startYear").append(
				"<option value='" + (cYear - i) + "'>" + (cYear - i)
						+ "</option>");
		$("#endYear").append(
				"<option value='" + (cYear - i) + "'>" + (cYear - i)
						+ "</option>");
	}
}

// 开始年份小于结束年份
function startToEnd() {
	var sv = $("#startYear").val();
	var ev = $("#endYear").val();

	if (sv > ev) {
		alert('开始年份需要小于结束年份');
	}
}
$("#startYear").change(function() {
	startToEnd();

	$("#mct_div").empty();
	$("#mcc_div").empty();
	according();
});
$("#endYear").change(function() {
	startToEnd();
	$("#mct_div").empty();
	$("#mcc_div").empty();
	according();
});

// 蔬菜类型选择
$("#lb").change(function() {
	//sc_val=null;
	
	 lb = $("#lb").val();// 获取选中的值
	if (lb == "辛辣蔬菜") {
		$("#sclx").empty();
		setXLVegetablesType();
          
	} else {
		$("#sclx").empty();
		setSSVegetablesType();
	}
	
	
	$("#mct_div").empty();
	$("#mcc_div").empty();
	according();
})
// 初始化
setXLVegetablesType();
// 辛辣蔬菜
function setXLVegetablesType() {
	var sclx = '';
	sclx += '<input type="checkbox" name="xllx" id="lj"  value="辣椒" onclick="vsclick()"/>辣椒&nbsp';
	sclx += '<input type="checkbox" name="xllx" id="c"  value="葱" onclick="vsclick()"/>葱&nbsp';
	sclx += '<input type="checkbox" name="xllx" id="j"  value="姜" onclick="vsclick()"/>姜&nbsp';
	sclx += '<input type="checkbox" name="xllx" id="s"  value="蒜" onclick="vsclick()"/>蒜&nbsp';
	sclx += '<input type="checkbox" name="xllx" id="yc"  value="洋葱" onclick="vsclick()"/>洋葱&nbsp';
	sclx += '<input type="checkbox" name="xllx" id="jc"  value="韭菜" onclick="vsclick()"/>韭菜&nbsp';
	sclx += '<input type="checkbox" name="xllx" id="jiec"   value="芥菜" onclick="vsclick()"/>芥菜&nbsp';
	sclx += '<input type="checkbox" name="xllx" id="fn"  value="分蘖" onclick="vsclick()"/>分蘖&nbsp';
	sclx += '<input type="checkbox" name="xllx" id="jc"  value="韭葱" onclick="vsclick()"/>韭葱&nbsp';
	sclx += '<input type="checkbox" name="xllx" id="xxc"  value="小香葱" onclick="vsclick()"/>小香葱&nbsp';
	$('#sclx').html(sclx);
}

// 水生蔬菜
function setSSVegetablesType() {
	var sclx = '';
	sclx += '<input type="checkbox" name="sslx"  value="莲藕" onclick="vsclick()"/>莲藕&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="芋头" onclick="vsclick()"/>芋头&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="茭白" onclick="vsclick()"/>茭白&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="荸荠" onclick="vsclick()"/>荸荠&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="水芹" onclick="vsclick()"/>水芹&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="菱角" onclick="vsclick()"/>菱角&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="慈姑" onclick="vsclick()"/>慈姑&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="蕹菜" onclick="vsclick()"/>蕹菜&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="莼菜" onclick="vsclick()"/>莼菜&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="蒲菜" onclick="vsclick()"/>蒲菜&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="芡实" onclick="vsclick()"/>芡实&nbsp;';
	sclx += '<input type="checkbox" name="sslx"  value="豆瓣菜" onclick="vsclick()"/>豆瓣菜&nbsp;';

	$('#sclx').html(sclx);
}
//蔬菜类型选中事件
/*$("#vs").click(*/
function vsclick(){
	
	//var scSl=0;//
	scval=new Array();//获取选中的蔬菜，并重新初始化；
	
	scNum=0;
	//alert(""+scNum+"");
	if (lb == "辛辣蔬菜") {
	obj = document.getElementsByName("xllx");
   
for(k in obj){
        if(obj[k].checked){
        	scval[scNum]=obj[k].value;//获取选中的蔬菜的值 
        	//alert(obj[k].value);
        	scNum++;
      }
        
    }
	
	
   
    }else{
    	
    	obj = document.getElementsByName("sslx");

    for(k in obj){
        if(obj[k].checked){
        	scval[scNum]=obj[k].value;
        	scNum++;
      }
    }
  }
	
	$("#mct_div").empty();
	$("#mcc_div").empty();
	
	sc_val=scval;
	according();
	}
//);
//

//录入显示和start

function sumscmj(){
	var sv = $("#startYear").val();
	var ev = $("#endYear").val();
	
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
	    
		}
		
$("#lbzdmj"+i+"").val(lbzdmj[i]);
$("#lbbzmj"+i+"").val(lbbzmj[i]);
$("#lbzcl"+i+"").val(lbzcl[i]);
$("#lbspl"+i+"").val(lbspl[i]);
$("#lbswxl"+i+"").val(lbswxl[i]);
$("#lbzcz"+i+"").val(lbzcz[i]);



	}
	
	
	
	
	
	
}


/*$(function() {
    $(function () {
        $('#saaa').bind("input propertychange", function () {
            alert("文本框的值："+$(this).val());
            //这里写你的处理代码
        });
    });*/

    


//end
according();// 默认要有一个表1，因此要在此处调用一下
// 示范县调查表录入界面 ：表1的html
function according() {
	var sv = $("#startYear").val();
	var ev = $("#endYear").val();

	var mc_t1 = '';
	var i = 0;
	var index = 0;
	for (; i <= (ev - sv); i++) {
		var yearNum = i;
		yearNum = yearNum + parseInt(sv);
		mc_t1 += '<h3>';
		mc_t1 += '	表' + (i + 1) + '&nbsp; ' + yearNum
				+ '<input type="text" id="bsfx'+i+'" value="" name="" readonly="readonly" /> ';
		mc_t1 += '<input type="hidden" value="' + yearNum + '" name="nf[' + i
				+ ']">';
		mc_t1 += '	示范县蔬菜生产（注：蔬菜包括食用菌，不包含西瓜、甜瓜、草莓）                ';
		mc_t1 += '</h3>                                                                         ';
		mc_t1 += '<br>                                                                          ';
		mc_t1 += '<table                                                                        ';
		mc_t1 += '	class="table table-striped table-bordered table-condensed table-responsive" style="width:300px;">';
		mc_t1 += '	<tr>                                                                        ';
		mc_t1 += '		<td style="width: 100px;white-space: nowrap;">产品类别</td>                                                         ';
		mc_t1 += '		<td style="width: 100px;white-space: nowrap;">占地面积（万亩）</td>                                                 ';
		mc_t1 += '		<td style="width: 100px;white-space: nowrap;">播种面积（万亩）</td>                                                 ';
		mc_t1 += '		<td style="width: 100px;white-space: nowrap;">总产量（万吨）</td>                                                   ';
		mc_t1 += '		<td style="width: 100px;white-space: nowrap;">商品量（万吨）</td>                                                   ';
		mc_t1 += '		<td style="width: 100px;white-space: nowrap;">省外销量（万吨）</td>                                                 ';
		mc_t1 += '		<td style="width: 100px;white-space: nowrap;">总产值（万元）</td>                                                   ';
		mc_t1 += '	</tr>                                                                       ';
		mc_t1 += '	<tr>                                                                        ';
		mc_t1 += '		<td>蔬菜</td>                                                             ';
		
		mc_t1 += '		<td><input type="text" id=""  style="width:60px;" name="CSfxscscqkList['+ i+ '].zdmj['+ index+ ']" value="0"   /></td>                           ';
		mc_t1 += '		<td><input type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].bzmj['+ index+ ']" value="0" /></td>                           ';
		mc_t1 += '		<td><input type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].zcl['+ index+ ']" value="0" /></td>                           ';
		mc_t1 += '		<td><input type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].spl['+ index+ ']" value="0" /></td>                           ';
		mc_t1 += '		<td><input type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].swxl['+ index+ ']" value="0" /></td>                           ';
		mc_t1 += '		<td><input type="text" style="width:60px;" name="CSfxscscqkList['+ i+ '].zcz['+ index+ ']" value="0" /></td>                           ';
		
		
		mc_t1 += '	</tr>                                                                       ';
		mc_t1 += '	<tr class="list-roles">                                                     ';
		mc_t1 += '		<td width="200">'+lb+'</td>                                             ';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbzdmj'+i+'" readonly="readonly"/></td>';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbbzmj'+i+'" readonly="readonly"/></td> ';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbzcl'+i+'" readonly="readonly"/></td> ';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbspl'+i+'" readonly="readonly"/></td>';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbswxl'+i+'" readonly="readonly"/></td>';
		mc_t1 += '		<td><input type="text" value="" style="width:60px;" name="" id="lbzcz'+i+'" readonly="readonly"/></td> ';
		mc_t1 += '	</tr>                                                                       ';
		index++;
		for(var j=0;j<scNum;j++){
			
			mc_t1 = codeSegment(mc_t1, i, index,sc_val[j]);
			index++;
		}
	  
		mc_t1 += '</table>                                                                      ';
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
	for ( var j = 0; j <= (ev - sv); j++) {
		var yearNum = j;
		yearNum = yearNum + parseInt(sv);
		mc_c += '<tr>';
		mc_c += '<td>' + yearNum + '</td>';
		
		for(var index=0 ;index<5;index++)
		{
		mc_c += '<td><input type="text" style="width:78px;" value="0" name="CSfxcyjyzkdcList['
		+ j + '].jylx[' + index + ']"  /></td>';//k修改储存，index查看和修改显示
		}		
		
		
		
		
		
		/*mc_c += '<td><input type="text" style="width:78px;" value="0" name="CSfxcyjyzkdcList['
				+ j + '].jylx[' + (index++) + ']" /></td>';
		mc_c += '<td><input type="text" style="width:78px;" value="0" name="CSfxcyjyzkdcList['
				+ j + '].jylx[' + (index++) + ']" /></td>';
		mc_c += '<td><input type="text" style="width:78px;" value="0" name="CSfxcyjyzkdcList['
				+ j + '].jylx[' + (index++) + ']" /></td>';
		mc_c += '<td><input type="text" style="width:78px;" value="0" name="CSfxcyjyzkdcList['
				+ j + '].jylx[' + (index++) + ']" /></td>';
		mc_c += '<td><input type="text" style="width:78px;" value="0" name="CSfxcyjyzkdcList['
				+ j + '].jylx[' + (index++) + ']" /></td>';*/
		mc_c += '</tr>';
		
		
		
		//index=0;
	}
	mc_c += '</table>'
	$('#mct_div').append(mc_t1);
	$('#mcc_div').append(mc_c);
	setCounty();
	
	//alert($("#sfanx").val());
	
}




function codeSegment(mc_t1, i, index,scmc) {
	mc_t1 += '	<tr class="list-roles">  ';
		mc_t1 += '		<td>'+scmc+'<input type="hidden" value="'+scmc+'" name="CSfxscscqkList['+ i+ '].cplb['+ index+ ']"></td>                                                             ';
	mc_t1 += '<td><input type="text" id="lbzdmj_'+i+''+index+'" style="width:60px;" value="0" name="CSfxscscqkList['+ i+ '].zdmj['+ index
			+ ']" onblur="sumscmj()"/></td>                                    ';
	mc_t1 += '		<td><input type="text" id="lbbzmj_'+i+''+index+'" style="width:60px;" value="0" name="CSfxscscqkList['
			+ i
			+ '].bzmj['
			+ index
			+ ']" onblur="sumscmj()"/></td>                                    ';
	mc_t1 += '		<td><input type="text" id="lbzcl_'+i+''+index+'" style="width:60px;" value="0" name="CSfxscscqkList['
			+ i
			+ '].zcl['
			+ index
			+ ']" onblur="sumscmj()"/></td>                                    ';
	mc_t1 += '		<td><input type="text" id="lbspl_'+i+''+index+'" style="width:60px;" value="0" name="CSfxscscqkList['
			+ i
			+ '].spl['
			+ index
			+ ']" onblur="sumscmj()"/></td>                                    ';
	mc_t1 += '		<td><input type="text" id="lbswxl_'+i+''+index+'" style="width:60px;" value="0" name="CSfxscscqkList['
			+ i
			+ '].swxl['
			+ index
			+ ']" onblur="sumscmj()"/></td>                                    ';
	mc_t1 += '		<td><input type="text" id="lbzcz_'+i+''+index+'" style="width:60px;" value="0" name="CSfxscscqkList['
			+ i + '].zcz[' + index+ ']" onblur="sumscmj()"/></td>                     ';
	mc_t1 += '	</tr>                                                                    ';
	
	return mc_t1;

}






function setCounty(){
	
	var sv_1=$("#startYear").val();
	var ev_1=$("#endYear").val();
	 //alert(sv_1+":"+ev_1);
       //parseInt(sv);
       for(var i=0;i<=(ev_1-sv_1);i++){
     
          $("#bsfx"+i+"").val($("#sfanx").val());
          $("#shifanxian").val($("#sfanx").val());
             
       }
	
	
	
}