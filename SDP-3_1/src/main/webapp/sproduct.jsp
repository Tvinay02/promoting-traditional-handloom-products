<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
     <link rel="stylesheet" type="text/css" href="/style3.css">
     <style>
     p
     {
     color:red;
     }
     </style>

</head>
<body>
	<section id="header">
		<a href="#"><img src="/img/logo.png" class="logo"></a>
		<div >
			<ul id="navbar">
				<li><a href="/homepage.jsp">Home</a></li>
				<li id="lg-bag"><a href="/cart"><i class="fas fa-shopping-cart"></i></a></li>
				<a href="#" id="close"><i class="far fa-times"></i></a>
				<li><c:choose>
             		<c:when test="${ sessionScope.id ne null }">
               			<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                     	<p>Welcome,${name}...!</p>
             		</c:when>
             </c:choose></li>

			</ul>
		</div>
		<div id="moblie">
			<a href="cart.html"><i class="fas fa-shopping-cart"></i></a>
			<i id="bar" class="fas fa-outdent"></i>
		</div>
	</section>
	<section id="prodetalis" class="section-p1">
		<div class="single-pro-image">
			<img  src="/imagedata/${img.getImage()}" width="100%" id="MainImg">
		</div>
		<div class="single-pro-detalis">
			<h6>Home / Traditional</h6>
			<h4>Women's fashion traditional</h4>
			<h2>$139.00</h2>
			<select >
				<option>Select size</option>
			    <option>S</option>
				<option>M</option>
				<option>L</option>
				<option>XL</option>
				<option>2XL</option>
				<option>3XL</option>
				<option>4XL</option>
			</select>
			<c:choose>
             		<c:when test="${ sessionScope.id ne null }">
			            <a href="/cart/${img.getId()}"><button  class="normal">Add to Cart</button></a>            
                   			</c:when>
                   			 <c:otherwise>
                      <div class="alert alert-danger text-center font-weight-bold">
                        Please login to buy products..!!
                    </div>
                </c:otherwise>
                   			</c:choose>
                      
						<h4>Product Details</h4>
			<span>Handloom saris are a traditional textile art of Bangladesh and India. The production of handloom saris are important for economic development in rural India. ... Several regions have their own traditions of handloom saris. The most traditional are made in West Bengal.</span>
		</div>
	</section>
</section>
<section id="product1" class="section-p1" >
	<h2>Featured Products</h2>
	  <div class="pro-contatiner"> 
	  	<div class="pro">
	  		<img src="/img/products/f11.jpeg">
	  		<div class="dec">
	  			<span>adidas</span>
                <h5>Cartoon T-shrit</h5>
                <div class="star">
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                </div>
                <h4>78</h4>
	  		</div>
	  		<a href="#"><i class="fal fa-shopping-cart cart"></i></a>
	  	</div>
	  	<div class="pro">
	  		<img src="/img/products/f11.jpeg">
	  		<div class="dec">
	  			<span>adidas</span>
                <h5>Cartoon T-shrit</h5>
                <div class="star">
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                </div>
                <h4>78</h4>
	  		</div>
	  		<a href="#"><i class="fal fa-shopping-cart cart"></i></a>
	  	</div>
	  	<div class="pro">
	  		<img src="/img/products/f11.jpeg">
	  		<div class="dec">
	  			<span>adidas</span>
                <h5>Cartoon T-shrit</h5>
                <div class="star">
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                </div>
                <h4>78</h4>
	  		</div>
	  		<a href="#"><i class="fal fa-shopping-cart cart"></i></a>
	  	</div>
	  	<div class="pro">
	  		<img src="/img/products/f11.jpeg">
	  		<div class="dec">
	  			<span>adidas</span>
                <h5>Cartoon T-shrit</h5>
                <div class="star">
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                	<i class="fas fa-star"></i>
                </div>
                <h4>78</h4>
	  		</div>
	  		<a href="#"><i class="fal fa-shopping-cart cart"></i></a>
	  	</div>
	  </div>
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
		<img  class="logo" src="/img/logo.png">
		<h4>Contact</h4>
		<p><strong>Address:</strong>Vijayawada Vadeswaram Kluniversity GreenFleids</p>
	   <p><strong>Phone:</strong>Vijayawada Vadeswaram Kluniversity GreenFleids</p>
	   <p><strong>Hours:</strong>Vijayawada Vadeswaram Kluniversity GreenFleids</p>
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
		<img src="/img/pay/app.jpg">
		<img src="/img/pay/play.jpg">
	</div>
	<p>Secured Payment GateWay</p>
<img src="/img/pay/pay.png">
</div>
<div class="copy">
	<p>© 2022 ,KLU Hackthon</p>
</div>
</footer>
     <script>
   const MainImg = document.getElementById("MainImg"); const smallimg = document.getElementsByClassName("small-img");


smallimg[0].onclick = function()
{
    MainImg.src  = smallimg[0].src;
}
smallimg[1].onclick = function()
{
    MainImg.src  = smallimg[1].src;
}
smallimg[2].onclick = function()
{
    MainImg.src  = smallimg[2].src;
}
smallimg[3].onclick = function()
{
    MainImg.src  = smallimg[3].src;
}
     </script>
	<script src="/script.js"></script>
</body>
</html>