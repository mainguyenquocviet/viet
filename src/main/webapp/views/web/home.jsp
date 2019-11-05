<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
</head>
<body>
	<div class="row">
		

		<div class="col-lg-3">

			<br> <br>
			<div class="list-group">
				<a href="<c:url value="/trang-chu?type=list&page=1&maxPageItem=3&sortName=title&sortBy=desc&categoryId=1"/>" class="list-group-item">Thông báo</a> 
				<a href="<c:url value="/trang-chu?type=list&page=1&maxPageItem=3&sortName=title&sortBy=desc&categoryId=2"/>" class="list-group-item">Ngành nghề đào tạo</a> 
				<a href="<c:url value="/trang-chu?type=list&page=1&maxPageItem=3&sortName=title&sortBy=desc&categoryId=3"/>" class="list-group-item">Tin tức tuyển sinh</a>
			</div>

		</div>
		<!-- /.col-lg-3 -->

		<div class="col-lg-9">

			<div id="carouselExampleIndicators" class="carousel slide my-4"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img class="d-block img-fluid"
							src="https://duytan.edu.vn/tuyen-sinh/Themes/tuyensinh2011/images/banner-1.jpg">
					</div>
				</div>
			</div>

			<div class="row">
				<c:forEach var="item" items="${model.listResult}">
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="${item.thumbnail}"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">${item.title}</a>
								</h4>
								<p class="card-text">${item.content}</p>
							</div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>

				</c:forEach>

				<form id="formSubmit" method="get">
				<ul class="pagination" id="pagination"></ul>
				<input type="hidden" value="" id="page" name="page" /> <input
					type="hidden" value="" id="maxPageItem" name="maxPageItem" /> <input
					type="hidden" value="" id="sortName" name="sortName" /> <input
					type="hidden" value="" id="sortBy" name="sortBy" /> <input
					type="hidden" value="" id="type" name="type" />
				</form>
				<iframe style="position: fixed; z-index: 5; bottom: 0px; right: 0px"
					allow="microphone;" width="350" height="430"
					src="https://console.dialogflow.com/api-client/demo/embedded/f6b21893-3665-483d-b894-7bf7fb9745fc">
				</iframe> 



				<!-- /.row -->


			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->
	</div>
	
	<script>
		var totalPages = ${model.totalPage};
		var currentPage = ${model.page};
		console.log(currentPage);
		var limit = 3;
// 		$(function() {
// 			window.pagObj = $('#pagination').twbsPagination({
// 				totalPages : totalPages,
// 				visiblePages : 10,
// 				startPage : currentPage,
// 				onPageClick : function(event, page) {
// 					if (currentPage != page) {
// 						$('#maxPageItem').val(limit);
// 						$('#page').val(page);
// 						$('#sortName').val('title');
// 						$('#sortBy').val('desc');
// 						$('#type').val('list');
// 						$('#formSubmit').submit();
// 					}
// 				}
// 			});
// 		});

		$('#pagination').twbsPagination({
					totalPages: totalPages,
					visiblePages: 10,
					startPage: currentPage,
					onPageClick: function (event, page) {
						if (currentPage != page) {
							$('#maxPageItem').val(limit);
							$('#page').val(page);
							$('#sortName').val('title');
							$('#sortBy').val('desc');
							$('#type').val('list');
							$('#formSubmit').submit();
						}
					}
		});
	</script>

</body>
</html>