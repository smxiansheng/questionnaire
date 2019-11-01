<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>



<script src="../js/modelcounty/mcadd.js"></script>
<script src="../js/modelcounty/mcselect.js"></script>
<script src="../js/sfxian/sfxian.js"></script>
<script type="text/javascript">

      // var xian="";

	//获取当前登录用户 
    
	$("#btnReturn").hide();
	
	var a = 11;
	$.ajax({
		url : "${pageContext.request.contextPath}/selectroot.do", // 后台url
		data : { // 数据
			"aXm" : a,

		},
		type : "POST", // 类型，POST或者GET
		dataType : 'json', // 数据返回类型，可以是xml、json等
		success : function(data) {
			$("#sfanx").val(data.aCountry);
			//$("shifanxian1").val(data.aCountry);
             //xian=val(data.aCountry);
            // alert(xian);
			$("#pingzhong").val(data.aRealname);
			$("#aDcrid").val(data.aDcrid);
			$("#nian").val(data.aLxfs);
			$("#aZhsyzwjfzryx").val(data.aEmail);
             
			$("#pro").val(data.aProvince);
			$("#cit").val(data.aCity);
			$("#cou").val(data.aCountry);
			$("#aprovincename").val(data.aProvinceid);
			$("#acityname").val(data.aCityid);
			$("#axianname").val(data.aCountryid);
			
			$("#bsfx0").val(data.aCountry);
			$("#shifanxian").val(data.aCountry);
			
			//alert($("#aDcr").val());
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + "<br/>" + XMLHttpRequest.readyState
					+ "<br/>" + textStatus);
			alert("刷新失败！！");
		}

	});

	//根据查看和修改界面传入的ID

	//var DemonstrationXianId=0;
	//node 查看和修改的ID oprType 判断执行查看和修改
	function querySfx(node, oprType) {

		//  alert("515");

		var pageContextUrl = '${pageContext.request.contextPath}';

		chakan(node, pageContextUrl,oprType);

		if (oprType == "select") {
			$("#btnSubmit").hide();
			
		}

		else
			$("#btnSubmit").show();
		$("#aSfxid").val(node);

		$("#btnReturn").show();//返回按钮显示 
    // alert($("#aDcr").val()+"555");

	}

	function funReturn() {

		$("#j").addClass("active");
		$("#add").removeClass("active");
		$("#d-1").removeClass("active");
		$("#d-2").removeClass("active");
		$("#e").removeClass("active");
		$("#f").removeClass("active");
		$("#g").removeClass("active");
		$("#h").removeClass("active");
		$("#i").removeClass("active");
		//$("#j").removeClass("active");
		$("#k").removeClass("active");
		$("#l").removeClass("active");
		$("#m").removeClass("active");

	
		
		
		$.ajax({
												url : "test7.jsp",
												success : function(data) {

													$("#dd").html(data);
													$("#j").addClass("active");
													$("#add").removeClass(
															"active");
													$("#d-1").removeClass(
															"active");
													$("#d-2").removeClass(
															"active");
													$("#e").removeClass(
															"active");
													$("#f").removeClass(
															"active");
													$("#g").removeClass(
															"active");
													$("#h").removeClass(
															"active");
													$("#i").removeClass(
															"active");
													//$("#j").removeClass("active");
													$("#k").removeClass(
															"active");
													$("#l").removeClass(
															"active");
													$("#m").removeClass(
															"active");
												}
											});
				
			searchDemonstrationXianByCondition();
		
		
	}

	
	
</script>

<form id="Andregist" name="my_form">
	<div id="placeholder" style="width:100%;height:100%;">
		<%-- ${pageContext.request.contextPath}/addmodelCounty.do --%>
		<h2>
			<select id="startYear" style="width:80px;"></select> - <select
				id="endYear" style="width:80px;"></select>年 <input type="text"
				id="sfanx" readonly="readonly" />示范县产业发展调查问卷
		</h2>
		<select id="lb" style=“width:280px;”>
			<!-- <option value="----请选择蔬菜类型-----">----请选择蔬菜类型-----</option> -->
			<option value="辛辣蔬菜">辛辣蔬菜</option>
			<option value="水生蔬菜">水生蔬菜</option>
		</select> <span id="sclx"></span> <!-- <input type="button" id="vs" value="确定"> -->
		<h5>问卷填写说明：</h5>
		<p>
			&nbsp;&nbsp;1．本问卷调查目的是为了了解综合试验站对接的示范县产业发展概况，每个示范县填写1份调查问卷。<br>
			&nbsp;&nbsp;
			2．示范县产业发展数据填写请尽量依据统计年鉴（县统计资料）、农业部门报告等。如果以上渠道不能获得，则根据经验数据填写。由于第一次调查不熟悉示范县主要水生蔬菜产业情况，<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;因此列式了所有类别，以后将逐渐根据实际情况调整调查项目。
			<br>&nbsp;&nbsp;3．本问卷为年度跟踪调查。考虑到衔接性，本年度需填写2015、2016、2017年数据。 <br>&nbsp;&nbsp;4．每个示范县填一份产业发展问卷，请试验站负责人员复制本问卷填写各示范县情况。
			<br>&nbsp;&nbsp;5．问卷使用过程中如有疑问，请与特色蔬菜产业经济岗微信联系。吴曼：15354321919
			吴娟频：13903326539 <br>&nbsp;&nbsp;6．问卷填完后请发至体系产业经济岗邮箱：tsscjjg@126.com



			<p>
		  <input type="hidden" id="aSfxid" name="CSfxjcxx.aSfxid" value=""
				readonly="readonly" />
			<input type="hidden" id="aDcrid"  name="CSfxjcxx.aDcr" value="" readonly="readonly" />	
			调查人 &nbsp;&nbsp;<input type="text" id="pingzhong"
				name="" width="100px" value="" readonly="readonly" />
				
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				联系电话&nbsp;&nbsp;<input type="text" id="nian" name="CSfxjcxx.aLxdh"
				style="width:20%" value="" readonly="readonly" />

			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;调查时间&nbsp;&nbsp;<input
				type="date" id="aDcsj" name="CSfxjcxx.s_aDcsj" style="width:20%"
				value="" /> <br>试验站负责人邮箱&nbsp;&nbsp;<input type="text"
				id="aZhsyzwjfzryx" name="CSfxjcxx.aZhsyzwjfzryx" style="width:20%"
				value="" readonly="readonly" />
	            地址:&nbsp;&nbsp; &nbsp;&nbsp; 省&nbsp;&nbsp; <!-- <select id="prov1"
				name="CSfxjcxx.aSf" style="width:100px;"  onfocus="this.defaultIndex=this.selectedIndex;"
onchange="this.selectedIndex=this.defaultIndex;"> 
			</select> --> 
			<input type="text" id="pro" value="" name="CSfxjcxx.province"
				style="width:100px;" readonly="readonly" />		
			市 &nbsp;&nbsp;<!-- <select id="city1" name="CSfxjcxx.aCity" style="width:100px;" onfocus="this.defaultIndex=this.selectedIndex;"
onchange="this.selectedIndex=this.defaultIndex;"></select> --> <input
				type="text" id="cit" name="CSfxjcxx.city" style="width:100px;"
				readonly="readonly" />
                               县&nbsp;&nbsp;<!-- <select id="county1" name="CSfxjcxx.aXian" style="width:100px;" onfocus="this.defaultIndex=this.selectedIndex;"
onchange="this.selectedIndex=this.defaultIndex;"></select> --> <input
				type="text" id="cou" name="CSfxjcxx.xian" style="width:100px;"
				readonly="readonly" />
			<input type="hidden" id="aprovincename" name="CSfxjcxx.aSf" value="">
			<input type="hidden" id="acityname" name="CSfxjcxx.aCity" value="">
			<input type="hidden" id="axianname" name="CSfxjcxx.aXian" value="">
			
		
		<h2>一、示范县水生蔬菜生产情况</h2>
		<br>
          
     </div>

          <div id="mct_div" style="width:100%;"></div>

	<!-- 表1，表2，表3............end -->
	<h2>二、示范县产业经营状况调查</h2>
	<div id="mcc_div" style="width:100%;height:250px;">

	</div>
	<h2>三、示范县农业园区建设情况</h2>
	<div id="placeholder" style="width:100%;height:320px;">

		<p>
			1.本示范县有<input type="text" id="txtCon" name="CSfxnyyqjsqk.nqsl" />个蔬菜现代农业园区，请写出园区名录（希望能提供园区具体资料）。
		</p>
		<textarea id="txtCon1" placeholder="内容" style="width: 500px;"
			name="CSfxnyyqjsqk.nqmc"></textarea>
		<p>2.本示范县省级以上加工企业，如有，请提供企业名录、企业网址或相关企业介绍。</p>
		<textarea id="txtCon2" placeholder="内容" style="width: 500px;"
			name="CSfxnyyqjsqk.sjjgqyxx"></textarea>
		<p>3.本示范县是否有与蔬菜相关文化节庆活动，如荷花节、芋头节等？请列举出节庆名称、时间。</p>
		<textarea id="txtCon3" placeholder="内容" style="width: 500px;"
			name="CSfxnyyqjsqk.wfhd"></textarea>






		<!--	<a href="#" class="btn btn-success">提 交</a>-->

	</div>
	<h2>四、请提供示范县产业发展报告或产业发展规划</h2>
	<div id="placeholder" style="width:100%;height:100px;">


		<textarea id="sfxcyfz" placeholder="内容" style="width: 500px;"
			name="CSfxfz.sfxcyfz"></textarea>







		<!-- 	<a href="#" class="btn btn-success" onclick="save()">保存</a> -->
		<!--&nbsp;&nbsp;&nbsp;<a href="enter.php" class="btn btn-success">提交</a>-->

		<!--	<a href="#" class="btn btn-success">提 交</a>-->

	</div>
	<!-- <input id="btnSubmit" type="submit" class="btn btn-success" value="保存">   -->

	<input type="button" class="btn btn-success" id="btnSubmit"
		onclick="funSave()" value="保存" />
	<input type="button" class="btn btn-success" id="btnReturn"
		onclick="funReturn()" value="返回" />
	<!-- <button class="btn btn-success" id="save" onclick="save()">保存</button> -->
	<!-- <a href="#" class="btn btn-success" onclick="save()">保存</a> -->
</form>

<script type="text/javascript">
	function funSave() {
	
	
           
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/addmodelCounty.do",
			async : false,
			data : $("#Andregist").serialize(),
			dataType : "text",
			success : function(data) {
				alert("保存成功！");
				
				if($("#aSfxid").val()!=""){}else{
				//window.location.reload();
				
					$.ajax({url:"froms2.jsp",success:function(data){
						$("#dd").html(data);
						$("#d-2").addClass("active");
						$("#add").removeClass("active");
						$("#e").removeClass("active");
						$("#d-1").removeClass("active");
						$("#f").removeClass("active");
						$("#g").removeClass("active");
						$("#h").removeClass("active");
						$("#i").removeClass("active");
						$("#j").removeClass("active");
						$("#k").removeClass("active");
						$("#l").removeClass("active");
						$("#m").removeClass("active");
				}});
				
				$("html, body").animate({scrollTop:0}, "slow");
				
				//alert("aaa");
				}
				
				

			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				// 状态码
				alert(XMLHttpRequest.status + "<br/>"
						+ XMLHttpRequest.readyState + "<br/>" + textStatus);
				// alert(data);
				alert("保存失败！");
			}
		});

	}

	window.onload = function() {
		document.getElementById('startYear').addEventListener('change',
				function() {
					alert("当前选项是:" + this.value);
				}, false);

		//  alert("__________1");
		//省市县列表生成---------				     
		$.ajax({
			type : "get",
			dataType : "jsonp",
			url : "http://res.42du.cn/region/init",
			jsonpCallback : "callback0"
		});
	}
	$("#prov1").change(function() {
		var v = $(this).val();
		$.ajax({
			type : "get",
			dataType : "jsonp",
			url : "http://res.42du.cn/region/prov/" + v,
			jsonpCallback : "callback1"
		});
	});
	$("#city1").change(function() {
		var v = $(this).val();
		$.ajax({
			type : "get",
			dataType : "jsonp",
			url : "http://res.42du.cn/region/city/" + v,
			jsonpCallback : "callback2"
		});
	});
	$("#county1").change(function() {
		var v = $(this).val();
		$.ajax({
			type : "get",
			dataType : "jsonp",
			url : "http://res.42du.cn/region/county/" + v,
			jsonpCallback : "callback3"
		});
	});

	//--------end------------  

	function callback0(data) {
		init($("#prov1"), data.prov);
		init($("#city1"), data.city);
		init($("#county1"), data.county);

		// init($("#town"),data.town);
		//  init($("#village"),data.village);
	}
	function callback1(data) {
		init($("#city1"), data.city);
		init($("#county1"), data.county);
		//  init($("#town"),data.town);
		// init($("#village"),data.village);
	}
	function callback2(data) {
		init($("#county1"), data.county);
		//  init($("#town"),data.town);
		// init($("#village"),data.village);
	}
	function callback3(data) {
		//  init($("#town"),data.town);
		//  init($("#village"),data.village);
	}
	// function callback4(data) {
	//    init($("#village"),data);
	//  }
	function init(sel, data) {
		sel.html("");
		$(data).each(
				function(i, item) {
					sel.append("<option value='"+item.re_code+"'>"
							+ item.re_name + "</option>");
				});
	}
</script>