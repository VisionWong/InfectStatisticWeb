<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Date"%>
<%@page import="edu.fzu.infectstatistic.dao.ProvinceDAOImpl"%>
<%@page import="edu.fzu.infectstatistic.dao.ProvinceDAO"%>
<%@page import="edu.fzu.infectstatistic.pojo.Province"%>
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



.dateOp form{
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

#provinceTable{
width:900px;
height:500px;
margin-top:160px;
background:#FFFAFA;
}


#dateOp {
	width: 1000px;
	margin: auto;
}

#statisticTable {
	width: 1000px;
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
	<%
		ProvinceDAO dao = new ProvinceDAOImpl();
		//查看是否有日期参数
		Province data = null;
		String cityStr = request.getParameter("name");
		String dateStr = request.getParameter("date");
		Date date = null;
		if (dateStr != null){
			date = Date.valueOf(dateStr);
		}
		System.out.println("省份页面收到的日期为:" + date);
		if (date == null){
			date = new Date(2020,1,29);			
		}
		data = dao.getStatisticData(cityStr, date);
		//定义日期数组，比较过去五天的数据
	%>
	<div class="dateOp">
	 <form action="dateProvinceServlet" method="post">
		<select id="ghDate" name="date">
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
				for (var i = 1; i <= 11; i++) {
					optionStr += '<option value="' + GetDateStr(i) + '">'
							+ GetDateStr(i) + '</option>';
				}
				document.writeln(optionStr);
			</script>
		</select>
		<input type="submit" value="确认" />
		</form>
	</div>

	<div id="statisticTable">
<div class="table_div">
    <div class="div_clear">
        <div class="center_top">                     
                <span style="font-weight:bold">地区疫情数据</span>：       
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
                            <td width="15%"><%=data.getIp() %></td>
                            <td width="15%"><%=data.getSp() %></td>
                            <td width="10%"><%=data.getTotalIp() %></td>
                            <td width="15%"><%=data.getCure() %></td>
                            <td width="15%"><%=data.getDead() %></td>
                           
                        </tr>
                    </tbody>
                </table>
            </div>       
       </div>
    </div>
	</div>
	
	<div id="provinceTable">
	</div>
	
	<script type="text/javascript"> 
	option = {
		    title: {
		        text:""
		    },
		    tooltip: {
		        trigger: 'axis'
		    },
		    legend: {
		        data: ['新增确诊', '新增疑似', '累计治愈', '累计死亡']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    toolbox: {
		        feature: {
		            saveAsImage: {}
		        }
		    },
		    xAxis: {
		        type: 'category',
		        boundaryGap: false,
		        data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
		    },
		    yAxis: {
		        type: 'value'
		    },
		    series: [
		        {
		            name: '新增确诊',
		            type: 'line',
		            stack: '总量',
		            data: [120, 132, 101, 134, 90, 230, 210],
		            smooth: true
		        },
		        {
		            name: '新增疑似',
		            type: 'line',
		            stack: '总量',
		            data: [220, 182, 191, 234, 290, 330, 310],
		        smooth: true
		        },
		        {
		            name: '累计治愈',
		            type: 'line',
		            stack: '总量',
		            data: [150, 232, 201, 154, 190, 330, 410],
		            smooth: true
		        },
		        {
		            name: '累计死亡',
		            type: 'line',
		            stack: '总量',
		            data: [320, 332, 301, 334, 390, 330, 320],
		            smooth: true
		        }
		    ]
		};
	var myChart = echarts.init(document.getElementById('provinceTable'));
	myChart.setOption(option);
		
		</script>
	

</body>
</html>
