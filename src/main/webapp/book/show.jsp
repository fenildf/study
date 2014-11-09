<%@page contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<%@include file="/common/include-taglib.jsp"%>
<%@include file="/common/html_header.jsp"%>

<div class="bs-example pull-right">
	<a class="btn btn-success" href="app/book/form">添加</a> <a class="btn btn-success" href="app/user/form?id=${book.id}">编辑</a>
</div>

<h2>${book.title}</h2>

<div class="content">${book.content}</div>

<%@include file="/common/html_footer.jsp"%>