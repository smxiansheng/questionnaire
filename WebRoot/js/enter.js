




//刷新页面清除复选框勾选状态
$(document).ready(function() {
	clearTable2Data();

});


//调用问卷信息界面
function addWjxxJsp(PageContext) {
		$.ajax({
			url : "../jsp/addWjxx.jsp",
			success : function(data) {
				$("#dd").html(data);
				$("#add").addClass("active");
				$("#e").removeClass("active");
				$("#d-1").removeClass("active");
				$("#d-2").removeClass("active");
				$("#f").removeClass("active");
				$("#g").removeClass("active");
				$("#h").removeClass("active");
				$("#i").removeClass("active");
				$("#j").removeClass("active");
				$("#k").removeClass("active");
				$("#l").removeClass("active");
				$("#m").removeClass("active");

				$("#z").removeClass("active");

			}

	});
}

// 清除复选框的勾选状态
function clearTable2Data() {
	$("input[name='xsqd_cb']").prop("checked", false);
	$("input[name='cplx']").val('');
	$("input[name='xssj']").val('');
	$("input[name='xsjg']").val('');
	$("input[name='xsl']").val('');

}

function getdata() {
	// 被访者基本信息
	// alert("1231231232");
	var aWjid = $("#aWjid").val();
	var aSclx = $("#b option:selected").text();
	//var aSclx = $("#b option:selected").text();
	var aCreateTime = $("#yearcreate").val();
	var aBfzxm = $("#text4").val();
	var aBfzlxfs = $("#text5").val();
	var aBfznl = $("#text6").val();
	var aSf = $("#prov option:selected").val();
	var aCity = $("#city option:selected").val();
	var aXian = $("#county option:selected").val();

	var aZhprovince = $("#prov option:selected").text();
	var aZhcity = $("#city option:selected").text();
	var aZhcounty = $("#county option:selected").text();

	var aXiang = $("#town option:selected").val();
	var aCun = $("#village option:selected").val();
	var aXl = $("input[name='xueli']:checked").val();
	var aZw = $("#ve").val();
	var aGdmj = $("#all").val();
	var a_Sfzcpp = $("input[name='zhuce']:checked").val();
	var aPpmc = $("#mingcheng1").val();
	var a_Sfck = $("input[name='chukou']:checked").val();
	var aQita = $("#qitat").val();

	/* ............................................. */

	// 获得经营主体类型的复选框的值
	var jyzt = new Array();
	$('input[name="jyztlx"]:checked').each(function() {
		jyzt.push($(this).val());
	});
	var a_Jyztlx = jyzt.join('-');
	/* alert(":"+a_jyztlx); */

	// 获得生产方式的复选框的值
	var scfs = new Array();
	$('input[name="scfs"]:checked').each(function() {
		scfs.push($(this).val());
	});
	var a_Scfs = scfs.join('-');
	/* alert(":"+a_scfs); */

	// 获得注册金融的复选框的值
	var zcjr = new Array();
	$('input[name="zcjr"]:checked').each(function() {
		zcjr.push($(this).val());
	});
	var a_Zcbz = zcjr.join('-');
	/* alert(":"+a_zcjr); */
	// 判断主栽品种大类
//	var aBigtype;
//	if (a_bigtype == "0") {
//		aBigtype = "水生蔬菜";
//	} else if (a_bigtype == "1") {
//		aBigtype = "辛辣蔬菜";
//	}

	// 判断经营主体类型
	var aJyztlx;
	if (a_Jyztlx == "1") {
		aJyztlx = "农户";
	} else if (a_Jyztlx == "2") {
		aJyztlx = "合作社";
	} else if (a_Jyztlx == "3") {
		aJyztlx = "龙头企业";
	} else if (a_Jyztlx == "4") {
		aJyztlx = "家庭农场";
	} else if (a_Jyztlx == "5") {
		aJyztlx = "种植大户";
	} else if (a_Jyztlx == "6") {
		aJyztlx = "其他";
	}

	// 判断学历
	var aXueli;
	if (aXl == "1") {
		aXueli = "小学及以下";
	} else if (aXl == "2") {
		aXueli = "初中";
	} else if (aXl == "3") {
		aXueli = "高中（包括职高，技校）";
	} else if (aXl == "4") {
		aXueli = "大专及以上";
	}
	// 判断是否注册品牌
	var aSfzcpp;
	if (a_Sfzcpp == "1") {
		aSfzcpp = "是";
	} else if (a_Sfzcpp == "2") {
		aSfzcpp = "否";
	}
	// 判断是否出口
	var aSfck;
	if (a_Sfck == "1") {
		aSfck = "是";
	} else if (a_Sfck == "2") {
		aSfck = "否";
	}
	// 判断生产方式
	var aScfs;
	if (a_Scfs == "1") {
		aScfs = "露地栽培";
	} else if (a_Scfs == "2") {
		aScfs = "地膜栽培";
	} else if (a_Scfs == "3") {
		aScfs = "小拱棚栽培";
	} else if (a_Scfs == "4") {
		aScfs = "中大棚栽培";
	} else if (a_Scfs == "5") {
		aScfs = "日光温室栽培";
	}

	// 判断政策保障及金融保险支持
	var aZcbz;
	if (a_Zcbz == "1") {
		aZcbz = "补贴政策";
	} else if (a_Zcbz == "2") {
		aZcbz = "优惠政策";
	} else if (a_Zcbz == "3") {
		aZcbz = "项目资金";
	} else if (a_Zcbz == "4") {
		aZcbz = "最低价格保险或目标价格保险";
	} else if (a_Zcbz == "5") {
		aZcbz = "其他";
	}

	// 2.生产的投入产出表
	var aTrccid ;
	var aScmc = $("#pinzhong").val();// 品种
	var aBzsj = $("#nian").val();// 播种时间
	var aShsj = $("#nian1").val();// 收货时间
	var aBzmj = $("#bo").val();// 播种面积
	var aNcpcl = $("#nchan").val();// 年产总量
	var aZcpcl = $("#zchan").val();// 主产品产量
	var aFcpcl = $("#fchan").val();// 副产品产量
	var aNxssr = $("#nxiao").val();// 年销售收入
	var aZcpjg = $("#zxiao").val();// 主产品销售价格
	var aFcpjg = $("#fxiao").val();// 副产品销售价格
	var aZcb = $("#zc").val(); // 总成本
	var aZzf = $("#zz").val();// 种子费
	var aHff = $("#flf").val();// 肥料费
	var aNyf = $("#nyf").val();// 农药费
	var aNmf = $("#nmf").val(); // 农膜费
	var aJxzyf = $("#jxf").val(); // 机械费
	var aPgf = $("#ggf").val(); // 灌溉费
	var aJsfff = $("#jsf").val();// 技术服务费
	var aBxf = $("#bxf").val(); // 保险费
	var aQtzjfy = $("#qitaf").val();// 其他直接费用
	var aMmrgcb = $("#rgcb").val(); // 每亩人工成本
	var aMmtdcb = $("#tudicb").val();// 每亩土地成本
	var aJtygts = $("#tianshu").val();// 家庭用工天数
	var aJtygrs = $("#gongj").val();// 家庭用工人数
	var aGgfy = $("#ggfy").val(); // 雇工费用
	var aGgts = $("#ggts").val(); // 雇工天数
	var aGggj = $("#gggj").val(); // 雇工工价
	var aGgrs = $("#ggrs").val(); // 雇工人数
	var aMzzyl = $("#zzyl").val();// 每亩种子用量
	var aMhfyl = $("#hfyl").val();// 每亩化肥用量
	var aMnmyl = $("#nmyl").val();// 每亩农膜用量
	var aLzdzj = $("#zujin").val();// 流转地租金
	var aZydzz = $("#zhezu").val();// 自营地折租
	var aOneheji = "0";// 合计1
	var aTwoheji = "0";// 合计2
	var aThreeheji = "0";// 合计3

	/** *********************************************** */
	// 3.销售渠道及销售价格
	var lines = getBoxCheckedNum();// inc1();//

	// alert(lines);
	// 获取产品流向的值

	var f_cplx = $("input[name='cplx']");
	var f_axssj = $("input[name='xssj']");
	var f_axsjg = $("input[name='xsjg']");
	var f_axsl = $("input[name='xsl']");

	var acplx = new Array(lines);
	var axssj = new Array(lines);
	var axsjg = new Array(lines);
	var axsl = new Array(lines);

	for ( var i = 0; i < lines; i++) {
		acplx[i] = f_cplx.eq(i).val(); // 将文本框的值添加到数组中
		axssj[i] = f_axssj.eq(i).val(); // 将文本框的值添加到数组中
		axsjg[i] = f_axsjg.eq(i).val(); // 将文本框的值添加到数组中
		axsl[i] = f_axsl.eq(i).val(); // 将文本框的值添加到数组中
	}

	// ====================
	/*
	 * var axssj = new Array(lines); for(var i=0;i<axssj.length;i++){ axssj[i] =
	 * $("#xssj").val(); } var axsjg = new Array(lines); for(var i=0;i<axsjg.length;i++){
	 * axsjg[i] = $("#xsjg").val(); } var axsl = new Array(lines); for(var i=0;i<axsl.length;i++){
	 * axsl[i] = $("#xsl").val(); }
	 */

	var aXsqdjgList = new Array();

	var aScmc = $("#pinzhong").val();
	var aXsqdid;
	var aWjid = $("#aWjid").val();
	for ( var i = 0; i < lines; i++) {
		aXsqdjgList.push({
			aXsqdid : aXsqdid,
			aScmc : aScmc,
			aWjid : aWjid,
			aCplx : acplx[i],
			aXssj : axssj[i],
			aXsjg : axsjg[i],
			aXsl : axsl[i]
		});
	}

	/** **************************************** */
	// 4.技术研发推广需求及评价
	var num = 9;
	var jslx = new Array(num);
	for ( var i = 0; i < jslx.length; i++) {
		jslx[i] = $("input[name='jslx']")[i].value;
	}
	var aJsxqggid;
	var aWjid = $("#aWjid").val();
	var aScmc = $("#pinzhong").val();
	// 现有评价
	var xypj = new Array(num);

	xypj[0] = $("input[name='eval1-1']:checked").val();
	xypj[1] = $("input[name='eval1-2']:checked").val();
	xypj[2] = $("input[name='eval1-3']:checked").val();
	xypj[3] = $("input[name='eval1-4']:checked").val();
	xypj[4] = $("input[name='eval1-5']:checked").val();
	xypj[5] = $("input[name='eval1-6']:checked").val();
	xypj[6] = $("input[name='eval1-7']:checked").val();
	xypj[7] = $("input[name='eval1-8']:checked").val();
	xypj[8] = $("input[name='eval1-9']:checked").val();
	for ( var i = 0; i < xypj.length; i++) {
		if (xypj[i] == "1") {
			xypj[i] = "非常不满意";
		} else if (xypj[i] == "2") {
			xypj[i] = "不满意";
		} else if (xypj[i] == "3") {
			xypj[i] = "一般";
		} else if (xypj[i] == "4") {
			xypj[i] = "比较满意";
		} else if (xypj[i] == "5") {
			xypj[i] = "非常满意";
		}
	}

	// 新技术
	var xjs = new Array(num);

	xjs[0] = $("input[name='eval2-1']:checked").val();
	xjs[1] = $("input[name='eval2-2']:checked").val();
	xjs[2] = $("input[name='eval2-3']:checked").val();
	xjs[3] = $("input[name='eval2-4']:checked").val();
	xjs[4] = $("input[name='eval2-5']:checked").val();
	xjs[5] = $("input[name='eval2-6']:checked").val();
	xjs[6] = $("input[name='eval2-7']:checked").val();
	xjs[7] = $("input[name='eval2-8']:checked").val();
	xjs[8] = $("input[name='eval2-9']:checked").val();
	for ( var i = 0; i < xjs.length; i++) {
		if (xjs[i] == "1") {
			xjs[i] = "非常不重要";
		} else if (xjs[i] == "2") {
			xjs[i] = "不重要";
		} else if (xjs[i] == "3") {
			xjs[i] = "一般程度";
		} else if (xjs[i] == "4") {
			xjs[i] = "比较重要";
		} else if (xjs[i] == "5") {
			xjs[i] = "非常重要";
		}
	}
	var aJsxqggList = new Array();

	for ( var i = 0; i < 9; i++) {
		aJsxqggList.push({
			aJsxqggid : aJsxqggid,
			aScmc : aScmc,
			aWjid : aWjid,
			aJslx : jslx[i],
			aXyjspj : xypj[i],
			aXjspj : xjs[i]
		});
	}
	/** ************************************* */
	// 主观问题表
	var aZgwtid ;
	var aWjid = $("#aWjid").val();
	var aScjywt = $("#scwt").val();
	var aJsbmwt = $("#jswt").val();
	var aZfbmwt = $("#zfwt").val();

	var path = $("#path").val();

	// awjxx['awjxx.aWjid']= aWjid;

	var asctrcc = {};

	var questionBase = {
		"awjxx" : {
			"aCreateTime" : aCreateTime,
			"aSclx" : aSclx,
			"aWjid" : aWjid,
			"aBfzxm" : aBfzxm,
			"aBfzlxfs" : aBfzlxfs,
			"aBfznl" : aBfznl,
			"aSf" : aSf,
			"aCity" : aCity,
			"aXian" : aXian,
			"aZhprovince" : aZhprovince,
			"aZhcity" : aZhcity,
			"aZhcounty" : aZhcounty,
			"aXiang" : aXiang,
			"aCun" : aCun,
			"aXueli" : aXueli,
			"aZw" : aZw,//
			"aGdmj" : aGdmj,
			"aSfzcpp" : aSfzcpp,
			"aPpmc" : aPpmc,
			"aSfck" : aSfck,
			"aQita" : aQita,
			"aScfs" : aScfs,
			"aZcbz" : aZcbz,
			"aJyztlx" : aJyztlx

		},

		"asctrcc" : {
			"aTrccid" : aTrccid,
			"aWjid" : aWjid,
			"aScmc" : aScmc,
			"aBzsj" : aBzsj,
			"aShsj" : aShsj,
			"aBzmj" : aBzmj,
			"aNcpcl" : aNcpcl,
			"aZcpcl" : aZcpcl,
			"aFcpcl" : aFcpcl,
			"aNxssr" : aNxssr,
			"aZcpjg" : aZcpjg,
			"aFcpjg" : aFcpjg,
			"aZcb" : aZcb,
			"aZzf" : aZzf,
			"aHff" : aHff,
			"aNyf" : aNyf,

			"aNmf" : aNmf,
			"aJxzyf" : aJxzyf,
			"aPgf" : aPgf,
			"aJsfff" : aJsfff,

			"aBxf" : aBxf,
			"aQtzjfy" : aQtzjfy,
			"aMmrgcb" : aMmrgcb,
			"aMmtdcb" : aMmtdcb,
			"aJtygts" : aJtygts,//
			"aJtygrs" : aJtygrs,
			"aGgfy" : aGgfy,
			"aGgts" : aGgts,
			"aGggj" : aGggj,
			"aGgrs" : aGgrs,
			"aMzzyl" : aMzzyl,
			"aMhfyl" : aMhfyl,
			"aMnmyl" : aMnmyl,
			"aLzdzj" : aLzdzj,
			"aZydzz" : aZydzz,
			"aOneheji" : aOneheji,
			"aTwoheji" : aTwoheji,
			"aThreeheji" : aThreeheji

		/**/

		},
		/* "aXsqdjgList":{{"aCplx":"1"}} */
		"aXsqdjgList" : aXsqdjgList,
		"aJsxqggList" : aJsxqggList,
		/* 主观问题表 */

		"azgwt" : {
			"aZgwtid" : aZgwtid,
			"aWjid" : aWjid,
			"aScjywt" : aScjywt,
			"aJsbmwt" : aJsbmwt,
			"aZfbmwt" : aZfbmwt
		}
	};

	$.ajax({
		url : path + "/wjxxAdd.do",
		type : "POST",

		// data:questionBase,
		data : JSON.stringify(questionBase),
		/*
		 * acplx:acplx, axssj:axssj, axsjg:axsjg, axsl:axsl
		 */

		contentType : "application/json",
		dataType : 'json',
		success : function(data) {
			alert("保存成功！");
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) { // 失败，回调函数
			// 状态码
			alert(XMLHttpRequest.status + " " + XMLHttpRequest.readyState + " "
					+ textStatus);
		}
	});

}