function addMenu(data) {
	//alert("......................");
	var munes = '';
	//alert(data.aRoot);
	if (data.aRoot <= 1) {
		munes += '<li class="nav-header"><i class="icon-wrench"></i> 问卷管理</li>';
		munes += '<li id="add" class="active"><a href="#">问卷录入</a></li>';
		munes += '<li id="e"><a href="#">问卷列表</a></li>';
		munes += '<li id="d-2"><a href="#">示范县录入</a></li><li id="j"><a href="#">示范县搜索</a></li>';
		munes += '<li class="nav-header"><i class="icon-signal"></i>基本信息管理</li><li id="f"><a href="#">蔬菜种类</a></li>';
		munes += '<li id="i"><a href="#">经营主体类型</a></li><li id="k"><a href="#">学历</a></li><li id="l"><a href="#">技术类型</a></li>';
		munes += '<li class="nav-header"><i class="icon-tags"></i>统计数据</a></li><li id="g"><a href="#" onclick="">基本生产经营状况查询</a></li><li id="sctrselect"><a href="#" onclick="">生产投入产出情况查询</a></li>';
		munes +='<li id="searchProducts"><a href="#" onclick="">主要产品销售渠道及价格查询</a></li>';
		munes +='<li id="searchTech"><a href="#" onclick="">技术需求与技术供给情况查询</a></li>';

		munes += '<li class="nav-header"><i class="icon-user"></i>系统管理</a></li><li id="m"><a href="#" onclick="">用户管理</a></li>';
		munes += '<li id="h"><a href="#" onclick="">部门管理</a></li> <li id="z"><a href="#" onclick="">修改密码</a></li>';

	}
	if (data.aRoot == 2) {
		munes += '<li class="nav-header"><i class="icon-wrench"></i> 问卷管理</li>';
		munes += '<li id="e"><a href="#">问卷列表</a></li><li id="j"><a href="#">示范县搜索</a></li>';
		munes += '<li class="nav-header"><i class="icon-tags"></i>统计数据</a></li><li id="g"><a href="#" onclick="">基本生产经营状况查询</a></li><li id="sctrselect"><a href="#" onclick="">生产投入产出情况查询</a></li>';
		munes += '<li id="searchProducts"><a href="#" onclick="">主要产品销售渠道及价格查询</a></li>';
		munes += '<li id="searchTech"><a href="#" onclick="">技术需求与技术供给情况查询</a></li>';
		munes += '<li class="nav-header"><i class="icon-user"></i>系统管理</a></li><li id="m"><a href="#" onclick="">用户管理</a></li>';
		munes += '<li id="h"><a href="#" onclick="">部门管理</a></li> <li id="z"><a href="#" onclick="">修改密码</a></li>';
	}
	if (data.aRoot == 3) {
		munes += '<li class="nav-header"><i class="icon-wrench"></i> 问卷管理</li>';
		munes += '<li id="add" class="active"><a href="#">问卷录入</a></li>';
		munes += '<li id="e"><a href="#">问卷列表</a></li>';
		munes += '<li id="d-2"><a href="#">示范县录入</a></li><li id="j"><a href="#">示范县搜索</a></li>';
		munes += '<li class="nav-header"><i class="icon-tags"></i>统计数据</a></li><li id="g"><a href="#" onclick="">基本生产经营状况查询</a></li><li id="sctrselect"><a href="#" onclick="">生产投入产出情况查询</a></li>';
		munes += '<li id="searchProducts"><a href="#" onclick="">主要产品销售渠道及价格查询</a></li>';
		munes += '<li id="searchTech"><a href="#" onclick="">技术需求与技术供给情况查询</a></li>';
		munes += '<li class="nav-header"><i class="icon-user"></i>系统管理</a></li>';
		munes +='<li id="z"><a href="#" onclick="">修改密码</a></li>';
	}
	$("#mune").html(munes);
	
}