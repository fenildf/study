<%@page contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<%@include file="/common/include-taglib.jsp"%>
	</div>
</div>

<script type="text/javascript">
function fucCheck(INDEX) {
	var i, j, strTemp;
	strTemp = "0123456789";
	for (i = 0; i < INDEX.length; i++) {
		j = strTemp.indexOf(INDEX.charAt(i));
		if (j == -1) {
			//说明有字符不合法       
			return false;
		}
	}
	//说明合法       
	return true;
}

/**当前数据的总页数，从Action中传值过来*/
var total = ${total}+14/15; /**这个total是servlet.setAttribute的变量名, 用来存储记录总条数, 所以本JS只能是内部样式, 不能是外部样式*/

function firstPage_Go() {
	var page = document.getElementById("tz").value;
	if (!fucCheck(page)) {
		alert("输入数字非法，请重新输入！");
		return false;
	}
	if (page > total) {
		alert("超出了最大页数，请重新输入！" + total);
	} else if (page < 1) {
		alert("页数不能小于1！");
	} else {
		window.location = document.getElementById("hd").value.replace("p=", "p=" + document.getElementById("tz").value);
	}
}

/***/
function OtherPage_Go() {
	var page = document.getElementById("tz").value;
	if (!fucCheck(page)) {
		alert("输入数字非法，请重新输入！");
		return false;
	}
	if (page > total) {
		alert("超出了最大页数，请重新输入！");
	} else if (page < 1) {
		alert("页数不能小于1！");
	} else {
		window.location = document.getElementById("hd").value.replace("p=1", "p=" + document.getElementById("tz").value);
	}
}

/**回车事件*/
function preparaSubmit(evt) {
	var nKeyCode = window.event ? event.keyCode: evt.which;
	if (nKeyCode == 13) {
		go2();
	}
}

/**给页码输入框, 绑定回车事件*/
$(function(){
	$("#tz").keyup(function(event){
		var myEvent = event || window.event; //获取当前用户按下的键值, 解决不同浏览器获取事件对象的差异
        var kcode = myEvent.keyCode;
		if (kcode == 13) {
			if(document.getElementById("hd").value.search("p=1") == -1){
				firstPage_Go();
			}else{
				OtherPage_Go();
			}
		}
	});
})


</script>


</body>
</html>