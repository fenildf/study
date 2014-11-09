<%@page contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<%@include file="/common/include-taglib.jsp"%>
<%@include file="/common/html_header.jsp"%>

<script type="text/javascript">
$(function(){
	$(".delete_btn").live('click', deleteWord);
})

function deleteWord(){
	var id = $(this).attr("id")
	$.ajax({
		type : "GET",
		async : false, // 默认true:异步, 同步false 注意:
		dataType : "json",// 返回json格式的数据
		url : "app/dictionary/delete",
		data : "id=" + id,
		success : function(data) {
			$("#tr_"+id).remove();
		}
	});
}
</script>

<h2 class="sub-header">生词本</h2>
<div class="table-responsive">
	<table class="table table-striped">
		<tbody>
			<c:forEach items="${dictionarys}" var="dictionary">
				<tr id="tr_${dictionary.id}">
					<td>${dictionary.word}</td>
					<td>
						<a class="btn btn-primary" href="app/dictionary/form?id=${dictionary.id}">升级</a>
						<a class="btn btn-primary" href="app/dictionary/form?id=${dictionary.id}">降级</a>
						<button class="btn btn-danger delete_btn" id="${dictionary.id}">删除</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@include file="/common/html_footer.jsp"%>