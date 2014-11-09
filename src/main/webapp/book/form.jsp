<%@page contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<%@include file="/common/include-taglib.jsp"%>
<%@include file="/common/html_header.jsp"%>

<div class="bs-example pull-right">
	<button class="btn btn-default" onclick="javascript:history.back(1)">返回</button>
</div>
<h2 class="sub-header">${empty subject.id ? '添加' : '修改'}书籍</h2>


<form class="form-horizontal" action="app/book/save_or_update" method="post">
	<input type="hidden" name="id" value="${book.id}">

	<div class="form-group">
		<label for="inputEmail3" class="col-sm-2 control-label">标题</label>
		<div class="col-sm-3">
			<input type="text" name="title" class="form-control" value="${book.title}">
		</div>
	</div>
	
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-2 control-label">内容</label>
		<div class="col-sm-5">
			<textarea class="form-control" name="content" rows="5">${book.content}</textarea>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-success">提交</button>
		</div>
	</div>
	
</form>

<%@include file="/common/html_footer.jsp"%>
