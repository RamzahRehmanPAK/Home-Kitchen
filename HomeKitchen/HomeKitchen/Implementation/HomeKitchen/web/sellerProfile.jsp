<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.Item" %>
<%@ page import="Model.User" %>
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
    <link rel="stylesheet" href="css/tabbed_carousel.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="css/rating.css">
    <!-- //js -->
    <!-- web-fonts -->
    <link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
    <!-- //web-fonts -->
    <!--web font-->
    <link href="//fonts.googleapis.com/css?family=Pacifico&amp;subset=latin-ext,vietnamese" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
    <!--//web font-->
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href='//fonts.googleapis.com/css?family=Orbitron:500' rel='stylesheet' type='text/css'>
    <link href="css/profile.css" rel="stylesheet" type="text/css" media="all" />
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
        .checked {
            color: yellow;
        }
        .img-circle
        {
            border-radius: 50%;
            height: 60px;
            width: 60px;
        }
    </style>
</head>
<body>

<%
    ArrayList<Item> items=new ArrayList<Item>();
    int iid=Integer.valueOf(request.getParameter("sellerId"));

    for(int i=0;i<Item.allItems.size();i++){
        if(Item.allItems.get(i).getSeller().getUserId()==iid){
            items.add(Item.allItems.get(i));
        }
    }
    pageContext.setAttribute("allItems",items);
    pageContext.setAttribute("seller",User.findUserById(iid));
%>

<!-- banner -->
<div class="banner">
    <!-- header -->
    <jsp:include page="banner.jsp" />
    <!-- //header-end -->

</div>
<br/>

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



                        <input type="text" style="visibility: hidden" id="foodId" name="itemId">
                        <h1 style="text-align: center; border: none; color:orangered;font-family: 'Comic Sans MS'; font-size: 24px;" class="item_name" readonly="true" id="foodname" ></h1>
                        <p style="text-align: center;" id="foodDescription"></p>

                        <p>Cuisine/Type: <span style="border: none; color:dodgerblue;" type="text" readonly="true" id="foodCuisine"> </span></p>

                        <div class="single-price">
                            <input style="border: none; color:grey; font-size: 40px" id="foodPrice" readonly="true" >

                            <p style="border: none; color:grey;">Quantity Available: <span id="foodCount"></span> </p>

                            <p style="border: none; color:grey;">Available from: <span id="foodStart"></span> to <span id="foodEnd"></span></p>

                        </div>
                        <div></div>
                        <br/>

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

<div class="content">
    <div class="content1">
        <div class="content1-1">
            <img src="${seller.imagePath}"  width="150" height="180" alt="user">
        </div>
        <div class="content1-2">
            <div class="contentinfo1">
                <h1>${seller.name}</h1>
                <p><i class="fa fa-envelope-o">&nbsp;&nbsp;${seller.email}</i>  <br/></p>
                <p><i class="fa fa-phone">&nbsp;&nbsp;${seller.contactNumber}</i> <br/></p>
            </div>
        </div>
    </div>
</div>
<br/>
<br/>

<div>
    <ul class="nav nav-tabs nav-justified">
        <li class="active"><a href="#tab-2" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-list-alt"></i> Items</a></li>
        <li><a href="#tab-3" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-comment"></i> Reviews</a></li>
    </ul>
    <div class="tab-content">

        <div class="tab-pane active" role="tabpanel" id="tab-2" style="margin-bottom: 200px;">

            <div class="products">
                <div class="container">
                    <div class="col-md-9 product-w3ls-custom" style="margin-left: 130px">
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

                                                <button href="#" data-target="#myModal1" data-toggle="modal" id="DetailButton"
                                                        data-id="${item.name}#${item.description}#${item.id}#${item.cuisine}#${item.seller.name}#${item.startTime}#${item.deleteTime}#${item.price}#${item.imagePath}#${item.count}"
                                                        class="identifyingClass w3ls-cart pw3ls-cart">Detail</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>

                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>

            </div>

        </div>
        <div class="tab-pane" role="tabpanel" id="tab-3" style="margin-bottom: 200px;">
            <p><br/><br/>
            <div class="table-users">
                <div class="head">View Ratings and Reviews</div>
                <table border = "1" cellpadding = "5" cellspacing = "5" width = "80%" height = "150">
                    <tr>
                        <th>Picture</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Rating</th>
                        <th width="230">Review</th>
                        <th> One Date </th>
                    </tr>
                    <%
                        pageContext.setAttribute("reviews",((User)pageContext.getAttribute("seller")).reviews);
                    %>
                    <c:forEach var="review" items="${reviews}" varStatus="myIndex">

                        <tr>
                            <td><img class="img-circle" src="${review.sender.imagePath}" alt="user" /></td>
                            <td>${review.sender.name}</td>
                            <td>${review.sender.email}</td>
                            <td>
                                <c:forEach begin="1" end="${review.stars}">
                                    <span class="fa fa-star checked"></span>
                                </c:forEach>

                                <c:forEach begin="${review.stars}" end="4">
                                    <span class="fa fa-star"></span>
                                </c:forEach>

                            </td>
                            <td>${review.message}</td>
                            <td> ${review.reviewDate}</td>
                        </tr>

                    </c:forEach>
                </table>
            </div>
            <br/>
            <br/>
            <br/>
            <br/>
            </p>

            <form class="form-horizontal" action="giveReview" method="post" >
                <input placeholder="Give review!" style="margin-left: 480px;width : 500px;height:50px; margin-top: 40px;" type="text" id="reviewText" name="itemId"  >
                <input style="height:50px;" type="submit" class="btn btn-success" value="Done">
            </form>

            <p>
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
<script>
    function myFunction1() {

        document.getElementById("Name (Full name)").value="";
        document.getElementById("Email Address").value="";
        document.getElementById("Phone number").value="";
        document.getElementById("Permanent Address").value="";
        document.getElementById("Citizenship No.").value="";
        document.getElementById("Upload photo").value="";

    }
</script>

<% if(request.getAttribute("updated")!=null){
%>
<script> alert("Profile Information updated ")</script>
<%}%>


<script type="text/javascript">
    $(function () {
        $(".identifyingClass").click(function () {

            var my_id_value = $(this).data('id');

            var res = my_id_value.split("#");

            document.getElementById("foodname").innerHTML=res[0];
            document.getElementById("foodDescription").innerHTML=res[1];
            document.getElementById("foodId").value=res[2];
            document.getElementById("foodCuisine").innerHTML=res[3];

            document.getElementById("foodStart").innerHTML= res[5];
            document.getElementById("foodEnd").innerHTML=res[6];
            document.getElementById("foodPrice").value=res[7]+"PKR";
            document.getElementById("imgItem").src=res[8];
            document.getElementById("foodCount").innerHTML=res[9];

        })
    });
</script>
