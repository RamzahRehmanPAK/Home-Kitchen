<%@ page import="Model.User" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="header">
    <div class="w3ls-header"><!-- header-one -->
        <div class="container">
            <div class="w3ls-header-left">
                <p>Free home delivery at your doorstep.</p>
            </div>
            <div class="w3ls-header-right">
                <ul class="list">
                    <li class="head-dpdn">
                        <i class="fa fa-phone" aria-hidden="true"></i> Call us: +92 300 12345678
                    </li>
                    <li class="head-dpdn">
                        <a id="aloginout" onclick="myFunction()" href="login.jsp"><i  class="fa fa-sign-in" aria-hidden="true"></i> <span id="loginout" >Log In</span></a>
                    </li>
                    <li id="signup" class="head-dpdn">
                        <a   href="signup.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i> Sign Up</a>
                    </li>
                    <li class="head-dpdn">
                        <a href="offers.jsp"><i class="fa fa-gift" aria-hidden="true"></i> Food Offers</a>
                    </li>
                    <li class="head-dpdn">
                        <a href="help.jsp"><i class="fa fa-question-circle" aria-hidden="true"></i> Help</a>
                    </li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //header-one -->
    <!-- navigation -->
    <div class="navigation agiletop-nav">
        <div class="container">
            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header w3l_logo">
                    <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <h1><a href="index.jsp">HomeKitchen<span>Best Home-Made Food</span></a></h1>
                </div>
                <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                    <ul class="nav navbar-nav navbar-right" >
                        <li><a href="index.jsp" class="active">Home</a></li>
                        <!-- Mega Menu -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu <b class="caret"></b></a>
                            <ul class="dropdown-menu multi-column columns-3">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <h6>Food type</h6>
                                            <li><a href="menu.jsp">Breakfast</a></li>
                                            <li><a href="menu.jsp">Lunch</a></li>
                                            <li><a href="menu.jsp">Dinner</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <h6>Cuisine</h6>
                                            <li><a href="menu.jsp">Indian Recipes</a></li>
                                            <li><a href="menu.jsp">American Recipes</a></li>
                                            <li><a href="menu.jsp">French Recipes</a></li>
                                            <li><a href="menu.jsp">Italian Recipes</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <h6>Box type</h6>
                                            <li><a href="menu.jsp">Diet</a></li>
                                            <li><a href="menu.jsp">Mini</a></li>
                                            <li><a href="menu.jsp">Regular</a></li>
                                            <li><a href="menu.jsp">Special</a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </ul>
                        </li>
                        <li id="accountli" class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="profile.jsp">Profile</a></li>
                                <li><a href="history.jsp">Orders</a></li>
                                <li><a href="postfood.jsp">Post Food</a></li>
                            </ul>

                        </li>
                        <li><a href="contact.jsp">Contact Us</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <!-- //navigation -->
</div>

</body>
</html>

<script>

    <%if(session.getAttribute("user")!=null){ %>

    document.getElementById("loginout").innerHTML = "Log Out";
    var elem = document.getElementById('signup');
    elem.parentNode.removeChild(elem);
    var link = document.getElementById("aloginout");
    link.setAttribute("href", "index.jsp");

    <%}else{%>
    var elem = document.getElementById('accountli');
    elem.parentNode.removeChild(elem);
    <%}%>


    function myFunction() {
        if(document.getElementById("loginout").innerHTML=="Log Out"){
            alert("Logging you out!");

            var xhttp = new XMLHttpRequest();
            xhttp.open("POST", "/logOutController",true);
            xhttp.send();

        }
    }


</script>
