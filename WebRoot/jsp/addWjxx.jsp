<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<div class="page-header">
	<h1>蔬菜生产情况调查表</h1>
</div>

<form action="#" method="get" onsubmit="return checkForm()">
<input type="hidden" id="aWjid">
	主栽品种：&nbsp;&nbsp;&nbsp; <select id="b">
		<option>--请选择--</option>
		<option value="0">水生蔬菜</option>
		<option value="1">辛辣蔬菜</option>

	</select> <select id="citys" name="citys">

	</select> 年份：<select id="yearcreate" style="width: 80px;"></select>
</form>

<div id="placeholder" style="width:100%;height:680px;">
	<form id="form1" action="" name="form1">
		<p>
		<h3>一. 被访者基本生产经营状况</h3>
		</p>
		<p>
			1.姓名：<input type="text" style="width:250px;" name="text4" id="text4" />
		</p>
		<p>
			2.联系方式： <input type="text" name="text5" id="text5" />
		</p>
		<p>
			3.年龄： <input type="number" style="width:70px" name="text6" id="text6"
				min="10" max="100"
				onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
				onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}" />岁
		</p>
		<p>
			4.地址: 省 <select id="prov" name="province" style="width:100px;">
			</select> 市 <select id="city" name="City" style="width:100px;">
			</select> 县<select id="county" name="xian" style="width:100px;">
			</select> <!-- 乡 <select id="town" name="xiang" style="width:100px;">
			</select> 村<select id="village" name="cun" style="width:100px;"></select> -->
		</p>
		<p>
			5.学历：<input type="radio" id="xiaoxue" name="xueli" value="1" />小学及以下&nbsp;
			<input type="radio" id="chuzhong" name="xueli" value="2" />初中&nbsp;
			<input type="radio" id="gaozhong" name="xueli" value="3" />高中（包括职高，技校）&nbsp;
			<input type="radio" id="dazuan" name="xueli" value="4" />大专及以上&nbsp;
		</p>
		<p>
			6.经营主体类型：<input type="checkbox" id="nh" name="jyztlx" value="1" />农户&nbsp;
			<input type="checkbox" id="hzs1" name="jyztlx" value="2"
				onclick="check()" />合作社&nbsp; <input type="checkbox" id="ltqy"
				name="jyztlx" value="3" onclick="check()" />龙头企业&nbsp; <input
				type="checkbox" id="jtnc" name="jyztlx" value="4" />家庭农场&nbsp; <input
				type="checkbox" id="zzdh" name="jyztlx" value="5" />种植大户&nbsp; <input
				type="checkbox" id="qt" name="jyztlx" value="6" />其他&nbsp;
		<p>
			如经营主体类型是合作社或龙头企业，请填写您担任的职务是 <input type="text" style="width:150px"
				id="ve" name="textfield" />
		</p>
	
		<p>
			7.耕地面积共<input type="text" style="width:50px" name="textfield"
				id="all" />;&nbsp;亩;
		</p>

		<p>
			8.您家主要的生产方式是:&nbsp;<input type="checkbox" id="ludi" name="scfs"
				value="1" />露地栽培&nbsp; <input type="checkbox" id="dimo" name="scfs"
				value="2" />地膜栽培&nbsp; <input type="checkbox" id="xiaogong"
				name="scfs" value="3" />小拱棚栽培&nbsp; <input type="checkbox"
				id="zhongda" name="scfs" value="4" />中大棚栽培&nbsp; <input
				type="checkbox" id="riguang" name="scfs" value="5" />日光温室栽培&nbsp;
		</p>

		<p>
			9.是否注册品牌？&nbsp;<input type="radio" id="zhuce1" name="zhuce"
				onclick="no()" value="1" />是&nbsp; <input type="radio" id="zhuce2"
				name="zhuce" onclick="no()" value="2" />否&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			如有请填写品牌名称<input type="text" name="textfield" id="mingcheng1"
				style="width:150px" />
		</p>
		<p>
			10.产品是否出口？&nbsp;<input type="radio" id="chanchu1" name="chukou"
				onclick="chan()" value="1" />是&nbsp; <input type="radio"
				id="chanchu2" name="chukou" value="2" )/>否&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>




		<!-- </p> -->
		<!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->
		<p>13.您曾享受过哪些政策保障及金融保险支持？</p>
		<p>
			<input type="checkbox" id="buz" name="zcjr" value="1" />补贴政策（如良种补贴，农资综合补贴，保费补贴等）
		</p>
		<p>
			<input type="checkbox" id="youz" name="zcjr" value="2" />优惠政策（如购机优惠，土地流转优惠，税收优惠等）
		</p>
		<p>
			<input type="checkbox" name="zcjr" id="xiangz" value="3" />项目资金（如产业化项目扶持资金，农产品产地初加工补助项目等)
		</p>
		<p>
			<input type="checkbox" id="zuiz" name="zcjr" value="4" />最低价格保险或目标价格保险
		</p>

		<p>
			<input type="checkbox" id="qitaz" name="zcjr" value="5"
				onclick="qita()" />其他&nbsp;<input type="text" id="qitat"
				name="qitat" style="width:250px" disabled="disabled" />
		</p>




	</form>

</div>

<div class="page-header">
	<h3>二. 生产经营情况调查表</h3>
</div>



<div id="placeholder" style="width:100%;height:auto;">
	<form>
		<h3>表1 生产的投入产出情况</h3>
		<br> 主栽品种 &nbsp;&nbsp;<input type="text" id="pinzhong">播种时间&nbsp;&nbsp;<input
			type="date" id="nian" style="width:20%" />
		<!--<input type="text" id="yue" style="width:50px"/>月
					<input type="text" id="ri" style="width:50px"/>日&nbsp;&nbsp;-->
		收货时间<input type="date" id="nian1" style="width:20%" />
		<!--<input type="text" id="yue1" style="width:50px"/>月
					<input type="text" id="ri1" style="width:50px"/>日-->

		<table
			class="table table-striped table-bordered table-condensed table-responsive"
			width="100%" border="1" cellspacing="0">
			<thead>
				<tr height="30%">
					<td colspan="2" style="text-align: center;">调查内容</td>
					<td width="6%">&nbsp;单位</td>
					<td width="40%">&nbsp;2018年</td>
				</tr>
			</thead>
			<tbody>
				<tr height="40%">
					<td colspan="2">播种面积</td>
					<td>&nbsp;亩</td>
					<td><input type="text" id="bo" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td colspan="2">年总产量</td>
					<td>&nbsp;斤</td>
					<td><input type="text" id="nchan" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td colspan="2">主产品（）产量</td>
					<td>&nbsp;斤</td>
					<td><input type="text" id="zchan" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td colspan="2">副产品（）产量</td>
					<td>&nbsp;斤</td>
					<td><input type="text" id="fchan" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td colspan="2">年销售收入</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="nxiao" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td colspan="2">主产品平均销售价格</td>
					<td>&nbsp;元/斤</td>
					<td><input type="text" id="zxiao" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td colspan="2">副产品平均销售价格</td>
					<td>&nbsp;元/斤</td>
					<td><input type="text" id="fxiao" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td colspan="2">总成本</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="zc" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td>1 每亩物质与服务费用</td>
					<td>合计</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="fei" style="width: 86%;"
						readonly="readonly" /></td>
				</tr>
				<tr height="40%">
					<td width="216" rowspan="9" style="text-align: center;"></td>
					<td width="282">种子费</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="zz" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td>肥料费</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="flf" style="width: 86%;" /></td>
				</tr>

				<tr height="40%">
					<td>农药费</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="nyf" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td>农膜费</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="nmf" style="width: 86%;" /></td>
				</tr>

				<tr height="40%">
					<td>机械作业费</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="jxf" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td>灌溉费</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="ggf" style="width: 86%;" /></td>
				</tr>

				<tr height="40%x">
					<td>技术服务费</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="jsf" style="width: 86%;" /></td>
				</tr>

				<tr height="40%">
					<td>保险费</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="bxf" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td>其他直接费用</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="qitaf" style="width: 86%;" /></td>
				</tr>

				<tr height="40%">
					<td>2 每亩人工成本</td>
					<td>合计</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="rgcbhj" style="width: 86%;"
						readonly="readonly" /></td>
				</tr>
				<tr height="40%">
					<td rowspan="6">&nbsp;</td>
					<td>2.1 家庭用工情况</td>
					<td>&nbsp;</td>
					<td></td>
				</tr>
				<tr height="40%">
					<td style="text-indent:2em">家庭用工天数</td>
					<td>&nbsp;日</td>
					<td><input type="text" id="tianshu" style="width: 86%;" /></td>
				</tr>
				<tr height="40%">
					<td style="text-indent:2em">家庭用工人数</td>
					<td>&nbsp;人</td>
					<td><input type="text" id="gongj" style="width: 86%;" /></td>
				</tr>
				<tr height="30px">
					<td>2.2 雇工费用</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="ggfy" style="width: 86%;"
						readonly="readonly" /></td>
				</tr>
				<tr height="30px">
					<td style="text-indent:2em">雇工天数</td>
					<td>&nbsp;日</td>
					<td><input type="text" id="ggts" style="width: 86%;" /></td>
				</tr>
				<tr height="30px">
					<td style="text-indent:2em">雇工工价</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="gggj" style="width: 86%;" /></td>
				</tr>
				<tr height="30px">
					<td></td>
					<td style="text-indent:2em">雇工人数</td>
					<td>&nbsp;人</td>
					<td><input type="text" id="ggrs" style="width: 86%;" /></td>
				</tr>
				<tr height="30px">
					<td>3 附</td>
					<td>3.1 每亩种子用量</td>
					<td>&nbsp;斤</td>
					<td><input type="text" id="zzyl" style="width: 86%;" /></td>
				</tr>
				<tr height="30px">
					<td rowspan="2">&nbsp;</td>
					<td>3.2 每亩化肥用量</td>
					<td>&nbsp;斤</td>
					<td><input type="text" id="hfyl" style="width: 86%;" /></td>
				</tr>
				<tr height="30px">
					<td>3.3 每亩农膜用量</td>
					<td>&nbsp;斤</td>
					<td><input type="text" id="nmyl" style="width: 86%;" /></td>
				</tr>
				<tr height="30px">
					<td>4 每亩土地成本</td>
					<td>合计</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="tudicb" style="width: 86%;"
						readonly="readonly" /></td>
				</tr>
				<tr height="30px">
					<td rowspan="2">&nbsp;</td>
					<td>4.1 流转地租金</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="zujin" style="width: 86%;" /></td>
				</tr>
				<tr height="30px">
					<td>4.2 自营地折租</td>
					<td>&nbsp;元</td>
					<td><input type="text" id="zhezu" style="width: 86%" /></td>
				</tr>
			</tbody>
		</table>

	</form>
</div>

<div id="placeholder" style="width:100%;height:auto;">

	<form action="enter-c.php" method="POST">
		<h3>表2 销售渠道及销售价格（注:填写作物名称）</h3>
		&nbsp;&nbsp;&nbsp;<br>
		<div>
			<h4>请选择销售渠道&nbsp;&nbsp;&nbsp;&nbsp;</h4>
			&nbsp;&nbsp; <input type="checkbox" id="box1" name="xsqd_cb"
				value="1" onclick="add1()" /> 经纪人(地头市场)&nbsp; <input
				type="checkbox" id="box2" name="xsqd_cb" value="2" onclick="add2()" />批发市场&nbsp;
			<input type="checkbox" id="box3" name="xsqd_cb" value="3"
				onclick="add3()" />合作社&nbsp; <input type="checkbox" id="box4"
				name="xsqd_cb" value="4" onclick="add4()" />销售公司&nbsp; <input
				type="checkbox" id="box5" name="xsqd_cb" value="5" onclick="add5()" />加工企业&nbsp;
			<input type="checkbox" id="box6" name="xsqd_cb" value="6"
				onclick="add6()" />出口企业&nbsp; <input type="checkbox" id="box7"
				name="xsqd_cb" value="7" onclick="add7()" />超市&nbsp; <input
				type="checkbox" id="box8" name="xsqd_cb" value="8" onclick="add8()" />直营店&nbsp;
			<input type="checkbox" id="box9" name="xsqd_cb" value="9"
				onclick="add9()" />网络销售(电商，微商等)&nbsp; <input type="checkbox"
				id="box10" name="xsqd_cb" value="10" onclick="add10()" />集市自销&nbsp;
			<input type="checkbox" id="box11" name="xsqd_cb" value="11"
				onclick="add11()" />自留&nbsp;
		</div>
		<br>
		<table id="tableall">
			<table id="table1"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0"
				style="text-align: center;display: none;">

				<!--zzzzzzzzzzffffffff 表二隐藏部分 -->

				<tr>
					<td>经纪人&nbsp;&nbsp;&nbsp;</td>
					<input type="hidden" id="cplx" name="cplx" value="经纪人" />
					<td height="35"><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" /></td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('经纪人','1');return false;" name="aqwe"><i
							class="icon-hand-down"></i>增加</a>
				</tr>
			</table>


			<table id="table2" style="display: none;"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0" style="text-align: center;">
				<tr height="35">
					<td>批发市场&nbsp;&nbsp;</td>
					<input type="hidden" id="cplx" name="cplx" value="批发市场" />
					<td><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" />
					</td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('批发市场','2');return false;"><i
							class="icon-hand-down"></i>增加</a>
				</tr>
			</table>
			<table id="table3" style="display: none;"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0" style="text-align: center;">
				<tr height="35">
					<td>合作社&nbsp;&nbsp;&nbsp;</td>
					<input type="hidden" id="cplx" name="cplx" value="合作社">
					<td><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" />
					</td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('合作社','3');return false;"><i
							class="icon-hand-down"></i>增加</a>
				</tr>
			</table>
			<table id="table4" style="display: none;"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0" style="text-align: center;">
				<tr height="35">
					<td>销售公司</td>
					<input type="hidden" id="cplx" name="cplx" value="销售公司">
					<td><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" />
					</td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('销售公司','4');return false;"><i
							class="icon-hand-down"></i>增加</a> <!--<a href="#"  class="btn btn-mini "  onclick=""><i class="icon-trash"></i>删除</a>-->
					</td>
				</tr>
			</table>
			<table id="table5" style="display: none;"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0" style="text-align: center;">
				<tr height="35">
					<td>加工企业</td>
					<input type="hidden" id="cplx" name="cplx" value="加工企业">
					<td><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" />
					</td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('加工企业','5');return false;"><i
							class="icon-hand-down"></i>增加</a> <!--<a href="#"  class="btn btn-mini "  onclick=""><i class="icon-trash"></i>删除</a>-->
					</td>
				</tr>
			</table>
			<table id="table6" style="display: none;"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0" style="text-align: center;">
				<tr height="35">
					<td>出口企业</td>
					<input type="hidden" id="cplx" name="cplx" value="出口营业">
					<td><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" />
					</td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('出口企业','6');return false;"><i
							class="icon-hand-down"></i>增加</a> <!--<a href="#"  class="btn btn-mini "  onclick=""><i class="icon-trash"></i>删除</a>-->
					</td>
				</tr>
			</table>
			<table id="table7" style="display: none;"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0" style="text-align: center;">
				<tr height="35">
					<td>超市&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<input type="hidden" id="cplx" name="cplx" value="超市">
					<td><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" />
					</td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('超市','7');return false;"><i
							class="icon-hand-down"></i>增加</a> <!--<a href="#"  class="btn btn-mini "  onclick=""><i class="icon-trash"></i>删除</a>-->
					</td>
				</tr>
			</table>
			<table id="table8" style="display: none;"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0" style="text-align: center;">
				<tr height="35">
					<td>直营店&nbsp;&nbsp;&nbsp;</td>
					<input type="hidden" id="cplx" name="cplx" value="直营店">
					<td><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" />
					</td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('直营店','8');return false;"><i
							class="icon-hand-down"></i>增加</a> <!--<a href="#"  class="btn btn-mini "  onclick=""><i class="icon-trash"></i>删除</a>-->
					</td>
				</tr>
			</table>
			<table id="table9" style="display: none;"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0" style="text-align: center;">
				<tr height="35">
					<td>
						<p>网络销售</p></td>
					<input type="hidden" id="" cplx name="cplx" value="网络销售">
					<td><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" />
					</td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('网络销售','9');return false;"><i
							class="icon-hand-down"></i>增加</a> <!--<a href="#"  class="btn btn-mini "  onclick=""><i class="icon-trash"></i>删除</a>-->
					</td>
				</tr>
			</table>
			<table id="table10" style="display: none;"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0" style="text-align: center;">
				<tr height="35">
					<td>集市自销</td>
					<input type="hidden" id="cplx" name="cplx" value="集市自销">
					<td><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" />
					</td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('集市自销','10');return false;"><i
							class="icon-hand-down"></i>增加</a> <!--<a href="#"  class="btn btn-mini "  onclick=""><i class="icon-trash"></i>删除</a>-->
					</td>
				</tr>
			</table>
			<table id="table11" style="display: none;"
				class="table table-striped table-bordered table-condensed"
				width="924" border="1" cellspacing="0" style="text-align: center;">
				<tr height="35">
					<td>自留&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<input type="hidden" id="cplx" name="cplx" value="自留">
					<td><input type="text" id="xssj" name="xssj"
						style="width: 215px;" placeholder="销售时间（月/日）" />
					</td>
					<td><input type="text" id="xsjg" name="xsjg"
						style="width: 150px;" />&nbsp;元/公斤，销售&nbsp; <input type="text"
						id="xsl" name="xsl" style="width: 150px;" />&nbsp;公斤</td>
					<td><a href="#" class="btn btn-mini "
						onclick="inc1('自留','11');return false;"><i
							class="icon-hand-down"></i>增加</a> <!--<a href="#"  class="btn btn-mini "  onclick=""><i class="icon-trash"></i>删除</a>-->
					</td>
				</tr>
			</table>
		</table>
	</form>

</div>
<!-- 表二结束 -->

<div id="placeholder" style="width:100%;height:350px;">

	<h3>
		表3 &nbsp;<input type="text" id="pingzhong" name="zwmc">

		的技术研发推广需求及评价（注：填写作物名称）
	</h3>
	<br>

	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<td rowspan="2">序号</td>
				<td rowspan="2">技术类型</td>
				<td colspan="5">现有技术评价</td>
				<td colspan="5">新技术需求或重要程度评价</td>

			</tr>
		</thead>

		<tbody>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>非常不满意</td>
				<td>不满意</td>

				<td>一般</td>

				<td>比较满意</td>
				<td>非常满意</td>
				<td>非常不重要</td>
				<td>不重要</td>

				<td>一般程度</td>

				<td>比较重要</td>
				<td>非常重要</td>
			</tr>



			<tr class="list-roles">
				<td>1</td>
				<td>良种繁育技术</td>
				<input type="hidden" name="jslx" value="良种繁育技术" />
				<!-- 现有技术评价 -->
				<td><input type="radio" id="良种繁育技术fcb" name="eval1-1" value="1" /></td>
				<td><input type="radio" id="良种繁育技术bmy" name="eval1-1" value="2" /></td>
				<td><input type="radio" id="良种繁育技术yb" name="eval1-1" value="3" /></td>
				<td><input type="radio" id="良种繁育技术bjmy" name="eval1-1" value="4" /></td>
				<td><input type="radio" id="良种繁育技术fcmy" name="eval1-1" value="5" /></td>
				<!-- 新技术需求或重要程度评价 -->
				<td><input type="radio" id="良种繁育技术fcbzy" name="eval2-1" value="1" /></td>
				<td><input type="radio" id="良种繁育技术bzy" name="eval2-1" value="2" /></td>
				<td><input type="radio" id="良种繁育技术ybcd" name="eval2-1" value="3" /></td>
				<td><input type="radio" id="良种繁育技术bjzy" name="eval2-1" value="4" /></td>
				<td><input type="radio" id="良种繁育技术fczy" name="eval2-1" value="5" /></td>

			</tr>
			<tr class="list-roles">
				<td>2</td>
				<td>提高品质良种技术</td>
				<input type="hidden" name="jslx" value="提高品质良种技术" />
				<td><input type="radio" id="提高品质良种技术fcb" name="eval1-2" value="1" /></td>
				<td><input type="radio" id="提高品质良种技术bmy" name="eval1-2" value="2" /></td>
				<td><input type="radio" id="提高品质良种技术yb" name="eval1-2" value="3" /></td>
				<td><input type="radio" id="提高品质良种技术bjmy" name="eval1-2" value="4" /></td>
				<td><input type="radio" id="提高品质良种技术fcmy" name="eval1-2" value="5" /></td>

				<td><input type="radio" id="提高品质良种技术fcbzy" name="eval2-2" value="1" /></td>
				<td><input type="radio" id="提高品质良种技术bzy" name="eval2-2" value="2" /></td>
				<td><input type="radio" id="提高品质良种技术ybcd" name="eval2-2" value="3" /></td>
				<td><input type="radio" id="提高品质良种技术bjzy" name="eval2-2" value="4" /></td>
				<td><input type="radio" id="提高品质良种技术fczy" name="eval2-2" value="5" /></td>
			</tr>

			<tr class="list-roles">
				<td>3</td>
				<td>病虫害防控技术</td>
				<input type="hidden" name="jslx" value="病虫害防控技术" />
				<td><input type="radio" id="病虫害防控技术fcb" name="eval1-3" value="1" /></td>
				<td><input type="radio" id="病虫害防控技术bmy" name="eval1-3" value="2" /></td>
				<td><input type="radio" id="病虫害防控技术yb" name="eval1-3" value="3" /></td>
				<td><input type="radio" id="病虫害防控技术bjmy" name="eval1-3" value="4" /></td>
				<td><input type="radio" id="病虫害防控技术fcmy" name="eval1-3" value="5" /></td>

				<td><input type="radio" id="病虫害防控技术fcbzy" name="eval2-3" value="1" /></td>
				<td><input type="radio" id="病虫害防控技术bzy" name="eval2-3" value="2" /></td>
				<td><input type="radio" id="病虫害防控技术ybcd" name="eval2-3" value="3" /></td>
				<td><input type="radio" id="病虫害防控技术bjzy" name="eval2-3" value="4" /></td>
				<td><input type="radio" id="病虫害防控技术fczy" name="eval2-3" value="5" /></td>
			</tr>

			<tr class="list-roles">
				<td>4</td>
				<td>优质高效栽培技术</td>
				<input type="hidden" name="jslx" value="优质高效栽培技术" />
				<td><input type="radio" id="优质高效栽培技术fcb" name="eval1-4" value="1" /></td>
				<td><input type="radio" id="优质高效栽培技术bmy" name="eval1-4" value="2" /></td>
				<td><input type="radio" id="优质高效栽培技术yb" name="eval1-4" value="3" /></td>
				<td><input type="radio" id="优质高效栽培技术bjmy" name="eval1-4" value="4" /></td>
				<td><input type="radio" id="优质高效栽培技术fcmy" name="eval1-4" value="5" /></td>

				<td><input type="radio" id="优质高效栽培技术fcbzy" name="eval2-4" value="1" /></td>
				<td><input type="radio" id="优质高效栽培技术bzy" name="eval2-4" value="2" /></td>
				<td><input type="radio" id="优质高效栽培技术ybcd" name="eval2-4" value="3" /></td>
				<td><input type="radio" id="优质高效栽培技术bjzy" name="eval2-4" value="4" /></td>
				<td><input type="radio" id="优质高效栽培技术fczy" name="eval2-4" value="5" /></td>
			</tr>

			<tr class="list-roles">
				<td>5</td>
				<td>省工机械技术</td>
				<input type="hidden" name="jslx" value="省工机械技术">
				<td><input type="radio" id="省工机械技术fcb" name="eval1-5" value="1" /></td>
				<td><input type="radio" id="省工机械技术bmy" name="eval1-5" value="2" /></td>
				<td><input type="radio" id="省工机械技术yb" name="eval1-5" value="3" /></td>
				<td><input type="radio" id="省工机械技术bjmy" name="eval1-5" value="4" /></td>
				<td><input type="radio" id="省工机械技术fcmy" name="eval1-5" value="5" /></td>

				<td><input type="radio" id="省工机械技术fcbzy" name="eval2-5" value="1" /></td>
				<td><input type="radio" id="省工机械技术bzy" name="eval2-5" value="2" /></td>
				<td><input type="radio" id="省工机械技术ybcd" name="eval2-5" value="3" /></td>
				<td><input type="radio" id="省工机械技术bjzy" name="eval2-5" value="4" /></td>
				<td><input type="radio" id="省工机械技术fczy" name="eval2-5" value="5" /></td>
			</tr>

			<tr class="list-roles">
				<td>6</td>
				<td>水肥及管理系统</td>
				<input type="hidden" name="jslx" value="水肥及管理系统">
				<td><input type="radio" id="水肥及管理系统fcb"name="eval1-6" value="1" /></td>
				<td><input type="radio" id="水肥及管理系统bmy" name="eval1-6" value="2" /></td>
				<td><input type="radio" id="水肥及管理系统yb" name="eval1-6" value="3" /></td>
				<td><input type="radio" id="水肥及管理系统bjmy" name="eval1-6" value="4" /></td>
				<td><input type="radio" id="水肥及管理系统fcmy" name="eval1-6" value="5" /></td>

				<td><input type="radio" id="水肥及管理系统fcbzy"name="eval2-6" value="1" /></td>
				<td><input type="radio" id="水肥及管理系统bzy" name="eval2-6" value="2" /></td>
				<td><input type="radio" id="水肥及管理系统ybcd" name="eval2-6" value="3" /></td>
				<td><input type="radio" id="水肥及管理系统bjzy" name="eval2-6" value="4" /></td>
				<td><input type="radio" id="水肥及管理系统fczy" name="eval2-6" value="5" /></td>
			</tr>

			<tr class="list-roles">
				<td>7</td>
				<td>贮运和保险技术</td>
				<input type="hidden" name="jslx" value="储运和保险技术">
				<td><input type="radio" id="储运和保险技术fcb" name="eval1-7" value="1" /></td>
				<td><input type="radio" id="储运和保险技术bmy" name="eval1-7" value="2" /></td>
				<td><input type="radio" id="储运和保险技术yb" name="eval1-7" value="3" /></td>
				<td><input type="radio" id="储运和保险技术bjmy" name="eval1-7" value="4" /></td>
				<td><input type="radio" id="储运和保险技术fcmy" name="eval1-7" value="5" /></td>

				<td><input type="radio" id="储运和保险技术fcbzy" name="eval2-7" value="1" /></td>
				<td><input type="radio" id="储运和保险技术bzy" name="eval2-7" value="2" /></td>
				<td><input type="radio" id="储运和保险技术ybcd" name="eval2-7" value="3" /></td>
				<td><input type="radio" id="储运和保险技术bjzy" name="eval2-7" value="4" /></td>
				<td><input type="radio" id="储运和保险技术fczy" name="eval2-7" value="5" /></td>
			</tr>

			<tr class="list-roles">
				<td>8</td>
				<td>加工技术</td>
				<input type="hidden" name="jslx" value="加工技术">
				<td><input type="radio" id="加工技术fcb"name="eval1-8" value="1" /></td>
				<td><input type="radio" id="加工技术bmy" name="eval1-8" value="2" /></td>
				<td><input type="radio" id="加工技术yb" name="eval1-8" value="3" /></td>
				<td><input type="radio" id="加工技术bjmy" name="eval1-8" value="4" /></td>
				<td><input type="radio" id="加工技术fcmy" name="eval1-8" value="5" /></td>

				<td><input type="radio" id="加工技术fcbzy"name="eval2-8" value="1" /></td>
				<td><input type="radio" id="加工技术bzy" name="eval2-8" value="2" /></td>
				<td><input type="radio" id="加工技术ybcd" name="eval2-8" value="3" /></td>
				<td><input type="radio" id="加工技术bjzy" name="eval2-8" value="4" /></td>
				<td><input type="radio" id="加工技术fczy" name="eval2-8" value="5" /></td>
			</tr>

			<tr class="list-roles">
				<td>9</td>
				<td>互联网销售技术</td>
				<input type="hidden" name="jslx" value="互联网销售技术">
				<td><input type="radio" id="互联网销售技术fcb" name="eval1-9" value="1" /></td>
				<td><input type="radio" id="互联网销售技术bmy" name="eval1-9" value="2" /></td>
				<td><input type="radio" id="互联网销售技术yb" name="eval1-9" value="3" /></td>
				<td><input type="radio" id="互联网销售技术bjmy" name="eval1-9" value="4" /></td>
				<td><input type="radio" id="互联网销售技术fcmy" name="eval1-9" value="5" /></td>

				<td><input type="radio" id="互联网销售技术fcbzy" name="eval2-9" value="1" /></td>
				<td><input type="radio" id="互联网销售技术bzy" name="eval2-9" value="2" /></td>
				<td><input type="radio" id="互联网销售技术ybcd" name="eval2-9" value="3" /></td>
				<td><input type="radio" id="互联网销售技术bjzy" name="eval2-9" value="4" /></td>
				<td><input type="radio" id="互联网销售技术fczy" name="eval2-9" value="5" /></td>
			</tr>
		</tbody>
	</table>


</div>




<hr>





<div id="placeholder" style="width:100%;height:auto;">
	<h3>表4 主观问题</h3>
	<br>
	<p>1.请阐述生产经营中遇到的问题</p>
	<textarea id="scwt" name="scwt" placeholder="content"
		style="width: 600px;"></textarea>
	<p>2.请阐述需要技术部门解决的主要问题</p>
	<textarea id="jswt" name="jswt" placeholder="content"
		style="width: 600px;"></textarea>
	<p>3.请阐述需要政府部门解决的主要问题</p>
	<textarea id="zfwt" name="zfwt" placeholder="content"
		style="width: 600px;"></textarea>
	<form>


		<p>
			<a href="#" id="wjinsert" class="btn btn-success" onclick="getdata()">保存</a>
		</p>
		<p hidden id="wjupdata">
			<a href="#" class="btn btn-success" onclick="getdata()">确认修改</a>
		</p>
		
	</form>
</div>
<!-- 问卷录入信息界面结束 -->

<script src="../js/common/common.js"></script>
<script>
             addressInit("prov","city","county");
				document.getElementById('ve').setAttribute("disabled",
						"disabled");

				function check() {

					if (document.getElementById("hzs1").checked == false
							&& document.getElementById("ltqy").checked == false) {//复选框未选中

						document.getElementById('ve').setAttribute("disabled",
								"disabled");
					} else if (document.getElementById("hzs1").checked
							|| document.getElementById("ltqy").checked) {

						document.getElementById('ve').removeAttribute(
								"disabled");
					}
				}

				function no() {
					if (document.getElementById("zhuce2").checked) {//复选框选中
						//	
						document.getElementById('mingcheng1').setAttribute(
								"disabled", "disabled");
					} else if (document.getElementById("zhuce1").checked) {
						document.getElementById('mingcheng1').removeAttribute(
								"disabled");
					}
				}
			</script>
			<!-- 000000000000000000000000000000000000000000000000000 -->
			<script>
				function chan() {
					if (document.getElementById("chanchu2").checked) {//单选框 否 选中

						document.getElementById('mingcheng2').setAttribute(
								"disabled", "disabled");
					} else if (document.getElementById("chanchu1").checked) {//单选是选中
						document.getElementById('mingcheng2').removeAttribute(
								"disabled");
					}
				}
			</script>

			<script>
				function qita() {
					if (document.getElementById("qitaz").checked) {//其他框 否 选中
						//	
						document.getElementById('qitat').removeAttribute(
								"disabled");
					} else {//单选是选中

						document.getElementById('qitat').setAttribute(
								"disabled", "disabled");
					}
				}
			</script>
			<script>
				/* var city = new Array(2);
				city[0] = new Array("莲藕", "芋头", "茭白", "荸荠", "其他（水芹）");
				city[1] = new Array("辣椒", "韭菜", "荠菜", "洋葱", "葱", "蒜", "姜");

				function changeCity(val) {
					//9.得到第二个下拉列表的id值
					var citysEle = document.getElementById("citys");
					//10.清空第二个下拉列表的option内容
					citysEle.options.length = 0;
					//2.遍历省分
					for ( var i = 0; i < city.length; i++) {
						//3.如果遍历的省份和选择的相同，则进入下一个循环
						if (val == i) {
							//4.遍历选中省份下的城市
							for ( var j = 0; j < city[i].length; j++) {
								//5.创建一个文本节点，将选中省份下的城市，添加进去
								var TextNode = document
										.createTextNode(city[i][j]);

								//6.创建一个option元素节点
								var opEle = document.createElement("option");

								//7.将文本节点添加到元素节点上
								opEle.appendChild(TextNode);
								//8.将元素节点添加到第二个下拉列表中

								citysEle.appendChild(opEle);

							}

						}

					}
					//elementNode.childNodes[1].firstChild.nodeValue

				} */
			</script>
			
			<script>
				//生产投入产出主栽品种
				$("#b").change(function() {
					var v = $("#b").val();
					changeCity(v);
					var v = $("#citys").val();
					$('#pinzhong').val(v);

				});

				$("#citys").change(function() {

					var v = $("#citys").val();
					$('#pinzhong').val(v);

				});
				//技术研发评价主栽品种
				$("#b").change(function() {
					var v = $("#b").val();
					changeCity(v);
					var v = $("#citys").val();
					$('#pingzhong').val(v);

				});

				$("#citys").change(function() {

					var v = $("#citys").val();
					$('#pingzhong').val(v);

				});

				function add1() {
					if (document.getElementById("box1").checked) {//单选框 否 选中
						document.getElementById("table1").style.display = "inline-block";

					} else {
						document.getElementById("table1").style.display = "none";

					}
				}
				function add2() {
					if (document.getElementById("box2").checked) {//单选框 否 选中
						document.getElementById("table2").style.display = "inline-block";
					} else {
						document.getElementById("table2").style.display = "none";
					}
				}

				function add3() {
					if (document.getElementById("box3").checked) {//单选框 否 选中

						document.getElementById("table3").style.display = "inline-block";
					} else {
						document.getElementById("table3").style.display = "none";
					}
				}
				function add4() {
					if (document.getElementById("box4").checked) {//单选框 否 选中

						document.getElementById("table4").style.display = "inline-block";
					} else {
						document.getElementById("table4").style.display = "none";
					}
				}
				function add5() {
					if (document.getElementById("box5").checked) {//单选框 否 选中

						document.getElementById("table5").style.display = "inline-block";
					} else {
						document.getElementById("table5").style.display = "none";
					}
				}
				function add6() {
					if (document.getElementById("box6").checked) {//单选框 否 选中

						document.getElementById("table6").style.display = "inline-block";
					} else {
						document.getElementById("table6").style.display = "none";
					}
				}
				function add7() {
					if (document.getElementById("box7").checked) {//单选框 否 选中

						document.getElementById("table7").style.display = "inline-block";
					} else {
						document.getElementById("table7").style.display = "none";
					}
				}
				function add8() {
					if (document.getElementById("box8").checked) {//单选框 否 选中

						document.getElementById("table8").style.display = "inline-block";
					} else {
						document.getElementById("table8").style.display = "none";
					}
				}
				function add9() {
					if (document.getElementById("box9").checked) {//单选框 否 选中

						document.getElementById("table9").style.display = "inline-block";
					} else {
						document.getElementById("table9").style.display = "none";
					}
				}
				function add10() {
					if (document.getElementById("box10").checked) {//单选框 否 选中

						document.getElementById("table10").style.display = "inline-block";
					} else {
						document.getElementById("table10").style.display = "none";
					}
				}
				function add11() {
					if (document.getElementById("box11").checked) {//单选框 否 选中

						document.getElementById("table11").style.display = "inline-block";
					} else {
						document.getElementById("table11").style.display = "none";
					}
				}

				//获取被选中的销售渠道对应的box的名称=====利用name 的 each方法
				function getBoxCheckedNum() {
					var tablesLineNum = 0;
					$("input[name='xsqd_cb']").each(
							function() {
								if ($(this).get(0).checked) {

									tablesLineNum = tablesLineNum
											+ $("#table" + $(this).val()).find(
													"tr").length;

								}
							});
					return tablesLineNum;
				}

				//增加数据行-产品流向
				function inc1(str_cplx, tableId) {

					//var lines = getBoxCheckedNum();

					var tr = '<tr ><td> '
							+ str_cplx
							+ '&nbsp;&nbsp;&nbsp;</td><input type="hidden" name="cplx" value='+str_cplx+' ><td height="35"><input type="text" id="ditou1" name="xssj" placeholder="销售时间（月/日）" style="width: 215px;" /></td><td><input type="text" id="di01" name="xsjg" style="width: 150px;" />&nbsp;元/公斤，销售&nbsp;<input type="text" id="di02" name="xsl" style="width: 150px;" />&nbsp;公斤</td><td><a href="#"  class="btn btn-mini "  onclick="deleteRow1(this,\''
							+ tableId
							+ '\');return false;"><i class="icon-trash"></i>删除</a></td></tr>';
					$("#table" + tableId).append(tr);

					//return  lines;
					//alert(lines);
				}
				//删除数据行-产品流向
				function deleteRow1(obj, tableId) {

					var i = obj.parentNode.parentNode.rowIndex;
					document.getElementById('table' + tableId).deleteRow(i);

				}
				createYear();
				//产生录入的年份
				function createYear() {
					var date = new Date;
					var yearq = date.getFullYear();

					var cc = '';
					for ( var i = 5; i > 0; i--) {
						cc += '<option value=' + (yearq - i) + '>'
								+ (yearq - i) + '</option>';
					}
					cc += '<option selected value=' + (yearq) + '>' + (yearq)
							+ '</option>';
					$("#yearcreate").html(cc);

				}
			</script>