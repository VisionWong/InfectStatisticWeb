<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta http-equiv="Content-Type" content="text/html">
<title>Document</title>
<script type="text/javascript" src="JS/echarts.min.js"></script>

<script src="JS/china.js"></script>
<script src="JS/provinceTable.js"></script>
<style>
#option {
	width: 150px;
}

#provinceTable{
width:450px;
height:450px;
margin:auto;
}

#china-map {
	width:1000px;
    height:1000px;
	margin: auto;
	background:#EEEEEE;
}

#dateOp {
	width: 1000px;
	margin: auto;
}

#statisticTable {
	width: 1000px;
	margin: auto;
}

table {
	margin-top: 10px;
	font-family: SimHei;
	border-collapse: collapse;
	border: 1px dashed white;
}

table tbody {
	display: block;
	height: 100px;
	font-size: 1em;
	padding: 0px;
}

table thead, tbody tr {
	display: table;
	width: 100%;
	table-layout: fixed;
}

table, thead, tbody {
	width: 500px;
}

th {
	height: 60px;
	text-align: center;
	font-size: 20px;
	font-weight: lighter;
	letter-spacing: 2px;
	border-radius: 5px;
}

tr, td {
	font-size: 26px; height : 20px;
	text-align: center;
	height: 20px;
}

table tr:hover {
	background-color: #CCDDFF;
}
#head{
font-family:SimHei;
font-size:20px;
margin: auto;
}

.div{
width: 200px;
    height: 200px;
    background: #ff0000;
    position: absolute;
}
</style>
</head>

<body>

<div id="head">
<a style="font-">疫情实时动态</a>
</div>

	<div id="dateOp">
		<select name="gh_date">
			<option value="">--请选择时间--</option>
			<script type="text/javascript">
				function GetDateStr(AddDayCount) {
					var dd = new Date(2020, 0, 18);
					//dd.setDate(2020-01-19);
					dd.setDate(dd.getDate() + AddDayCount);
					//dd.setDate(dd.getDate() + AddDayCount);//获取AddDayCount天后的日期
					var y = dd.getFullYear();
					var m = dd.getMonth() + 1;//获取当前月份的日期
					var d = dd.getDate();
					return y + "-" + m + "-" + d;
				}
				var optionStr = "";
				for (var i = 1; i <= 15; i++) {
					optionStr += '<option value="' + GetDateStr(i) + '">'
							+ GetDateStr(i) + '</option>';
				}
				document.writeln(optionStr);
			</script>
		</select>
	</div>

	<div id="statisticTable">
		<table id="table1">
			<thead id="thead1">
				<tr>
					<th>现有确诊</th>
					<th>现有疑似</th>
					<th>现有治愈</th>
					<th>现有死亡</th>
				</tr>
			</thead>
			<tbody id="tbody1">
				<tr>
					<td style="color: #FF0033">12</td>
					<td style="color: #FF6633">12</td>
					<td style="color: #33CC99">12</td>
					<td style="color: #555555">12</td>
				</tr>
			</tbody>

			<thead id="thead2">
				<tr>
					<th>累计确诊</th>
					<th>累计疑似</th>
					<th>累计治愈</th>
					<th>累计死亡</th>
				</tr>
			</thead>

			<tbody id="tbody2">
				<tr>
					<td style="color: #FF0033">12</td>
					<td style="color: #FF0033">12</td>
					<td style="color: #FF0033">12</td>
					<td style="color: #FF0033">12</td>
				</tr>
			</tbody>
		</table>
	</div>

	<script>
		document.getElementById('_switch').onclick = function() {
			if (this.value == '显示成绩表') {
				this.value = '显示学生信息表';
				document.getElementById('_tablea').style.display = 'none';
				document.getElementById('_tableb').style.display = 'block';
			} else {
				this.value = '显示成绩表';
				document.getElementById('_tablea').style.display = 'block';
				document.getElementById('_tableb').style.display = 'none';
			}
		};
	</script>
	</div>

	<div id="china-map">
	</div>
	
	<div id="provinceTable">
	</div>
	
	
	<script type="text/javascript">
		/**
		 * 
		 */
		var option = {
			tooltip : {//提示框组件。
				trigger : 'item'//数据项图形触发，主要在散点图，饼图等无类目轴的图表中使用。
			},
			legend : {
				orient : 'horizontal',//图例的排列方向
				x : 'left',//图例的位置
				data : [ '确诊' ]
			},
			visualMap : {//颜色的设置  dataRange
				x : 'left',
				y : 'center',
				splitList : [ {
					start : 1500,
					color :  'black'
					
				}, {
					start : 900,
					end : 1500
				}, {
					start : 310,
					end : 1000
				}, {
					start : 200,
					end : 300
				}, {
					start : 10,
					end : 200,
					label : '10 到 200（自定义label）'
				}, {
					start : 5,
					end : 5,
					label : '5（自定义特殊颜色）',
					//color : 'black'
				}, {
					end : 10
				} ],
				//	             min: 0,
				//	             max: 2500,
				//	             calculable : true,//颜色呈条状
			//	text : [ '高', '低' ],// 文本，默认为数值文本
				//color : [ '#E0022B', '#E09107', '#A3E00B' ]
			
			text : [ '高', '低' ],// 文本，默认为数值文本
			color : [ '#E0022B', '#E09107', '#A3E00B' ]
			},
			toolbox : {//工具栏
				show : true,
				orient : 'vertical',//工具栏 icon 的布局朝向
				x : 'right',
				y : 'center',
				feature : {//各工具配置项。
					mark : {
						show : true
					},
					dataView : {
						show : true,
						readOnly : false
					},//数据视图工具，可以展现当前图表所用的数据，编辑后可以动态更新。
					restore : {
						show : true
					},//配置项还原。
					saveAsImage : {
						show : true
					}
				//保存为图片。
				}
			},
			roamController : {//控制地图的上下左右放大缩小 图上没有显示
				show : true,
				x : 'right',
				mapTypeControl : {
					'china' : true
				}
			},
			series : [ {
				name : '确诊',
				type : 'map',
				mapType : 'china',
				roam : false,//是否开启鼠标缩放和平移漫游
				itemStyle : {//地图区域的多边形 图形样式
					normal : {//是图形在默认状态下的样式
						label : {
							show : true,//是否显示标签
							textStyle : {
								color : "rgb(249, 249, 249)"
							}
						}
					},
					emphasis : {//是图形在高亮状态下的样式,比如在鼠标悬浮或者图例联动高亮时
						label : {
							show : true
						}
					// color:'green'
					}
				},
				top : "3%",//组件距离容器的距离
				data : [ {
					name : '北京',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '天津',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '上海',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '重庆',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '河北',
					value : 0
				}, {
					name : '河南',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '云南',
					value : 5
				}, {
					name : '辽宁',
					value : 305
				}, {
					name : '黑龙江',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '湖南',
					value : 200
				}, {
					name : '安徽',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '山东',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '新疆',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '江苏',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '浙江',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '江西',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '湖北',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '广西',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '甘肃',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '山西',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '内蒙古',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '陕西',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '吉林',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '福建',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '贵州',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '广东',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '青海',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '西藏',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '四川',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '宁夏',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '海南',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '台湾',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '香港',
					value : Math.round(Math.random() * 2000)
				}, {
					name : '澳门',
					value : Math.round(Math.random() * 2000)
				} ]
			} ]
		};
		
		var myChart = echarts.init(document.getElementById('china-map'));
		myChart.setOption(option,true);
		
	//	myChart.off('click');
	
	function doit(e){
 var obj = document.getElementById("provinceTable"); 
 obj.style.left = e.pageX+10; 
 obj.style.top = e.pageY+10;   
}
window.onload=function(){ 
	document.body.onmousemove = doit(event); 
	} 
	
	
		myChart.on('click', function (params) {
		    var city = params.name;
		   //loadChart(city);
		//  getTable(city);
		  //console.log(getTable(city)); 
		//  myChart.clear();
		 // document.getElementById("china-map").style.visibility="hidden";//隐藏
		  var myChart1 = echarts.init(document.getElementById('provinceTable'));
		//  document.getElementById("china-map").style.visibility='';//隐藏
		 myChart1.setOption(getTable(city),true);
		   // document.getElementById("head").innerHTML = city;	    
		});
		
		//myChart.off('click');
	
		//myChart.on('click', function (params) {
	//	    var city = params.name;
		   //loadChart(city);
		//  getTable(city);
		  //console.log(getTable(city)); 
	//	  myChart.clear();
		// myChart.setOption(option);
		   // document.getElementById("head").innerHTML = city;	    
	//	});
		
		
		
	</script>
<script>



</script>


</body>
</html>
