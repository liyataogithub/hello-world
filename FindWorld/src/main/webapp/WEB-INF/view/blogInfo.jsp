<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<!-- <link rel="icon" href="../../favicon.ico"> -->

<title>${requestScope.blogInfo.contentTitle }-发现</title>

<!-- Bootstrap core CSS -->
<link
	href="/FindWorld/startbootstrap-blog-home/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link
	href="/FindWorld/startbootstrap-blog-home/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="blog.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="/FindWorld/startbootstrap-blog-home/vendor/bootstrap/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!-- Navigation -->
	<jsp:include page="topTitle.jsp" flush="true" />

	<div class="container">

		<div class="blog-header">
			<h1 class="blog-title">The Bootstrap Blog</h1>
		</div>

		<div class="row">

			<div class="col-sm-12 blog-main">

				<div class="blog-post" style="margin-top: 30px;">
					<h1 class="blog-post-title">${requestScope.blogInfo.contentTitle }
					</h1>

					<p class="blog-post-meta" style="margin-top: 20px; color: #ADADAD;">
						${requestScope.blogInfo.contentAuthor }
						&nbsp;&nbsp;&nbsp;${requestScope.blogInfo.contentReleaseTime }</p>

					<p>此处应为作者简介</p>
					<hr>
					<div class="image-view" data-width="1440" data-height="1080">
					<img
							data-original-src="//upload-images.jianshu.io/upload_images/2088574-88c560ce461707e2.jpeg"
							data-original-width="1440" data-original-height="1080"
							data-original-format="image/jpeg" data-original-filesize="179110"
							class="" style="cursor: zoom-in;"
							src="//upload-images.jianshu.io/upload_images/2088574-88c560ce461707e2.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/700">
					</div>
					<p style="margin-top: 30px;">${requestScope.blogInfo.content }</p>
				</div>
				<!-- /.blog-main -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->

		<!--  <footer class="blog-footer">
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer> -->


		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script
    		src="/FindWorld/startbootstrap-blog-home/vendor/jquery/jquery.min.js"></script>
		<script
			src="/FindWorld/startbootstrap-blog-home/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script
			src="/FindWorld/startbootstrap-blog-home/vendor/bootstrap/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
