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

	<!-- //header-end -->
	<!-- banner-text -->
	<div class="banner-text">
		<div class="container">
			<h2>Delicious food from the <br> <span>Best Chefs For you.</span></h2>
		</div>
	</div>

	<!-- //banner -->
</div>
<br/>

	<!-- breadcrumb -->  
	<div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Help</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- help-page -->
	<div class="help about">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">How can we help you</h3>  
			<div class="faq-w3agile"> 
				<h5>Top 10 Frequently asked questions(FAQ)</h5>
				<ul class="faq">
					<li class="item1"><a href="#" title="click here">Q1 ?</a>
						<ul>
							<li class="subitem1"><p> Answer-1. </p></li>
						</ul>
					</li>
					<li class="item2"><a href="#" title="click here">Q2 ?</a>
						<ul>
							<li class="subitem1"><p> Answer-2. </p></li>
						</ul>
					</li>
					<li class="item3"><a href="#" title="click here">Q3 ?</a>
						<ul>
							<li class="subitem1"><p> Answer-3. </p></li>
						</ul>
					</li>
					<li class="item4"><a href="#" title="click here">Q4 ?</a>
						<ul>
							<li class="subitem1"><p> Answer-4. </p></li>
						</ul>
					</li>
					<li class="item5"><a href="#" title="click here">Q5 ?</a>
						<ul>
							<li class="subitem1"><p> Answer-5. </p></li>
						</ul>
					</li>
					<li class="item6"><a href="#" title="click here"> Q6 ?</a>
						<ul>
							<li class="subitem1"><p> Answer-6. </p></li>
						</ul>
					</li>
					<li class="item7"><a href="#" title="click here"> Q7 ?</a>
						<ul>
							<li class="subitem1"><p> Answer-7. </p></li>
						</ul>
					</li>
					<li class="item8"><a href="#" title="click here"> Q8 ?</a>
						<ul>
							<li class="subitem1"><p> Answer-8. </p></li>
						</ul>
					</li>
					<li class="item9"><a href="#" title="click here"> Q9 ?</a>
						<ul>
							<li class="subitem1"><p> Answer-9. </p></li>
						</ul>
					</li>
					<li class="item10"><a href="#" title="click here"> Q10?</a>
						<ul>
							<li class="subitem1"><p> Answer-10. </p></li>
						</ul>
					</li>
				</ul>
				<!-- script for tabs -->
				<script type="text/javascript">
					$(function() {
					
						var menu_ul = $('.faq > li > ul'),
							   menu_a  = $('.faq > li > a');
						
						menu_ul.hide();
					
						menu_a.click(function(e) {
							e.preventDefault();
							if(!$(this).hasClass('active')) {
								menu_a.removeClass('active');
								menu_ul.filter(':visible').slideUp('normal');
								$(this).addClass('active').next().stop(true,true).slideDown('normal');
							} else {
								$(this).removeClass('active');
								$(this).next().stop(true,true).slideUp('normal');
							}
						});
					
					});
				</script>
				<!-- script for tabs --> 
			</div>  
			<div class="help-search">
				<h5>You can register yourself for listing and we will contact you:</h5>
				<form action="#" method="post">
					<input type="search" name="Search" placeholder="Please type your query eg.Return and email" required="">
					<button type="submit" class="btn btn-default" aria-label="Left Align">
						Submit
					</button>
				</form>
			</div> 
		</div>
	</div>
	<!-- //help-page -->
<jsp:include page="footer.jsp" />
<!-- //footer -->
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