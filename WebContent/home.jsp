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
body {
        background-image: url(/Content/z4.jpg);
        background-size: cover;
    }
     h1{
         font-size:40px;
         letter-spacing:3px;
         text-align:center;
     }
        body a {
            color: #03515d;
            text-decoration: none;
        }

        body button {
            color: #03515d;
        }

        body span {
            color: #03515d;
        }

    .center_bottom input {
        color: #03515d;
        font-size: 12px;
       
        width: 40px;
        padding: 2px;
        vertical-align: middle;
        text-align: center;
        margin-bottom: 6px;
    }
    /**************************布局部分********************/
   
    .table_div {
        width: 1000px;
        padding: 10px;
        margin:0 auto;
      
    }

    .div_clear {
        clear: both;     
    }
 

    .center_center {
       
        width: 900px;
        float: left;
    }
    .table_foot{
        margin-top:30px;
    }
 
    /**************************************表格内容***********************************/
    .table_content table th:nth-child(even) {
        background-color: #D1BBFF;
    }

    .table_content table th:nth-child(odd) {
        background-color: #E8CCFF;
    }
    .table_content {
        margin: 5px;
        border: 1px dashed #FFF0F5;
        width: 1000px;
       
        overflow-x: hidden;
        overflow-y: auto;
    }


        .table_content table {
            width: 100%;
            border: 0;
          
            font-size: 12px;
        }

            .table_content table tr:hover {
                background-color: #FFDEAD;
            }

            .table_content table th {
                border-collapse: collapse;
                height: 60px;
                background: url("./tab/images/bg.gif");
                border-right: 2px dashed #FFF0F5;
                border-bottom: 2px dashed #FFF0F5;
                text-align: center;
                font-size: 20px;
            }

            .table_content table td {
                height: 40px;
                word-wrap: break-word;
                max-width: 300px;
                text-align: center;
                vertical-align: middle;
                border-right: 2px dashed #FFF0F5;
                border-bottom: 2px dashed #FFF0F5;
            }



.dateOp{
            background:rgba(0,0,0,0.2);
            width:298px;
            height:60px;
            border-radius:10px;
}
.dateOp select{
background:transpqrent;
            width: 300px;
            height: 100%;
            padding-left:10px;
            border-radius:10px;
            font-family:"微软雅黑";
            
        }


* {margin: auto;
padding: 0;}

body {
background:; 
font-family:arial; 
font-size:12px; 
color:;
text-align:center;}

#option {
	width: 150px;
}

#china-map {
margin-top:200px;
text-align:center;
	width:900px;
    height:500px;
		background:#FFFAFA;
}

#dateOp {
	width: 1000px;
	margin: auto;
}

#statisticTable {
	width: 1000px;
	margin-bottom:20px;
}


#head{
width:942px;height:18px;
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

	<div class="dateOp">
		<select id="ghDate">
			<option value="">请选择日期</option>
			<script type="text/javascript">
				function GetDateStr(AddDayCount) {
					var dd = new Date(2020, 1, 18);
					dd.setDate(dd.getDate() + AddDayCount);
					var y = dd.getFullYear();
					var m = dd.getMonth();//获取当前月份的日期
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
		
<div class="table_div">
    <div class="div_clear">
        <div class="center_top">                     
                <span style="font-weight:bold">全国疫情数据</span>：       
        </div>
    </div>
        <div class="center_center">
            <div class="table_content">
                <table cellspacing="0px" cellpadding="0px">
                    <thead>
                        <tr>
                            <th width="15%">现有确诊</th>
                            <th width="15%">现有疑似</th>
                             <th width="15%">累计确诊</th>
                            <th width="10%">累计治愈</th>
                            <th width="15%">累计死亡</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td width="15%">1</td>
                            <td width="15%">2</td>
                            <td width="10%">3</td>
                            <td width="15%">4</td>
                            <td width="15%">5</td>
                           
                        </tr>
                    </tbody>
                </table>
            </div>       
       </div>
    </div>
	</div>


	<div id="china-map">
	</div>
	<script type="text/javascript"> 
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
			      min: 0,
			        max: 1000,
			        left: 'left',
			        top: 'bottom',
			        text: ['高','低'],
			        calculable: false,
			        orient:'horizontal',
			        inRange: {
			            color: ['#FFF0F5', '#D87093'],
			            symbolSize: [30, 100]
			        }
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
		
		myChart.on('click', function (params) {
		  var city = params.name; 
		 window.location.href="province.jsp?name"+city;
		});
		
	</script>


</body>
</html>
