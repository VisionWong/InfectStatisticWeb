function getYear() {
	for (var i = startYear; i <= endYear; i++) {
		var opYearElement = document.createElement("option");
		var textElement = document.createTextNode(i);
		opYearElement.appendChild(textElement);
		opYearElement.value = i;
		selectYearElement.appendChild(opYearElement);
	}
	// 设置默认年份的值
	selectYearElement.selectedIndex = year - startYear;
}
// 月份函数
function getMonth() {
	for (var i = 1; i <= 12; i++) {
		var opMonthElement = document.createElement("option");
		textMonth = document.createTextNode(i);
		opMonthElement.appendChild(textMonth);
		opMonthElement.value = i;
		selectMonthElement.appendChild(opMonthElement);
	}
	// 设置默认年份的值
	selectMonthElement.selectedIndex = month - 1;
}
// 日期函数
function getDay() {
	var getSelectedYear = selectYearElement.selectedIndex + startYear;
	var getSelectedMonth = selectMonthElement.selectedIndex + 1;
	var flag = 0;
	var selectDayElement = document.getElementById("selectDay");
	if (selectDayElement.hasChildNodes()) {
		var optionElements = selectDayElement.getElementsByTagName("option");
		for (var i = 0; i < optionElements.length; i++) {
			selectDayElement.removeChild(optionElements[0]);
			// 不知道为什么必须得自减一
			i--;
		}
	} else {
	}
	// 得到闰年
	if ((getSelectedYear % 4 == 0 && getSelectedYear % 100 != 0)
			|| getSelectedYear % 400 == 0) {// 得到闰年的年号
	// alert("闰年");
	// 得到闰年大月份除二月以外
		if ((getSelectedMonth <= 7 && getSelectedMonth % 2 == 1 && getSelectedMonth != 2)
				|| (getSelectedMonth >= 8 && getSelectedMonth % 2 == 0)) {// 得到大月
			setDay(flag = 31);
		} else if (getSelectedMonth <= 7 && getSelectedMonth == 2) {
			setDay(flag = 29);
		} else if ((getSelectedMonth <= 7 && getSelectedMonth % 2 == 0 && getSelectedMonth != 2)
				|| (getSelectedMonth >= 8 && getSelectedMonth % 2 == 1)) {// 得到小月份除二月以外
			setDay(flag = 30);
		}
	}
	// 非闰年
	else {
		// alert("平年");
		// 得到平年大月份除二月以外
		if ((getSelectedMonth <= 7 && getSelectedMonth % 2 == 1 && getSelectedMonth != 2)
				|| (getSelectedMonth >= 8 && getSelectedMonth % 2 == 0)) {// 得到大月
			setDay(flag = 31);
		} else if (getSelectedMonth <= 7 && getSelectedMonth == 2) {
			setDay(flag = 28);
		} else if ((getSelectedMonth <= 7 && getSelectedMonth % 2 == 0 && getSelectedMonth != 2)
				|| (getSelectedMonth >= 8 && getSelectedMonth % 2 == 1)) {// 得到小月份除二月以外
			setDay(flag = 30);
		}
	}
}
// 设置默认年份的值
selectDayElement.selectedIndex = day - 1;
function setDay(dayLength) {
	for (var i = 1; i <= dayLength; i++) {
		var opDayElement = document.createElement("option");
		textMonth = document.createTextNode(i);
		opDayElement.appendChild(textMonth);
		opDayElement.value = i;
		// alert(i);
		selectDayElement.appendChild(opDayElement);
	}
} 
button.onclick = function () {
    var getSelectedYear = selectYearElement.selectedIndex + startYear;
    var getSelectedMonth = selectMonthElement.selectedIndex + 1;
    var getSelectedDay = selectDayElement.selectedIndex + 1;
    alert("当前选中的日期是：" + getSelectedYear + "年" + getSelectedMonth + "月" + getSelectedDay + "日")
  }