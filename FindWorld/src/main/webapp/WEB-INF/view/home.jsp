<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>发现</title>

<!-- Bootstrap core CSS -->
<link
	href="/FindWorld/startbootstrap-blog-home/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/FindWorld/startbootstrap-blog-home/css/blog-home.css"
	rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<jsp:include page="topTitle.jsp" flush="true"/>
	
	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<!-- Blog Entries Column -->
			<div id="mainDiv" class="col-md-8" style="margin-top: 20px">

				<!-- <h1 class="my-4">
					李亚涛的个人博客
					<small>Secondary Text</small>
				</h1> -->

				<!-- Blog Post -->
				<!-- <div class="card mb-4">
					<img class="card-img-top"
						src="http://upload.jianshu.io/admin_banners/web_images/3748/ebefa661e748e6ad369c4a5c79675218b296ec74.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/1250/h/540"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">
							<strong>请你不要平平淡淡的将就好吗？</strong>
						</h5>
						<p class="card-text">说实话，我一点也不愿平平淡淡的就这么将就着过一辈子。
							我不想才二十几岁就过着所谓平平淡淡的日子，我不想年纪轻轻就过着一眼望到底的生活。? 我不想未来的我下午的时候依旧挣着晚饭...</p>
						<a href="#" class="btn btn-primary">阅读更多 &rarr;</a>
					</div>
					<div class="card-footer text-muted">
						发布于 2017/10/19 <a href="#">发现</a>
					</div>
				</div>
				 -->

				<!-- Pagination -->
				<ul class="pagination justify-content-center mb-4">
					<li class="page-item"><a class="page-link" href="#">&larr;
							Older</a></li>
					<li class="page-item disabled"><a class="page-link" href="#">Newer
							&rarr;</a></li>
				</ul>

			</div>

			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">

				<!-- Search Widget -->
				<div class="card my-4">
					<!-- <h6 class="card-header">搜索</h6> -->
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for..."> <span
							class="input-group-btn">
							<button class="btn btn-secondary" type="button">Go!</button>
						</span>
					</div>
				</div>

				<!-- Categories Widget -->
				<div class="card my-4">
					<h6 class="card-header">种类</h6>
					<div class="card-body">
						<div class="row">
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">文学</a></li>
									<li><a href="#">艺术</a></li>
									<li><a href="#">教育</a></li>
								</ul>
							</div>
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">时尚</a></li>
									<li><a href="#">影视</a></li>
									<li><a href="#">潮流</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- Side Widget -->
				<div class="card my-4">
					<h6 class="card-header">推荐</h6>
					<div class="card-body">

						<div class="alert alert-success" role="alert">新上榜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></div>
						<div class="alert alert-danger" role="alert">7日热门&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></div>
						<div class="alert alert-warning" role="alert">30日热门&nbsp;&nbsp;&nbsp;></div>
					</div>
				</div>

			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; 发现 2017</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script
		src="/FindWorld/startbootstrap-blog-home/vendor/jquery/jquery.min.js"></script>
	<script
		src="/FindWorld/startbootstrap-blog-home/vendor/popper/popper.min.js"></script>
	<script
		src="/FindWorld/startbootstrap-blog-home/vendor/bootstrap/js/bootstrap.min.js"></script>


	<script type="text/javascript">
		$(function() {
			//初始化加载Home页文章内容
			var d = {};
			/* d.pageSize = 20; */
			var str = JSON.stringify(d);
			$
					.ajax({
						url : 'initHomeAllContent.do',// 跳转到
						// 加载Home页文章内容
						type : 'post',
						cache : false,
						data : {
							body : str
						},
						dataType : 'json',
						success : function(data) {
							var curObj = [];
							curObj = data.contentList;
							//clear mainDiv
							$('#mainDiv').html('');
							//加载文章内容
							for (var i = 0; i < curObj.length; i++) {
								var div = $("<div class='card mb-4'></div>");
								$('#mainDiv').append($(div));
								var img = $("<img class='card-img-top' width='200' height='350' src='"+curObj[i].contentPicture+"' alt='Card image cap'>");
								div.append(img);
								var div2 = $("<div class='card-body'> <h5 class='card-title'> <strong>"
										+ curObj[i].contentTitle
										+ "</strong> </h5> <p class='card-text'> "
										+ curObj[i].contentPreview
										+ "</p> <a id='"+curObj[i].contentId+"' class='btn btn-primary readBlog'>阅读更多 &rarr;</a></div>");
								div.append(div2);
								var div3 = $("<div class='card-footer text-muted'> "+curObj[i].contentAuthor+"   发布于 "
										+ curObj[i].contentReleaseTime
										+ " <a href='#'>发现</a></div>");
								div.append(div3);
							}
							
							$(".readBlog").click(function() {
								var id = $(this).attr('id');
								window.location.href = "toBolgInfo.do?id="+ id;
							});

						},
						error : function() {
							// alert("查询所有有异常！");
						}
					});

			//关闭浏览器的js
			window.onbeforeunload = function() {
				logout();
			};

		})
		
	</script>
</body>

</html>
