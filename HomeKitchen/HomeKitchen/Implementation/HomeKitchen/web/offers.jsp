<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">  
<link href="css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons --> 
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
<!-- banner -->
<div class="banner">
	<!-- header -->
	<jsp:include page="banner.jsp" />
	<!-- //header-end -->
	<br/>
	<div class="banner-text">
		<div class="container">
			<h2>Delicious food from the <br> <span>Best Chefs For you.</span></h2>
		</div>
	</div>
    <!-- //banner -->
</div>


	<!-- breadcrumb -->  
	<div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Offers</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- offers-page -->
	<div class="offers about"> 
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Our Offers</h3>  
			<div class="offers-wthreerow">  
				<div class="offers-right"> 
					<h5>10% Discount</h5>
					<p class="w3ls-offertext">Order Using Credit Card Get 10% Cashback</p>
					<br>
					<h5>5% Discount</h5>
					<p>The best Food Offer On Our Store</p>
				</div>   
			</div>
			<div class="offers-wthreerow2">
				<div class="add-products-row">
					<div class="w3ls-add-grids">
						<a href="products.jsp"> 
							<h4>Get <span>10%<br>Cashback</span></h4>
							<h5>Special Offer Today Only</h5>
							<h6>Order Now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
						</a>
					</div>
					<div class="w3ls-add-grids w3ls-add-grids-right">
						<a href="products.jsp"> 
							<h4>GET Upto<span><br>5% Offer</span></h4>
							<h5>On Order Lunch Today</h5>
							<h6>Order Now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
						</a>
					</div> 
					<div class="clearfix"> </div> 
				</div>  
			</div>
		</div>
	</div>
	<!-- //offers-page -->
<jsp:include page="footer.jsp" />
<!-- //footer -->
	<!-- cart-js -->
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