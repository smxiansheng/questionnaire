<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>国家特色蔬菜产业体系平台</title>	

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/site.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="js/html5.js"></script>
    <![endif]-->
     <style type="text/css">
    html, body {
        height: 100%;
    }
     #show_time0{
    	position: relative;left: 500px;top: 14px;color: #FFFFFF;font-size: 16px;
    }
    </style>
  </head>
  <body>
    <div class="navbar navbar-fixed-top" >
      <iframe src="header.html" width="100%" scrolling="no" height="44px"></iframe>  
   </div> 

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header"><i class="icon-wrench"></i>问卷管理</li>
             <li><a href="../enter.php">问卷录入</a></li>
              <li><a href="../my-profile.php">问卷列表</a></li>
              <li class="nav-header"><i class="icon-signal"></i>基本信息管理</li>
              <li ><a href="stats.php">蔬菜种类</a></li>
                <li><a href="risk-stats.php">经营风险</a></li>
                <li><a href="link-stats.php">经营环节</a></li>
                 <li  class="active"><a href="main-stats.php">经营主体类型</a></li>
                  <li ><a href="product-stats.php">生产方式</a></li>
                   <li ><a href="record-stats.php">学历</a></li>
                    <li ><a href="policy-stats.php">政策保险及金融保险</a></li>
                <li class="nav-header"><i class="icon-user"></i>用户管理</li>
               <!-- <li><a href="users.html" onclick=""  ><i class="icon-user"></i>用户管理</a></li>-->
             <li><a href="../users.php">用户</a></li>
              <!--<li><a href="users.html">用户</a></li>
			  <li><a href="roles.html">角色</a></li> -->
            </ul>
          </div>
        </div>
        <div class="span9">
		  <div class="row-fluid">
			<div class="page-header">
				<h1>Users <small>All users</small></h1>
			</div>
			<div class="page-search">
				<form action="main-stats1.php" method="POST">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="lxname" name="lxname" placeholder="请输入名称" style="width: 300px;" />&nbsp;
				
				<input type="submit" name="soub" value="搜索" style="width: 50px;" />
				<!--<input type="button" id="soub" value="新建信息" style="width: 50px;position: relative;float: right;left: -100px;" />-->
					<a href="new-main.html" class="btn btn-success" style="position: relative;float: right;left: -100px;">新建信息</a>
        </form>
				
				
			</div>
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<th style="width: 20px;">ID</th>
						<th style="width: 60px;">经营主体类型名称</th>
						<th style="width: 50px;"></th>
					</tr>
				</thead>
				 
					<tbody>
						
				<?php

                include('php/conn.php');

                $sql="SELECT * FROM b_jyztlx";

                $result = mysqli_query($conn,$sql);

               
                 while($row = mysqli_fetch_array($result)){

?>
				
			
				<tr class="list-roles" >
					<td><?php  echo $row['jyztlxid']  ?></td>
					<td><?php  echo $row['jyztlxmc']  ?></td>
				
					<td>
						<div class="btn-group">
							<!-- <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">编辑<span class="caret"></span></a>
							<ul class="dropdown-menu pull-right"> -->
							<!--	<li><i class="icon-trash"></i><input type="button" name="delete"  value="删除" onclick="del(this);" /></a></li>-->
							<a href="#"  class="btn btn-mini "  onclick="del(this);"><i class="icon-trash"></i>删除 </a>
							<!-- </ul> -->
						</div>
					</td>

				</tr>				
				  <?php }  
                     mysqli_close($conn);

				?>
				

				</tbody>
				
			</table>
			<div class="pagination">
				<ul>
					<li><a href="#">Prev</a></li>
					<li class="active">
						<a href="#">1</a>
					</li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">Next</a></li>
				</ul>
			</div>
		<!--	<a href="new-infors.html" class="btn btn-success">新建信息</a>-->
		  </div>
        </div>
      </div>

   

    </div>

    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
	$(document).ready(function() {
		$('.dropdown-menu li a').hover(
		function() {
			$(this).children('i').addClass('icon-white');
		},
		function() {
			$(this).children('i').removeClass('icon-white');
		});
		
		if($(window).width() > 760)
		{
			$('tr.list-users td div ul').addClass('pull-right');
		}
	});

	function del(obj){
 	var  $td= $(obj).parents('tr').children('td');  
	var paramName = $td.eq(0).text();
	var jyztlxid=paramName;
	//alert("wjid:"+jyhjid);
	$.ajax({
            type:"POST",
            url:"del-main.php",
            data:{"jyztlxid":jyztlxid}
        });
	 window.location.reload();
 }
	</script>
	<script>  

 setInterval("show_time0.innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);    
</script> 
	
  </body>
</html>
