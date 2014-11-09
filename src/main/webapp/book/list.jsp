<%@page contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<%@include file="/common/include-taglib.jsp"%>
<%@include file="/common/html_header.jsp"%>

<div class="bs-example pull-right">
	<a class="btn btn-success" href="app/book/form">添加</a>
</div>
<h2 class="sub-header">书籍</h2>
<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${books}" var="book">
				<tr>
					<td><a href="app/book/show?id=${book.id}">${book.title}</a></td>
					<td>
						<a class="btn btn-primary" href="app/book/form?id=${book.id}">编辑</a>
						<a class="btn btn-danger" href="app/book/delete?id=${book.id}" onclick="return confirm('are you sure?')">删除</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@include file="/common/html_footer.jsp"%>