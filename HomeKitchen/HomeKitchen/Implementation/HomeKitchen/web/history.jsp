<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link rel="stylesheet" type="text/css" href="css/style3.css" />
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
    <!--web font-->
    <link href="//fonts.googleapis.com/css?family=Pacifico&amp;subset=latin-ext,vietnamese" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
    <!--//web font-->
	<link rel="stylesheet" href="css/rating.css">
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link href='//fonts.googleapis.com/css?family=Orbitron:500' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		.head {
			background-color: #34495e;
			color: white;
			font-size: 1.5em;
			padding: 1rem;
			text-align: center;
			text-transform: uppercase;
		}
	</style>
</head>
<body>
<!-- banner -->
<div class="banner">
	<!-- header -->
	<jsp:include page="banner.jsp" />
	<!-- //header-end -->

</div>
<br/>
<div>
	<ul class="nav nav-tabs nav-justified">
		<li class="active"><a href="#tab-1" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-list-alt"></i> Buyer Previous Orders</a></li>
		<li><a href="#tab-2" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-calendar"></i> Buyer Current Orders</a></li>
		<li><a href="#tab-3" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-list-alt"></i> Seller Previous Orders</a></li>
		<li><a href="#tab-4" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-calendar"></i> Seller Current Orders</a></li>
	</ul>
	<div class="tab-content">
		<div class="tab-pane active" role="tabpanel" id="tab-1">
			<p><br/><br/>
			<div class="table-users">
				<div class="head">Buyer Previous Orders</div>
				<table border = "1" cellpadding = "5" cellspacing = "5" width = "80%" height = "150">
					<tr>
						<th>Food Item</th>
						<th>Quantity</th>
						<th>Price in PKR</th>
						<th>Seller</th>
						<th>Ordered At</th>
						<th>Delivered At</th>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
			<br/>
			<br/>
            <br/>
            <br/>
			</p>
		</div>
		<div class="tab-pane" role="tabpanel" id="tab-2">
			<p><br/><br/>
			<div class="table-users">
				<div class="head">Buyer Current Orders</div>
				<table border = "1" cellpadding = "5" cellspacing = "5" width = "80%" height = "150">
					<tr>
						<th>Food Item</th>
						<th>Quantity</th>
						<th>Price in PKR</th>
						<th>Seller</th>
						<th>Ordered At</th>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
			<br/>
			<br/>
            <br/>
            <br/>
			</p>
		</div>
		<div class="tab-pane" role="tabpanel" id="tab-3">
			<p><br/><br/>
			<div class="table-users">
				<div class="head">Seller Previous Orders</div>
				<table border = "1" cellpadding = "5" cellspacing = "5" width = "80%" height = "150">
					<tr>
						<th>Food Item</th>
						<th>Quantity</th>
						<th>Price in PKR</th>
						<th>Buyer</th>
						<th>Ordered At</th>
						<th>Delivered At</th>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
			<br/>
			<br/>
            <br/>
            <br/>
			</p>
		</div>
		<div class="tab-pane" role="tabpanel" id="tab-4">
			<p><br/><br/>
			<div class="table-users">
				<div class="head">Seller Current Orders</div>
				<table border = "1" cellpadding = "5" cellspacing = "5" width = "80%" height = "150">
					<tr>
						<th>Food Item</th>
						<th>Quantity</th>
						<th>Price in PKR</th>
						<th>Buyer</th>
						<th>Ordered At</th>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
			<br/>
			<br/>
            <br/>
            <br/>
			</p>
		</div>
		</div>
	</div>
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