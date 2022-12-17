<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="style3.css">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />

</head>
<body>
	<section id="header">
		<a href="#"><img src="img/logo.png" class="logo"></a>
		<div >
			<ul id="navbar">
				<li><a class="active" href="homepage.jsp">Home</a></li>
				<li id="lg-bag"><a href="/cart"><i class="fas fa-shopping-cart">${cartCount}</i></a></li>
         		<a href="#" id="close"><i class="far fa-times"></i></a>
         		<c:choose>
             		<c:when test="${ sessionScope.id ne null }">
               			<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                     	<p>Welcome,${name}...!</p>
             		</c:when>
             	<c:otherwise>
             	  <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login/Register</a>
                      </li>
             	  </c:otherwise>
             </c:choose>
			</ul>
		</div>
		<div id="moblie">
			<a href="cart.html"><i class="fas fa-shopping-cart"></i></a>
			<i id="bar" class="fas fa-outdent"></i>
		</div>
	</section>
<section id="page-header">
    <h2>#Traditional Handloom fashion</h2>
</section>
<section id="product1" class="section-p1" >
	  <div class="pro-contatiner"> 
	  	  	<c:forEach items="${data}" var="man">  
	  	<div class="pro">
	  		<img src="/imagedata/${man.getImage()}">
	  		<div class="dec">
	  			<span>Traditional Wear</span>
                <h5>${man.getPname()}</h5>
                <div class="star">
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                </div>
                <h4 class="fas fa-rupee-sign">
                ${man.getPrice()}</h4>
	  		</div>	  		
	  		<a href="/product/${man.getId()}"><i class="fal fa-shopping-cart cart"></i></a>			  		
	  	</div>
	  </c:forEach>  	  	
	  </div>	  
</section>
<section id="pagination">
	<a href="#">1</a>
	<a href="#">2</a>
	<a href="#"><i class="fal fa-long-arrow-alt-right"></i></a>

</section>
<section id="newsletter" class="section-p1 section-m1">
	<div class="newtext">
		<h4>Sign Up for Newsletters</h4>
		<p>Get E-mail update about our latest shop and <span>Special Offer</span></p>
	</div>
	<div class="form">
		<input type="text" name="Your email address">
		<button class="normal">Sign up</button>
	</div>
</section>
<footer class="section-p1">
	<div class="col">
		<img  class="logo" src="img/logo.png">
		<h4>Contact</h4>
		<p><strong>Address:</strong>ijayawada Vadeswaram Kluniversity GreenFleids</p>
	   <p><strong>Phone:</strong>ijayawada Vadeswaram Kluniversity GreenFleids</p>
	   <p><strong>Hours:</strong>ijayawada Vadeswaram Kluniversity GreenFleids</p>
      <div class="follow">
      	<h4>Follow us</h4>
      	<div class="icon">
      		<i class="fab fa-facebook-f"></i>
      		<i class="fab fa-twitter"></i>
      		<i class="fab fa-instagram"></i>
      		<i class="fab fa-youtube"></i>
            <i class="fab fa-pinterest"></i>
         </div>
      </div>
	</div>
	<div class="col">
		<h4>About</h4>
		<a href="#">About Us</a>
		<a href="#">Delivery Information</a>
		<a href="#">Privacy Policy</a>
		<a href="#">Terms & Conditions</a>
		<a href="#">Contact Us</a>
	</div>
	<div class="col">
		<h4>My account</h4>
		<a href="#">Sign In</a>
		<a href="#">View Cart</a>
		<a href="#">My Wishlist</a>
		<a href="#">Track My Orders</a>
		<a href="#">Help</a>
	</div>
<div class="col install">
	<h4>Install</h4>
	<p>For App Srore Or Google play</p>
	<div class="row">
		<img src="img/pay/app.jpg">
		<img src="img/pay/play.jpg">
	</div>
	<p>Secured Payment GateWay</p>
<img src="img/pay/pay.png">
</div>
<div class="copy">
	<p>© 2022 ,KLU Hackthon</p>
</div>
</footer>
	<script src="script.js"></script>
</body>
</html>