var city = new Array(2);
city[0] = new Array("莲藕", "芋头", "茭白", "荸荠", "其他（水芹）");
city[1] = new Array("辣椒", "韭菜", "荠菜", "洋葱", "葱", "蒜", "姜");

function changeCity(val) {
	// 9.得到第二个下拉列表的id值
	var citysEle = document.getElementById("citys");
	// 10.清空第二个下拉列表的option内容
	citysEle.options.length = 0;
	// 2.遍历省分
	for ( var i = 0; i < city.length; i++) {
		// 3.如果遍历的省份和选择的相同，则进入下一个循环
		if (val == i) {
			// 4.遍历选中省份下的城市
			for ( var j = 0; j < city[i].length; j++) {
				// 5.创建一个文本节点，将选中省份下的城市，添加进去
				var TextNode = document.createTextNode(city[i][j]);

				// 6.创建一个option元素节点
				var opEle = document.createElement("option");

				// 7.将文本节点添加到元素节点上
				opEle.appendChild(TextNode);
				// 8.将元素节点添加到第二个下拉列表中

				citysEle.appendChild(opEle);

			}

		}

	}
	// elementNode.childNodes[1].firstChild.nodeValue

}