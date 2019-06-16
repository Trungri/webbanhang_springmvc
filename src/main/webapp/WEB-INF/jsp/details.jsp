<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="icon/favicon.ico">
<title>Details product</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/portfolio-item.css" rel="stylesheet">

<!-- slick css -->
<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
				

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a href="home" class="navbar-brand d-flex align-items-center"
				data-toggle="modal" data-target="#exampleModal"> <!-- <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path><circle cx="12" cy="13" r="4"></circle></svg> -->
				<img style="width: 30px; height: 30px; margin-right: 5px"
				src="icon/iconfinder_8_330406.png" alt=""> <strong>Iphone
					World</strong>

			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="home">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="cart">Cart</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>


	<!-- Page Content -->
	<div class="container">

		<!-- Portfolio Item Heading -->
		<h3 class="my-4">${product.title }</h3>

		<!-- Portfolio Item Row -->
		<div class="row">

			<div class="col-md-8">
				<img class="img-fluid" src="images/${product.image}" alt="">
			</div>

			<div class="col-md-4">
				<h3 class="my-3">Price: ${product.price }</h3>

				<h3 class="my-3">Description</h3>
				<p>${product.description }</p>
				<!-- <h3 class="my-3">Details</h3>
           <ul>
             <li>512GB : 43.990.000 </li>
            <li>256GB : 37.990.000</li>
             <li>64GB  : 33.990.000</li>
          </ul> -->

				<!-- <button type="button" class="btn btn-success col-sm-4">Buy</button>
            <button type="button" class="btn btn-secondary col-sm-4">Add to card</button> -->
				<a class="btn btn-success col-sm-4">Buy</a> <a
					class="btn btn-outline-danger"
					href="cart/addCart?product=${product.id}">Add to card </a>

			</div>

		</div>
		<!-- /.row -->

		<!-- Related Projects Row -->
		<h3 class="my-4">Related</h3>

		<div class="row your-slick ">

			<c:forEach items="${product.images}" var="img" varStatus="imgStatus">
				<%-- <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid" src="images/${img}" alt="">
          </a>
        </div> --%>
        	<!-- slick html -->
				<div>
					<div> <img class="img-fluid" src="images/${img}" alt=""></div>
				</div>
			</c:forEach>

			<!-- 
        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid" src="images/" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid" src="images/" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid" src="images/" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid" src="images/" alt="">
          </a>
        </div>
-->
		</div>
		<!-- /.row -->

	</div>
	
	
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2018</p>
		</div>
		<!-- /.container -->
	</footer>
	
	<!-- Bootstrap core JavaScript 
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>-->
    
    <script src="js/jquery-2.2.0.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="slick/slick.min.js" charset="utf-8"></script>
	<!-- slick script -->
	<script type="text/javascript">
	    $(document).on('ready', function(){
	      $('.your-slick').slick({
	    	  infinite: true,
	    	  slidesToShow: 3,
	    	  slidesToScroll: 3
	      });
	    });
  	</script>
</body>

</html>
