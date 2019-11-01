
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<div id="zzj">
<div class="page-header">
	<h1>基本生产经营状况查询  </h1>
</div>


<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
			省份
			 省&nbsp;&nbsp; <select id="prov1" name="province" style="width:100px;">  </select>
			
			年份
			<select id="year" name="year" style="width:70px;">
				
			</select>
			
						种类选择	
								<select id="one" name="type">
								    <option value="">请选择作物种类</option>       
								</select>
								 
								<select id="two">
								    <option value="">请选择具体作物</option>
								</select>
			 <input type="button" id="vs" class="btn-success" onclick="selectAStrcc()" value="搜索">
			 <br>
			 <br>
		<table id="sstrcc" class="table table-striped table-bordered table-condensed">
	
				<thead>
					<tr>
						<!--<th>ID</th>-->
						<th>序号</th>
						<th style="width:5%">蔬菜</th>
						<th>播种时间</th>
						<th>收获时间</th>
						<th>播种面积</th>
						<th>年总产量</th>
						<th>主产品产量</th>
						<th>副产品产量</th>
						<th>年销售收入</th>
						<th>主产品平均销售价格</th>
						<th>副产品平均销售价格</th>
						<th>操作</th>
					</tr>
				</thead>
			<tbody id="list_sstrcc">
				
				
			</tbody>
		
		</table>
		
 </div>

			<div id="placeholder1" style="width:100%;height:auto;display:none" >
				<form>
					<h3>表1 生产的投入产出情况</h3>	<br>
					主栽品种播种时间&nbsp;&nbsp;<input type="text" id="nian" style="width:20%" disabled="disabled"/>
					收货时间<input type="text" id="nian1" style="width:20%" disabled="disabled"/>
					<table  class="table table-striped table-bordered table-condensed table-responsive" width="100%" border="1" cellspacing="0">
   <thead>
  <tr height="30%">
    <td colspan="2" style="text-align: center;">调查内容</td>
    <td width="6%">&nbsp;单位</td>
    <td width="40%">&nbsp;2018年</td>
  </tr>
  </thead>
   <tbody>
  <tr height="40%" id="bzmj" >
    <td colspan="2">播种面积</td>
    <td>&nbsp;亩</td>
  </tr>
  <tr height="40%"id="nzcl">
    <td colspan="2" >年总产量</td>
    <td>&nbsp;斤</td>
  </tr>
  <tr height="40%" id="zcpcl">
    <td colspan="2">主产品（）产量</td>
    <td>&nbsp;斤</td>
  </tr>
  <tr height="40%" id="fcpcl">
    <td colspan="2">副产品（）产量</td>
    <td>&nbsp;斤</td>
  </tr>
  <tr height="40%"id="nxssr">
    <td colspan="2">年销售收入</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="40%" id="zcppjsjjg">
    <td colspan="2">主产品平均销售价格</td>
    <td>&nbsp;元/斤</td>
  </tr>
  <tr height="40%" id="fcppjsjjg">
    <td colspan="2">副产品平均销售价格</td>
    <td>&nbsp;元/斤</td>
  </tr>
  <tr height="40%" id="zcb">
    <td colspan="2">总成本</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="40%" id="oneheji">
    <td>1 每亩物质与服务费用</td>
    <td>合计</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="40%"id="zzf">
    <td width="216" rowspan="9" style="text-align: center;">  </td>
    <td width="282">种子费</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="40%" id="flf">
    <td>肥料费</td>
    <td>&nbsp;元</td>
  </tr>
 
  <tr height="40%" id="nyf">
    <td>农药费</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="40%" id="nmf">
    <td>农膜费</td>
    <td>&nbsp;元</td>
  </tr>

  <tr height="40%" id="jxzyf">
    <td>机械作业费</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="40%" id="ggf">
    <td>灌溉费</td>
    <td>&nbsp;元</td>
  </tr>
 
  <tr height="40%x" id="jsfwf">
    <td>技术服务费</td>
    <td>&nbsp;元</td>
  </tr>

   <tr height="40%" id="bxf">
    <td>保险费</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="40%" id="qtzjfy">
    <td>其他直接费用</td>
    <td>&nbsp;元</td>
  </tr>
  
  <tr height="40%"id="mmcbf">
    <td>2 每亩人工成本</td>
    <td>合计</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="40%">
    <td rowspan="6">&nbsp;</td>
    <td>2.1 家庭用工情况</td>
    <td>&nbsp;</td>
  </tr>
  <tr height="40%" id="jtygts">
    <td style="text-indent:2em">家庭用工天数</td>
    <td>&nbsp;日</td>
  </tr>
  <tr height="40%" id="jtygrs">
    <td style="text-indent:2em">家庭用工人数</td>
    <td>&nbsp;人</td>
  </tr>
  <tr height="30px" id="gugf">
    <td>2.2 雇工费用</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="30px"id="gugongtianshu">
    <td style="text-indent:2em">雇工天数</td>
    <td>&nbsp;日</td>
  </tr>
  <tr height="30px" id="gugongtianjia">
    <td style="text-indent:2em">雇工工价</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="30px" id="gugongrenshu">
  	<td></td>
    <td style="text-indent:2em">雇工人数</td>
    <td>&nbsp;人</td>
  </tr>
  <tr height="30px"id="meimuzhongzi">
    <td>3 附</td>
    <td>3.1 每亩种子用量</td>
    <td>&nbsp;斤</td>
  </tr>
  <tr height="30px"id="mmhfyl">
    <td rowspan="2">&nbsp;</td>
    <td>3.2 每亩化肥用量</td>
    <td>&nbsp;斤</td>
  </tr>
  <tr height="30px"id="mmnmyl">
    <td>3.3 每亩农膜用量</td>
    <td>&nbsp;斤</td>
  </tr>
  <tr height="30px"id="mmtdcb">
    <td>4 每亩土地成本</td>
    <td>合计</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="30px"id="lzdzj">
    <td rowspan="2">&nbsp;</td>
    <td>4.1 流转地租金</td>
    <td>&nbsp;元</td>
  </tr>
  <tr height="30px"id="zydzz">
    <td>4.2 自营地折租</td>
    <td>&nbsp;元</td>
  </tr>
  </tbody>
</table>
					<p></p>
					<p><input type="button" id="" class="btn btn-success" value="返回" onclick="getha();"/></a><!--&nbsp;&nbsp;&nbsp;<a href="enter-b.html" class="btn btn-success">下一页</a>-->
						
					</p>
				</form>
				
				
				
				
				
				
			</div>


<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script  src="../js/Sstrccselect/Sstrccselect.js"></script>
<script>
function getha(){
	document.getElementById("zzj").style.display="inline";
	document.getElementById("placeholder1").style.display="none";
	
	
}
</script>
<script type="text/javascript">

		function callback0(data) {
    init($("#prov1"),data.prov);
   // init($("#city1"),data.city);
   // init($("#county1"),data.county);
 // init($("#town"),data.town);
  //  init($("#village"),data.village);
}
function callback1(data) {
   // init($("#city1"),data.city);
    //init($("#county1"),data.county);
  //  init($("#town"),data.town);
   // init($("#village"),data.village);
}
//function callback2(data) {
 //   init($("#county1"),data.county);
 //  init($("#town"),data.town);
   // init($("#village"),data.village);
//}
//function callback3(data) {
  //  init($("#town"),data.town);
  //  init($("#village"),data.village);
//}
// function callback4(data) {
//    init($("#village"),data);
//  }
function init(sel,data) {
    sel.html("");
    $(data).each(function(i,item){
        sel.append("<option value='"+item.re_code+"'>"+item.re_name+"</option>");
    });
}
$(document).ready(function () {
    $.ajax({
        type:"get",
        dataType:"jsonp",
        url:"http://res.42du.cn/region/init",
        jsonpCallback:"callback0"
    });
    $("#prov1").change(function () {
        var v = $(this).val();
        $.ajax({
            type:"get",
            dataType:"jsonp",
            url:"http://res.42du.cn/region/prov/"+v,
            jsonpCallback:"callback1"
        });
    });
    /*$("#city1").change(function () {
        var v = $(this).val();
        $.ajax({
            type:"get",
            dataType:"jsonp",
            url:"http://res.42du.cn/region/city/"+v,
            jsonpCallback:"callback2"
        });
    });
    $("#county1").change(function () {
        var v = $(this).val();
        $.ajax({
            type:"get",
            dataType:"jsonp",
            url:"http://res.42du.cn/region/county/"+v,
            jsonpCallback:"callback3"
        });
    });*/
   // $("#town").change(function () {
    //    var v = $(this).val();
    //    $.ajax({
      //      type:"get",
      //      dataType:"jsonp",
       //     url:"http://res.42du.cn/region/"+v,
        //    jsonpCallback:"callback4"
//    })            });

});
		
 
   $(function(){
    var province = [
        {"name" : "辛辣类" ,
            "city" : [
                {
                    "name" : "辣椒" ,
                },
               {
                    "name" : "葱" ,
                },
                {
                    "name" : "姜" ,
                },
                {
                    "name" : "蒜" ,
                },
                {
                    "name" : "洋葱" ,
                },
                {
                    "name" : "韭菜" ,
                },
            ]
        },
        {"name" : "水生类" ,
            "city" : [
                {
                    "name" : "莲藕" ,
                },
                 {
                    "name" : "芋头" ,
                },
                 {
                    "name" : "茭白" ,
                },
                 {
                    "name" : "荸荠" ,
                },
                 {
                    "name" : "水芹" ,
                },
            ]
        }
    ];
 
    // 二级联动
    $("#two").change(function(){
        var one_index = $("#one option:selected").index();
        var two_index = $("#two option:selected").index();
        var three = $("#three");
        //three.empty().append("<option>请选择区域</option>");
 
        if(two_index > 0){
            var area = province[one_index-1].city[two_index-1].area;
            for(var i = 0 ; i < area.length ; i++){
                three.append("<option>"+area[i]+"</option>");
            }
        }
    });
 
    // 一级联动
    $("#one").change(function(){
        var one_index = $("#one option:selected").index();
        var two = $("#two");
            console.log(one_index)
        two.empty().append("<option>请选择具体作物</option>");
        $("#three").empty().append("<option>请选择具体作物</option>");//清除
 
        if(one_index > 0){
            var city = province[one_index-1].city;
            console.log(province[one_index-1].city)
            for(var i = 0 ; i < city.length ; i++){
                two.append("<option>"+city[i].name+"</option>");
            }
        }
    });
 
     
    init();
    function init(){
        for(var i = 0 ; i < province.length ; i++){
            $("#one").append("<option>"+province[i].name+"</option>");
        }
    }
});
</script>


<div>
	<!-- 2222222222222222222222222222222222
 -->

</div>
  </form>
