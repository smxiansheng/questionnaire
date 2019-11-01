   <!--<div class="page-header">
        <h2>二.主要产品销售渠道及价格</h2>
      </div>
      
  
      -->
      <div id="placeholder" style="width:100%;height:300px;" >
     <!-- <p>（说明：在填写问卷时请注意每种产品不同销售时间对应的价格与销售量，所给表格不够，请在空白处补充填写。）</p>  -->
    <form action="#" method="POST">
      <h3>表2&nbsp;
      	<!--<select name="scmc" style="width: 80px;">
        <option value="1">辣椒</option>
        <option value="2">大葱</option>
        <option value="3">姜</option>
        <option value="4">大蒜</option>
        <option value="5">洋葱</option>
        <option value="6">韭菜</option>
        <option value="7">芥菜</option>
        <option value="8">分蘖洋葱</option>
        <option value="9">韭葱</option>
        <option value="10">小毛葱</option>
      </select>-->
      销售渠道及销售价格（注:填写作物名称，如有多种请复制本表）</h3><br>

      
<table class="table table-striped table-bordered table-condensed"
 width="80%" border="1" cellspacing="0" style="text-align: center;">
  <tr>
    <td width="22%" height="20">产品流向</td>
    <td width="28%">销售时间及销售产品  例：9.10大葱</td>
    <td width="40%">销售价格</td>
     <td width="40%">编辑</td>
    
  </tr>
  <tr>
    <td rowspan="3">
    	<select name="scmc" style="text-align: center;">
        <option value="1">经纪人（地头市场）</option>
        <option value="2">批发市场</option>
        <option value="3">合作社</option>
        <option value="4">销售公司</option>
        <option value="5">加工企业</option>
        <option value="6">出口企业</option>
        <option value="7">超市</option>
        <option value="8">直营店</option>
        <option value="9">网络销售（电商、微商等）</option>
        <option value="10">集市自销</option>
        <option value="11">自留</option>
      </select>
    </td>
    <!--<input type="hidden" name="cplx[0]" value="地头市场">-->
    <td height="20%"><input type="text"   style="width: 60%;"/></td>
    <td><input type="text" style="width: 18%;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text"  style="width: 18%;"/>&nbsp;公斤</td>
       <td width="30%" style="text-align: center;"><a href="#"  class="btn btn-mini "  onclick="del(this);"><i class="icon-ok"></i>添加 </a></td>
    
  </tr>
  </table>
  <!--<tr>
    <input type="hidden" name="cplx[1]" value="地头市场">
    <td height="35"><input type="text" id="ditou2" name="xssj[1]" style="width: 215px;"/></td>
    <td><input type="text" id="di11" name="xsjg[1]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="di12" name="xsl[1]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr>
    <input type="hidden" name="cplx[2]" value="地头市场">
    <td height="35"><input type="text" id="ditou3" name="xssj[2]" style="width: 215px;"/></td>
    <td><input type="text" id="di21" name="xsjg[2]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="di22" name="xsl[2]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <td rowspan="3" height="35">批发市场</td>
    <input type="hidden" name="cplx[3]" value="批发市场">
    <td><input type="text" id="pifa1" name="xssj[3]" style="width: 215px;"/></td>
    <td><input type="text" id="pifa01" name="xsjg[3]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="pifa02" name="xsl[3]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[4]" value="批发市场">
    <td><input type="text" id="pifa2" name="xssj[4]" style="width: 215px;"/></td>
    <td><input type="text" id="pifa11" name="xsjg[4]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="pifa12" name="xsl[4]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[5]" value="批发市场">
    <td><input type="text" id="pifa3" name="xssj[5]" style="width: 215px;"/></td>
    <td><input type="text" id="pifa21" name="xsjg[5]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="pifa22" name="xsl[5]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <td rowspan="3">合作社</td>
    <input type="hidden" name="cplx[6]" value="合作社">
    <td><input type="text" id="hezuo1" name="xssj[6]" style="width: 215px;"/></td>
    <td><input type="text" id="hezuo01" name="xsjg[6]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="hezuo02" name="xsl[6]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[7]" value="合作社">
    <td><input type="text" id="hezuo2" name="xssj[7]" style="width: 215px;"/></td>
    <td><input type="text" id="hezuo11" name="xsjg[7]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="hezuo12" name="xsl[7]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[8]" value="合作社">
    <td><input type="text" id="hezuo3" name="xssj[8]" style="width: 215px;"/></td>
    <td><input type="text" id="hezuo21" name="xsjg[8]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="hezuo22" name="xsl[8]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <td rowspan="2">销售公司</td>
    <input type="hidden" name="cplx[9]" value="销售公司">
    <td><input type="text" id="xiaoshou1" name="xssj[9]" style="width: 215px;"/></td>
    <td><input type="text" id="xiaoshou01" name="xsjg[9]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="xiaoshou02" name="xsl[9]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[10]" value="销售公司">
    <td><input type="text" id="xiaoshou2" name="xssj[10]" style="width: 215px;"/></td>
    <td><input type="text" id="xiaoshou11" name="xsjg[10]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="xiaoshou12" name="xsl[10]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <td rowspan="2">加工企业</td>
    <input type="hidden" name="cplx[11]" value="加工企业">
    <td><input type="text" id="jiag1" name="xssj[11]" style="width: 215px;"/></td>
    <td><input type="text" id="jiag01" name="xsjg[11]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="jiag02" name="xsl[11]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[12]" value="加工企业">
    <td><input type="text" id="jiag2" name="xssj[12]" style="width: 215px;"/></td>
    <td><input type="text" id="jiag11" name="xsjg[12]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="jiag12" name="xsl[12]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <td rowspan="2">出口企业</td>
    <input type="hidden" name="cplx[13]" value="出口营业">
    <td><input type="text" id="chuk1" name="xssj[13]" style="width: 215px;"/></td>
    <td><input type="text" id="chuk01" name="xsjg[13]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="chuk02" name="xsl[13]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[14]" value="出口营业">
    <td><input type="text" id="chuk2" name="xssj[14]" style="width: 215px;"/></td>
    <td><input type="text" id="chuk11" name="xsjg[14]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="chuk12" name="xsl[14]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <td rowspan="2">超市</td>
    <input type="hidden" name="cplx[15]" value="超市">
    <td><input type="text" id="chaos1" name="xssj[15]" style="width: 215px;"/></td>
    <td><input type="text" id="chaos01" name="xsjg[15]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="chaos02" name="xsl[15]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[16]" value="超市">
    <td><input type="text" id="chaos2" name="xssj[16]" style="width: 215px;"/></td>
    <td><input type="text" id="chaos11" name="xsjg[16]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="chaos12" name="xsl[16]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <td rowspan="2">直营店</td>
    <input type="hidden" name="cplx[17]" value="直营店">
    <td><input type="text" id="zhiy1" name="xssj[17]" style="width: 215px;"/></td>
    <td><input type="text" id="zhiy01" name="xsjg[17]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="zhiy02" name="xsl[17]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[18]" value="直营店">
    <td><input type="text" id="zhiy2" name="xssj[18]" style="width: 215px;"/></td>
    <td><input type="text" id="zhiy11" name="xsjg[18]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="zhiy12" name="xsl[18]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <td rowspan="3"><p>网络销售</p>
    <p>（电商、微商等）</p></td>
    <input type="hidden" name="cplx[19]" value="网络销售">
    <td><input type="text" id="wl1" name="xssj[19]" style="width: 215px;"/></td>
    <td><input type="text" id="wl01" name="xsjg[19]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="wl02" name="xsl[19]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[20]" value="网络销售">
    <td><input type="text" id="wl2" name="xssj[20]" style="width: 215px;"/></td>
    <td><input type="text" id="wl11" name="xsjg[20]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="wl12" name="xsl[20]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <input type="hidden" name="cplx[21]" value="网络销售">
    <td><input type="text" id="wl3" name="xssj[21]" style="width: 215px;"/></td>
    <td><input type="text" id="wl21" name="xsjg[21]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="wl22" name="xsl[21]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <td>集市自销</td>
    <input type="hidden" name="cplx[22]" value="集市自销">
    <td><input type="text" id="jishi" name="xssj[22]" style="width: 215px;"/></td>
    <td><input type="text" id="jishi01" name="xsjg[22]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="jishi02" name="xsl[22]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>
  <tr height="35">
    <td>自留</td>
    <input type="hidden" name="cplx[23]" value="自留">
    <td><input type="text" id="ziliu" name="xssj[23]" style="width: 215px;"/></td>
    <td><input type="text" id="jishi11" name="xsjg[23]" style="width: 150px;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text" id="jishi12" name="xsl[23]" style="width: 150px;"/>&nbsp;公斤</td>
  </tr>-->
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>

  <table class="table table-striped table-bordered table-condensed"
 width="80%" border="1" cellspacing="0" style="text-align: center;">
  <tr>
    <td width="30%" height="20">产品流向</td>
    <td width="32%">销售时间及销售产品  例：9.10大葱</td>
    <td width="40%">&nbsp;&nbsp;&nbsp;&nbsp;销售价格</td>
    
    
  </tr>
  <tr>
    <td rowspan="3">
    	<input type="text"   style="width: 80%;"/>  
    </td>
    <!--<input type="hidden" name="cplx[0]" value="地头市场">-->
    <td height="20%"><!--<input type="text"   style="width: 70%;"/>--></td>
   <td > <!--<input type="text" style="width: 22%;"/>&nbsp;元/公斤，销售&nbsp;
      <input type="text"  style="width: 22%;"/>&nbsp;公斤--></td>
     
    
  </tr>
  
</table>
      
    
    <p></p>
    <p>
      <!-- <a href="#" >保存</a>&nbsp;&nbsp;&nbsp;<a href="enter-d.html" >下一页</a> -->
      <p>
          <a href="#"><input type="submit" class="btn btn-success" name="upload" value="保存"></a>
          <!-- <a href="../enterd/enter-d.html">下一页</a> -->
         <!-- <a href="enter-d.html"><input type="button" class="btn btn-success" name="next" value="下一页"></a>-->
        </p>
    </p>
    </form>
    
      </div>
  
    
    <script src="../js/jquery.js"></script>
  <script src="../js/jquery.flot.js"></script>
  <script src="../js/jquery.flot.resize.js"></script>  
  <script src="../js/bootstrap.min.js"></script>
  
