<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<title>Shopping Cart UI</title>
	<link rel="stylesheet" type="text/css" href="./style5.css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,900" rel="stylesheet">
	<style>
	#navbar li{
	list-style: none;
	padding: 0 20px;
	position: relative;
}

#navbar li a{
	text-decoration: none;
	font-size: 16px;
	font-weight: 600px;
	color: #1a1a1a;
	transition: 0.3s ease;

}
#navbar li a:hover{
	color: #088178;
    
}
#navbar li a:hover,
#navbar li a.active
{
	color: #088178;
}

#navbar li a.active::after,
#navbar li a:hover::after
{
	content: "";
	width: 30%;
	height: 2px;
	background: #088178;
	position: absolute;
	bottom: -4px;
	left: 20px;
}
	</style>
</head>
<body>

   <div class="CartContainer">
   	   <div class="Header">
   	   	<h3 class="Heading">Shopping Cart</h3>
   	   	<h5 class="Action">Remove all</h5>
   	   	<ul id="navbar">
   	   	<c:choose>
             		<c:when test="${ sessionScope.id ne null }">
             		<ul id="navbar"></ul>
               			<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                     	<p>Welcome,${name}...!</p>
                     	</ul>
             		</c:when>
             </c:choose></li>
   	   </div>
   	      	    <c:forEach  items="${cart}" var="ca">
   	   
   	   <div class="Cart-Items pad">
   	   	  <div class="image-box">
   	   	  	<img src="/imagedata/${ca.getImage()}" style={{ height="120px" }} />
   	   	  </div>
   	   	  <div class="about">
   	   	  	<h1 class="title">${ca.getPname()}</h1>
   	   	  	   	   	  </div>
   	   	  <div class="prices">
   	   	  	<div class="amount">${ca.getPrice()}</div>
   	   	  	<div class="remove"><u>Remove</u></div>
   	   	  </div>
   	   </div>
   	      	   	  </c:forEach>
   	   
   	 <hr> 
   	 <div class="checkout">
   	 <div class="total">
   	 	<div class="total-amount">${total}</div>
   	 </div>
   	 <a href="payment.jsp"><button class="button">Checkout</button></div>
   	 </a>
   </div>
</body>
</html>
