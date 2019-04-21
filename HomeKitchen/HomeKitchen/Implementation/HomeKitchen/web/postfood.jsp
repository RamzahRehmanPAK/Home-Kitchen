
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
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
	<!-- banner-text -->
</div>
<!-- //banner -->
<!-- breadcrumb -->
<div class="container">
	<ol class="breadcrumb w3l-crumbs">
		<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
		<li class="active">Post Food</li>
	</ol>
</div>
<!-- //breadcrumb -->
<!--  about-page -->
<div class="about">
	<div class="container">
		<h3 class="w3ls-title w3ls-title1">Post Food</h3>
		<div class="about-text">
			<div class="grid_3 grid_4">
				<div class="tab-content">
					<div class="tab-pane active" id="horizontal-form">
						<form class="form-horizontal" action="PostFoodController" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="focusedinput" class="col-sm-2 control-label">Food Name</label>
								<div class="col-sm-8">
									<input type="text" name="name" required class="form-control1" id="focusedinput" placeholder="Food Item Name">
								</div>
							</div>
							<div class="form-group">
								<label for="focusedinput" class="col-sm-2 control-label">Food Type</label>
								<div class="col-sm-8">
									<input type="text"  required name="cuisine" class="form-control1" id="focusedinput1" placeholder="Food Item Cuisine">
								</div>
							</div>
							<div class="form-group">
								<label  class="col-sm-2 control-label">Description</label>
								<div class="col-sm-8">
									<input name="description" type="text" required id="txtarea" placeholder="Add a short description..." cols="50" rows="4" class="form-control1">
									</div>
							</div>
							<div class="form-group">
								<label for="focusedinput" class="col-sm-2 control-label">Upload Image</label>
								<div class="col-sm-8">
									<input type="file" name="imagePath" class="form-control1" id="focusedinput2" placeholder="Image Path">
								</div>
							</div>
							<div class="form-group">
								<label for="focusedinput" class="col-sm-2 control-label">Quantity</label>
								<div class="col-sm-8">
									<input type="quantity" name="quantity" required class="form-control1" id="focusedinput13" placeholder="Total Items">
								</div>
							</div>
							<div class="form-group">
								<label for="focusedinput" class="col-sm-2 control-label">Start Date Time</label>
								<div class="col-sm-8">
									<input type="datetime-local"  required name="startTime" class="form-control1" id="focusedinput5" placeholder="Start Date Time">
								</div>
							</div>
							<div class="form-group">
								<label for="focusedinput" class="col-sm-2 control-label">End Date Time</label>
								<div class="col-sm-8">
									<input type="datetime-local" required name="endTime" class="form-control1" id="focusedinput8" placeholder="Start Date Time">
								</div>
							</div>
							<div class="form-group">
								<label for="focusedinput" class="col-sm-2 control-label">Set Price</label>
								<div class="col-sm-8">
									<input type="number" required name="price" class="form-control1" id="focusedinput3" placeholder="Price">
								</div>
								<div class="col-sm-2 jlkdfj1">
									<p class="help-block">PKR</p>
								</div>
							</div>
							<div>
								<input class="agileits-icons-button" type="submit" value="Post Food">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
<!-- //about-page -->
<%--footer--%>
<jsp:include page="footer.jsp" />
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

<script src="js/bootstrap.js"></script>
</body>
</html>