<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="/resources/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<%@include file="../includes/header.jsp"%>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Tables</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Board List Page</div>
				<button id="regBtn" type="button" class="btn btn-xs pull-right">Register
					New Board</button>
				<div class="panel-body">

					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>#��ȣ</th>
								<th>����</th>
								<th>�ۼ���</th>
								<th>�ۼ���</th>
								<th>������</th>
							</tr>
						</thead>

						<c:forEach items="${ list }" var="board">
							<tr>
								<td><c:out value="${ board.bno }" /></td>
								<td><c:out value="${ board.title }" /></td>
								<td><c:out value="${ board.writer }" /></td>
								<td><fmt:formatDate value="${ board.regdate }"
										pattern="yyyy-MM-dd" /></td>
								<td><fmt:formatDate value="${ board.updatedate }"
										pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</table>

					<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">Modal title</h4>
								</div>
								<div class="modal-body">ó���� �Ϸ�Ǿ����ϴ�.</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary">Save
										changes</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../includes/footer.jsp"%>
	<!-- jQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script
		src="/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="/resources/dist/js/sb-admin-2.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<!-- <script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		}); 
	</script>-->

	<script type="text/javascript">
		$(document).ready(
			function(){
				var result = '<c:out value="${result}"/>';
			
				checkModal(result);
		
			function checkModal(result) {
				if (result === '') {
					return;
				} 
				if (parseInt(result) > 0) {
					$(".modal-body").html("�Խñ�" + parseInt(result) + "���� ��ϵǾ����ϴ�.");
				}
					$("#myModal").modal("show");
				}
				$("#regBtn").on("click", function(){
					self.location="/board/register";
				})
			});
	</script>
</body>
</html>
