<%@page contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<%@include file="/common/include-taglib.jsp"%>

<script type="text/javascript">
	function search() {
		alert(2)
		var node = $("#search");
		$.ajax({
			type : "GET",
			async : false, // 默认true:异步, 同步false 注意:
			dataType : "json",// 返回json格式的数据
			url : "app/dictionary/add",
			data : "word=" + node.val(),
			success : function(data) {
				node.val("");
			}
		});
		return false;
	}
</script>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a href="app/book/list" class="navbar-brand">书籍</a> <a href="app/dictionary/list" class="navbar-brand">生词本</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Dashboard</a></li>
				<li><a href="#">Settings</a></li>
				<li><a href="#">Profile</a></li>
				<li><a href="#">Help</a></li>
			</ul>
			<!-- <form class="navbar-form navbar-right">
				<div class="input-group">
					<input type="text" class="form-control" id="search"> <span class="input-group-btn">
						<button type="button" class="btn btn-default form-control" onclick="search()">查询</button>
					</span>
				</div>
			</form> -->
		</div>
	</div>
</div>