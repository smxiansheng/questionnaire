<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@page import="java.text.*"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<style>
	option,td,tr,th{
		text-align:center;
	}
</style>
<div class="page-header">
	<h1>基本生产经营状况查询  </h1>
</div>
		<form class="form-horizontal" action="int-sclx.php" method="POST" >
			省份
			<select id="province" name="province" style="width:70px;">
				<option value="">全部</option>
				<option value="北京">北京市</option><option value="天津">天津市</option>
				<option value="河北">河北省</option><option value="山西">山西省</option>
				<option value="内蒙古自治区">内蒙古自治区</option><option value="辽宁">辽宁省</option>
				<option value="吉林">吉林省</option><option value="黑龙江">黑龙江省</option>
				<option value="上海">上海市</option><option value="江苏">江苏省</option>
				<option value="浙江">浙江省</option><option value="安徽">安徽省</option>
				<option value="福建">福建省</option><option value="江西">江西省</option>
				<option value="山东">山东省</option><option value="河南">河南省</option>
				<option value="湖北">湖北省</option><option value="湖南">湖南省</option>
				<option value="广东">广东省</option><option value="广西壮族自治区">广西壮族自治区</option>
				<option value="海南">海南省</option><option value="重庆">重庆市</option>
				<option value="四川">四川省</option><option value="贵州">贵州省</option>
				<option value="云南">云南省</option><option value="西藏自治区">西藏自治区</option>
				<option value="陕西">陕西省</option><option value="甘肃">甘肃省</option>
				<option value="青海">青海省</option><option value="宁夏回族自治区">宁夏回族自治区</option>
				<option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
			</select>
			
			年份
			<select id="year" name="year" style="width:70px;">
				<option value="全部">全部</option>
				<% 
				
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
					Date date = new Date();
					int year1 = Integer.parseInt(sdf.format(date));
				
					for (int year=2003;year<=year1;year++) {%>
				
				<option value="<%=year%>"><%=year%></option>
			
				<%} %>
			</select>
			
						种类选择	
								<select id="one" name="">
								    <option value="">请选择作物种类</option>       
								</select>
								 
								<select id="two" name="type">
								    <option value="">请选择具体作物</option>
								</select>
			 <input type="button" id="soso" class="btn-success"  value="搜索">
			 <br>
			 <br>
		<table class="table table-striped table-bordered table-condensed">
	
				<thead>
					<tr>
						<th style="width: 40px;">省份</th>
						
						<th style="width: 100px;">年份</th>
						<th style="width: 100px;">作物大类</th>
						<th style="width: 100px;">作物种类</th>
						<th style="width: 100px;">被访者年龄</th>
						<th style="width: 80px;">姓名</th>
						<th style="width: 30px;">电话</th>
						<th style="width: 100px">耕地面积</th>
						<th style="width: 100px;">是否注册品牌</th>
						<th style="width: 100px;">产品是否出口</th> 
						<!-- 
						<th style="width: 60px;">蔬菜类型</th>
						<th style="width: 60px;">生产补贴</th>
						<th style="width: 80px;">是否注册品牌</th>
						<th style="width: 50px;">管理</th> -->
					</tr>
				</thead>
			<tbody id="bo">
			
				
			</tbody>
		
		</table>
     
<script type="text/javascript" src="js/jquery-1.12.0.js"></script>
<script type="text/javascript">
	
	function trans(data){
		return data==null || data==""?"空":data;
	} 
	$("#soso").click(function(){
		
		$("#bo").html("")
		var province=$("#province").val();
		var year = $("#year").val();
		var bigType = $("#one").val();
		var type = $("#two").val();
		if (year=="全部") year="";
		
		if (type=="全部" ||  type=="请选择具体作物") type="";
		
		$.ajax({
			url:"${path}/selectBySomeInfo.do",
			//contentType: "text/html;charset=utf-8",
			 data:{
				//"province":encodeURI(encodeURI(province)),
				"province":province,
				"year":year,
				"type":type,
				"bigType":bigType
			},  
			scriptCharset:"utf-8",
			success:function(res){
				if(res.length==0){
					alert("没有数据！");
					return ;
				}
				var t="";
				console.log(res.length)
				for (var x=0;x<res.length;x++){
					var r="<td>"+trans(res[x].aSf)+"</td><td>"+
					trans(res[x].aCreateTime).substring(0,4)+"</td><td>"+
					trans(res[x].aBigType)+"</td><td>"+
					trans(res[x].aSclx)+"</td><td>"+
					trans(res[x].aBfznl)+"</td><td>"+
					trans(res[x].aBfzxm)+"</td><td>"+
					trans(res[x].aBfzlxfs)+"</td><td>"+
					trans(res[x].aGdmj)+"</td><td>"+
					trans(res[x].aSfzcpp)+"</td><td>"+
					trans(res[x].aSfck)+"</td>";
					r="<tr>"+r+"</tr>";
					$("#bo").append(r);
				}
			}
			
		})
	})

 
   $(function(){
    var province = [
        {"name" : "辛辣类" ,
            "city" : [
            	{
                    "name" : "全部" ,
                },
         
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
                    "name" : "全部" ,
                },
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
   /*  $("#two").change(function(){
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
    }); */
 
    // 一级联动
    $("#one").change(function(){
        var one_index = $("#one option:selected").index();
        var two = $("#two");
        two.empty().append("<option>请选择具体作物</option>");
 		allType="";
        if(one_index > 0){
            var city = province[one_index-1].city;
          	allType =[]
            for(var i = 0 ; i < city.length ; i++){
                two.append("<option>"+city[i].name+"</option>");
                allType.push(city[i].name);
              console.log(allType);
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


</div>
  </form>