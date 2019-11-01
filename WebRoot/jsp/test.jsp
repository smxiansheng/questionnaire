<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>国家特色蔬菜产业体系平台</title>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		 <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link href="css/bootstrap.css" rel="stylesheet">
	     <link href="css/site.css" rel="stylesheet">
         <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="js/html5.js"></script>
    <![endif]-->
	<!--[if lte IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
         <style type="text/css">
          html, body {
          height: 100%;
          }
       #show_time0{
      position: relative;left: 500px;top: 14px;color: #FFFFFF;font-size: 16px;
      }
    </style>

   <script>
			$(document).ready(function(){
				$("#d").click(function(){
					$.ajax({url:"test1.html",success:function(data){
						
						$("#dd").html(data);
						 $("#d").addClass("active");
						  $("#e").addClass("");
					}})
				})
			})
			
				$(document).ready(function(){
				$("#e").click(function(){
					$.ajax({url:"test2.html",success:function(data){
						
						$("#dd").html(data);
						 $("#e").addClass("active");
						  $("#d").addClass("");
					}})
				})
			})
		</script>

  </head>
	</head>
	<body>
		 <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <!--<div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>-->
          <a class="brand" href="#"><img src="img/2.png" height="24" width="24" />&nbsp;&nbsp;&nbsp;国家特色蔬菜产业体系平台</a>
           <a id="show_time0" style=""> </a>
           <div class="btn-group pull-right">
           	  <a class="btn" href="login.html"><i class="icon-off"></i>退出</a>
			<!--<a class="btn" href="my-profile.html"><i class="icon-user"></i> Admin</a>
            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
			  <li><a href="my-profile.html">个人资料</a></li>
              <li class="divider"></li>
              <li><a href="login.html">退出</a></li>
            </ul>-->
          </div>
          <!--<div class="nav-collapse">
            <ul class="nav">
			<li><a href="index.html">首页</a></li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">用户 <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="new-user.html">新建用户</a></li>
					<li class="divider"></li>
					<li><a href="users.html">管理用户</a></li>
				</ul>
			  </li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">角色 <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="new-role.html">新建角色</a></li>
					<li class="divider"></li>
					<li><a href="roles.html">管理角色</a></li>
				</ul>
			  </li>
			 <li><a href="stats.html">统计</a></li>-->
            </ul>
          </div>
        </div> 
   <!--   </div>-->
     <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header"><i class="icon-wrench"></i> 问卷管理</li>
               <li id="d"><a>问卷录入</a></li>
              <li id="e"><a>问卷列表</a></li>
              <li class="nav-header"><i class="icon-signal"></i>基本信息管理</li>
              <li><a href="stats/stats.php">蔬菜种类</a></li>
                <li ><a href="stats/risk-stats.php">经营风险</a></li>
                <li><a href="stats/link-stats.php">经营环节</a></li>
                 <li ><a href="stats/main-stats.php">经营主体类型</a></li>
                  <li ><a href="stats/product-stats.php">生产方式</a></li>
                   <li ><a href="stats/record-stats.php">学历</a></li>
                    <li ><a href="stats/policy-stats.php">政策保险及金融保险</a></li>
              <!--<li><a href="user-stats.html">生产投入产出</a></li>
              <li><a href="visitor-stats.html">用工情况</a></li>-->
             <li class="nav-header"><i class="icon-user"></i>用户管理</a></li>
            <!-- <li><a href="users.php">用户</a></li>-->
              
               <!-- <li><a href="users.html" onclick=""  ><i class="icon-user"></i>用户管理</a></li>-->
             <li><a href="users.php" onclick="">用户</a></li>
            </ul>
          </div>
        </div> 
           <div class="span9" id="dd">
		  <!--<div class="row-fluid" >
			
				</div>-->
				</div>
    <script>  
//这里就一句话就可以显示时间，但不是我想要的最理想结果  
 setInterval("show_time0.innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);    
</script> 
	</body>
</html>
