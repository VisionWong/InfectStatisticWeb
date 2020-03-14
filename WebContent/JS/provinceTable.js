/**
 * 
 */
function getTable(city){
	//alert(city);
	option = {
		    title: {
		        text: city+"实况"
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

	return option;
	  //myChart1.setOption(option);
	  /*var myChart1 = echarts.init(document.getElementById(provinceTable));
	  myChart1.on('dblclick', function (params) {
			
			myChart1.clear();
		});*/
	
	//myChart.off('click');
}