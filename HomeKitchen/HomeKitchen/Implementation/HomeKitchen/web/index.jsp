<%@ page import="Model.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
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
</head>
<body>
<!-- banner -->
<div class="banner">
	<!-- header -->
	<jsp:include page="banner.jsp" />
	<!-- //header-end -->
	<!-- banner-text -->
	<div class="banner-text">
		<div class="container">
			<h2 class="rw-sentence">Missing Food Made by Mom. Order
				<div class="rw-words rw-words-1">
					<span>Delicious</span>
					<span>Hygienic</span>
					<span>Yummy</span>
				</div>
				<span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; food right away. </span>
			</h2>
			<div class="agileits_search">
				<form action="#" method="post">
					<input name="Search" type="text" placeholder="Enter Your Area Name" required="">
					<select id="agileinfo_search" name="agileinfo_search" required="">
						<option value="">Popular Cities</option>
						<option value="navs">Lahore</option>
						<option value="quotes">Karachi</option>
						<option value="videos">Multan</option>
						<option value="news">Islamabad</option>
						<option value="notices">Rawalpindi</option>
						<option value="all">Other</option>
					</select>
					<input type="submit" value="Search">
				</form>
			</div>
		</div>
	</div>
</div>
<!-- //banner -->

<!-- popup for sign up form -->
<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div id="small-dialog2" class="mfp-hide book-form">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h3>Post Food</h3>
				<form action="#" method="post">
					<input type="text" name="Name" placeholder="Reservation Name" required=""/>
					<input type="tel" name="number" placeholder="Mobile Number" required=""/>
					<input type="email" name="Email" class="email" placeholder="Email" required=""/>
					<div class="select-block1">
						<select required="">
							<option value="">Number Of Guests</option>
							<option value="">1 Guest</option>
							<option value="">2 Guests</option>
							<option value="">3 Guests</option>
							<option value="">4 Guests</option>
							<option value="">5 Guests</option>
							<option value="">More Than 5</option>
						</select>
					</div>
					<input class="date" type="text" id="datepicker2"  name="datepicker2" placeholder="Date Of Arrival" title="Please enter your Arrival Date " required=""/>
					<textarea name="Message" placeholder="Additional Information (Optional)" ></textarea>
					<input type="submit" value="Book table">
				</form>
			</div>
		</div>
	</div>
</div>
<!-- //popup for form -->

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
						<img src="images/s1.jpg" id="imgItem" alt=" " class="img-responsive">
					</div>
					<div class="col-md-7 modal_body_right single-top-right">


						<form class="form-horizontal" action="OrderFoodController" method="post" >

                            <input type="text" style="visibility: hidden" id="foodId" name="itemId">


                            <h1 style="text-align: center; border: none; color:orangered;font-family: 'Comic Sans MS'; font-size: 24px;" class="item_name" readonly="true" id="foodname" ></h1>
							<p style="text-align: center;" id="foodDescription"></p>

                            <p>Cuisine/Type: <span style="border: none; color:dodgerblue;" type="text" readonly="true" id="foodCuisine"> </span></p>

                            <p>Posted by: <a style="border: none;  color:dodgerblue;" type="text" readonly="true" id="foodSeller"> </a></p>


							<div class="single-price">
                                <input style="border: none; color:grey; font-size: 40px" id="foodPrice" readonly="true" >

                                <p style="border: none; color:grey;">Quantity Available: <span id="foodCount"></span> </p>

                                <p style="border: none; color:grey;">Available from: <span id="foodStart"></span> to <span id="foodEnd"></span></p>

							</div>
                            <div></div>
							<div class="form-group">
								<label for="focusedinput5" class="col-sm-2 control-label">Quantity</label>
								<div class="col-sm-8">
									<input type="number" required="" name="itemQuantity"  pattern="[0-9]*" class="form-control1" id="focusedinput5" placeholder="0">
								</div>
							</div>
							<div class="form-group">
								<label for="focusedinput6" class="col-sm-2 control-label">Payment Method</label>
								<div class="col-sm-8">
									<input type="text" required="" name="payment" class="form-control1" id="focusedinput6" value="Cash on delivery" readonly="true">
								</div>
							</div>
							<br/>
                                <button type="submit" class="w3ls-cart"  ><i class="fa fa-cart-plus" aria-hidden="true"></i> Order Food</button>
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

<!-- breadcrumb -->
<div class="container">
	<ol class="breadcrumb w3l-crumbs">
		<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
		<li class="active">Dishes</li>
	</ol>
</div>
<!-- //breadcrumb -->
<!-- products -->
<div class="products">
	<div class="container">
		<div class="col-md-9 product-w3ls-right">
			<div class="product-top">
				<h4>Food Collection</h4>
				<ul>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Filter By<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Low price</a></li>
							<li><a href="#">High price</a></li>
							<li><a href="#">Latest</a></li>
						</ul>
					</li>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Food Type<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Breakfast</a></li>
							<li><a href="#">Lunch</a></li>
							<li><a href="#">Dinner</a></li>
						</ul>
					</li>
				</ul>
				<div class="clearfix"> </div>
			</div>
			<div class="products-row">

                <%
                    pageContext.setAttribute("allItems",Item.allItems);
                %>
                 <c:forEach var="item" items="${allItems}" varStatus="myIndex">

				<div class="col-xs-6 col-sm-4 product-grids">
					<div class="flip-container">
						<div class="flipper agile-products">
							<div class="front">
								<img src="${item.imagePath}" class="img-responsive" alt="img">
								<div class="agile-product-text">
									<h5>${item.name}</h5>
								</div>
							</div>
							<div class="back">
								<h4>${item.name}</h4>
								<p>${item.description}</p>
								<h6>${item.price}<sup>PKR</sup></h6>

                                <button href="#" data-target="#myModal1" data-toggle="modal" style="visibility: visible" id="orderButton"
										data-id="${item.name}#${item.description}#${item.id}#${item.cuisine}#${item.seller.name}#${item.startTime}#${item.deleteTime}#${item.price}#${item.imagePath}#${item.count}#${item.sellerId}"
										class="identifyingClass w3ls-cart pw3ls-cart kk">Order</button>
                            </div>
						</div>
					</div>
				</div>

				</c:forEach>

				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="col-md-3 rsidebar">
			<div class="rsidebar-top">
				<div class="slider-left">
					<h4>CHOOSE BY AGE</h4>
					<div class="row row1 scroll-pane">
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Kids</label>
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Youngers</label>
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Adults</label>
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Senior Citizen</label>
					</div>
				</div>
				<div class="sidebar-row">
					<h4>By Cuisine</h4>
					<ul class="faq">
						<li class="item1"><a href="#">Indian Food<span class="glyphicon glyphicon-menu-down"></span></a>
							<ul>
								<li class="subitem1"><a href="#">Breakfast</a></li>
								<li class="subitem1"><a href="#">Lunch</a></li>
								<li class="subitem1"><a href="#">Dinner</a></li>
								<li class="subitem1"><a href="#">Trending Food</a></li>
							</ul>
						</li>
						<li class="item2"><a href="#">Italian Food<span class="glyphicon glyphicon-menu-down"></span></a>
							<ul>
								<li class="subitem1"><a href="#">Panzanella</a></li>
								<li class="subitem1"><a href="#">Margherita Pizza </a></li>
								<li class="subitem1"><a href="#">Panna Cotta</a></li>
								<li class="subitem1"><a href="#">Corn Cannelloni</a></li>
							</ul>
						</li>
						<li class="item3"><a href="#">American Food<span class="glyphicon glyphicon-menu-down"></span></a>
							<ul>
								<li class="subitem1"><a href="#">Sandwiches</a></li>
								<li class="subitem1"><a href="#">Hot dog</a></li>
								<li class="subitem1"><a href="#">Chicken bog</a></li>
							</ul>
						</li>
					</ul>
					<div class="clearfix"> </div>
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
				<div class="sidebar-row">
					<h4>DISCOUNTS</h4>
					<div class="row row1 scroll-pane">
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label>
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
					</div>
				</div>
				<div class="sidebar-row" style="padding-top: 50px">

					<h4>DELIVERY TIME</h4>
					<div class="row row1 scroll-pane">
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>6.30 am to 8.30 am</label>
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>11.30 am to 1.30 pm</label>
						<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>7.30 pm to 10.00 pm</label>
					</div>
				</div>
			</div>
			<div class="related-row">
				<h4>Related Searches</h4>
				<ul>
					<li><a href="products.jsp">Salads </a></li>
					<li><a href="products.jsp">Vegetarian</a></li>
					<li><a href="products.jsp">Dinner</a></li>
					<li><a href="products.jsp">Diet Soup</a></li>
					<li><a href="products.jsp">Sweets</a></li>
					<li><a href="products.jsp">Seasonal</a></li>
					<li><a href="products.jsp">Breakfast</a></li>
					<li><a href="products.jsp">Italian Food</a></li>
					<li><a href="products.jsp">Meals</a></li>
				</ul>
			</div>
			<div class="related-row">
				<h4>YOU MAY ALSO LIKE</h4>
				<div class="galry-like">
					<a href="#" data-toggle="modal" data-target="#myModal1"><img src="images/s1.jpg" class="img-responsive" alt="img"></a>
				</div>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>

<!-- order -->
<div class="wthree-order">
	<img src="images/i2.jpg" class="w3order-img" alt=""/>
	<div class="container">
		<h3 class="w3ls-title">How To Order Online Food</h3>
		<p class="w3lsorder-text">Get your favourite food in 4 simple steps.</p>
		<div class="order-agileinfo">
			<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids">
				<div class="order-w3text">
					<i class="fa fa-map" aria-hidden="true"></i>
					<h5>View Food Posts</h5>
					<span>1</span>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids">
				<div class="order-w3text">
					<i class="fa fa-cutlery" aria-hidden="true"></i>
					<h5>Choose Food</h5>
					<span>2</span>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids">
				<div class="order-w3text">
					<i class="fa fa-credit-card" aria-hidden="true"></i>
					<h5>Place Order</h5>
					<span>3</span>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids">
				<div class="order-w3text">
					<i class="fa fa-truck" aria-hidden="true"></i>
					<h5>Enjoy Food</h5>
					<span>4</span>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //order -->
<!-- deals -->
<div class="w3agile-deals">
	<div class="container">
		<h3 class="w3ls-title">Services</h3>
		<div class="dealsrow">
			<div class="col-md-6 col-sm-6 deals-grids">
				<div class="deals-left">
					<i class="fa fa-truck" aria-hidden="true"></i>
				</div>
				<div class="deals-right">
					<h4>Delivery at Doorstep</h4>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-6 col-sm-6 deals-grids">
				<div class="deals-left">
					<i class="fa fa-birthday-cake" aria-hidden="true"></i>
				</div>
				<div class="deals-right">
					<h4>Order Placement</h4>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-6 col-sm-6 deals-grids">
				<div class="deals-left">
					<i class="fa fa-users" aria-hidden="true"></i>
				</div>
				<div class="deals-right">
					<h4>In Just One Call</h4>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-6 col-sm-6 deals-grids">
				<div class="deals-left">
					<i class="fa fa-building" aria-hidden="true"></i>
				</div>
				<div class="deals-right">
					<h4>Corporate Orders</h4>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //deals -->
<!-- dishes -->
<div class="w3agile-spldishes">
	<div class="container">
		<h3 class="w3ls-title">Special Foods</h3>
		<div class="spldishes-agileinfo">
			<div class="col-md-3 spldishes-w3left">
				<h5 class="w3ltitle">HomeKitchen Specials</h5>
			</div>
			<div class="col-md-9 spldishes-grids">
				<!-- Owl-Carousel -->
				<div id="owl-demo" class="owl-carousel text-center agileinfo-gallery-row">
					<a href="products.jsp" class="item g1">
						<img class="lazyOwl" src="images/g1.jpg" title="Our latest gallery" alt=""/>
						<div class="agile-dish-caption">
							<h4>FoodItem 1</h4>
							<span>Price: PKR 1500 </span>
						</div>
					</a>
					<a href="products.jsp" class="item g1">
						<img class="lazyOwl" src="images/g2.jpg" title="Our latest gallery" alt=""/>
						<div class="agile-dish-caption">
							<h4>FoodItem 2</h4>
							<span>Price: PKR 1000 </span>
						</div>
					</a>
					<a href="products.jsp" class="item g1">
						<img class="lazyOwl" src="images/g3.jpg" title="Our latest gallery" alt=""/>
						<div class="agile-dish-caption">
							<h4>FoodItem 3</h4>
							<span>Price: PKR 500 </span>
						</div>
					</a>
					<a href="products.jsp" class="item g1">
						<img class="lazyOwl" src="images/g4.jpg" title="Our latest gallery" alt=""/>
						<div class="agile-dish-caption">
							<h4>FoodItem 4</h4>
							<span>Price: PKR 1500 </span>
						</div>
					</a>
					<a href="products.jsp" class="item g1">
						<img class="lazyOwl" src="images/g5.jpg" alt=""/>
						<div class="agile-dish-caption">
							<h4>FoodItem 5</h4>
							<span>Price: PKR 1500 </span>
						</div>
					</a>
					<a href="products.jsp" class="item g1">
						<img class="lazyOwl" src="images/g1.jpg" title="Our latest gallery" alt=""/>
						<div class="agile-dish-caption">
							<h4>FoodItem 6</h4>
							<span>Price: PKR 1500 </span>
						</div>
					</a>
					<a href="products.jsp" class="item g1">
						<img class="lazyOwl" src="images/g2.jpg" title="Our latest gallery" alt=""/>
						<div class="agile-dish-caption">
							<h4>FoodItem 7</h4>
							<span>Price: PKR 1500 </span>
						</div>
					</a>
					<a href="products.jsp" class="item g1">
						<img class="lazyOwl" src="images/g3.jpg" title="Our latest gallery" alt=""/>
						<div class="agile-dish-caption">
							<h4>FoodItem 8</h4>
							<span>Price: PKR 1500 </span>
						</div>
					</a>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //dishes -->

footer
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

<script type="text/javascript">
    $(function () {
        $(".identifyingClass").click(function () {

            var my_id_value = $(this).data('id');

            var res = my_id_value.split("#");

            document.getElementById("foodname").innerHTML=res[0];
            document.getElementById("foodDescription").innerHTML=res[1];
            document.getElementById("foodId").value=res[2];
            document.getElementById("foodCuisine").innerHTML=res[3];
            document.getElementById("foodSeller").innerHTML=res[4];
            document.getElementById("foodStart").innerHTML= res[5];
            document.getElementById("foodEnd").innerHTML=res[6];
            document.getElementById("foodPrice").value=res[7]+"PKR";
            document.getElementById("imgItem").src=res[8];
            document.getElementById("foodCount").innerHTML=res[9];
            document.getElementById("foodSeller").href="sellerProfile.jsp?sellerId=" + res[10];

        })
    });

</script>
<% if ( request.getAttribute("Availability")!=null && (request.getAttribute("Availability")=="Available")){%>

<script>alert("Order placed successfully!");</script>

<% } else if ( request.getAttribute("Availability")!=null && (request.getAttribute("Availability")=="Not Available")){%>
             <script>alert("This much quantity not available");</script>

<%}
    request.removeAttribute("Availability");
%>


<% if (request.getSession().getAttribute("user")==null){%>
<script>
    $(".kk").each(function(i){
        $(this).hide();
    });
</script>
<%}%>

