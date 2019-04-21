<!DOCTYPE html>
<html lang="en">
<%@page import="Model.Order"%>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Custom Theme files -->
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons -->
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all"/> <!-- Owl-Carousel-CSS -->
	<!-- //Custom Theme files -->
	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
	<!-- //web-fonts -->
</head>
<body>
<!-- products -->
<div class="products">
	<div class="container">
		<div class="col-md-9 product-w3ls-right">
			<div class="products-row">
				<div class="col-xs-6 col-sm-4 product-grids">
					<div class="flip-container">
						<div class="flipper agile-products">
							<div class="front">
								<img src="images/g6.jpg" class="img-responsive" alt="img">
								<div class="agile-product-text">
									<h5>Fish salad</h5>
								</div>
							</div>
							<div class="back">
								<h4>Fish salad</h4>
								<p>Maecenas condimentum interdum lacus, ac varius nisl.</p>
								<h6>3<sup>$</sup></h6>
								<form action="#" method="post">
									<input type="hidden" nameo="cmd" value="_cart">
									<input type="hidden" name="add" value="1">
									<input type="hidden" name="w3ls_item" value="Fish salad">
									<input type="hidden" name="amount" value="3.00">
									<%--<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									--%>
									<span class="w3-agile-line"> </span>
									<a href="#" data-toggle="modal" data-target="#myModal1">Order</a>
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="clearfix"> </div>
			</div>
		</div>

		<div class="clearfix"> </div>
	</div>
</div>

<!-- modal -->
<div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
			</div>
			<section>
				<div class="modal-body">
					<div class="col-md-5 modal_body_left">
						<img src="images/s1.jpg" alt=" " class="img-responsive">
					</div>
					<div class="col-md-7 modal_body_right single-top-right">
						<script src="src/Controller/OrderFoodController.java"></script>


						<form class="form-horizontal" action="OrderFoodController" method="post">

							<input style="border: none; color:orangered; font-size: 24px " class="item_name" readonly="true" name="foodname" value="Molten Lava Cake">
						<p>Homemade molten lava cake with quality ingredients</p>
						<p>Posted by: <input style="border: none; color:dodgerblue " type="text" readonly="true" href="#" name="sellername" value="Sara Baker"></p>
						<div class="single-price">
							<ul>
								<input style="border: none; color:grey; font-size: 15px" name="price" readonly="true" value="250"><li>PKR</li>
								<li name="enddate">Ends on : Dec,5th 2017</li>
							</ul>
						</div>
							<div class="form-group">
								<label for="focusedinput5" class="col-sm-2 control-label">Quantity</label>
								<div class="col-sm-8">
									<input type="number" required="" name="quantity" pattern="[0-9]*" class="form-control1" id="focusedinput5" placeholder="0">
								</div>
							</div>
							<div class="form-group">
								<label for="focusedinput6" class="col-sm-2 control-label">Payment Method</label>
								<div class="col-sm-8">
									<input type="text" required="" name="payment" class="form-control1" id="focusedinput6" value="Cash on delivery" readonly="true">
								</div>
							</div>
							<br/>
							<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Order Food</button>
						</form>
						<div class="single-page-icons social-icons">
							<ul>
								<li><h4>Share on</h4></li>
								<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
								<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
								<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
								<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
								<li><a href="#" class="fa fa-rss icon rss"> </a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</section>
		</div>
	</div>
</div>
<!-- //modal -->
<script src="js/minicart.js"></script>
<script>
	w3ls.render();

	w3ls.cart.on('w3sb_checkout', function (evt) {
		var items, len, i;

		if (this.subtotal() > 0) {
			items = this.items();

			for (i = 0, len = items.length; i < len; i++) {
			}
		}
	});
</script>
<!-- //cart-js -->
<!-- Owl-Carousel-JavaScript -->
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel ({
			items : 3,
			lazyLoad : true,
			autoPlay : true,
			pagination : true,
		});
	});
</script>
<!-- //Owl-Carousel-JavaScript -->
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
<script type="text/javascript" id="sourcecode">
	$(function()
	{
		$('.scroll-pane').jScrollPane();
	});
</script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="js/jquery.mousewheel.js"></script> <!-- the mouse wheel plugin -->
<!-- start-smooth-scrolling -->
<script src="js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){
			event.preventDefault();

			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
	$(document).ready(function() {
		/*
		 var defaults = {
		 containerID: 'toTop', // fading element id
		 containerHoverID: 'toTopHover', // fading element hover id
		 scrollSpeed: 1200,
		 easingType: 'linear'
		 };
		 */

		$().UItoTop({ easingType: 'easeOutQuart' });

	});
</script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap.js"></script>
</body>
</html>