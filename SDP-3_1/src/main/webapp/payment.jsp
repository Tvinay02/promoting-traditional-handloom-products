<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  background-image: linear-gradient(-90deg, #E6E2AF 0%, #002F2F 100%);
}

.component {
  position: relative;
  width: 30%;
  margin: 5rem auto;
  padding: 1rem;

  box-shadow: 2px 2px 10px #454545;
  background-color: #FFFFFF;
  
  text-align: center;
}

.credit-card h2 {
  color: rgba(4,99,128,1);
}

.component .credit-card form {
  display:flex;
  flex-direction: column;
}

.component .credit-card .line {
  display: flex;
}

.component .credit-card .line input {
  width: 20%; /* on définit une taille plus petite qu'il le faut, le flex-grow fera le reste */
  flex: 1;
  margin: 0.4rem 0.3rem;
}

input {
	border: none;
	border-bottom: 1px solid rgba(0,0,0,.12);
	margin: 1rem 0;
	padding: 4px;
	font-size: 1rem;
	outline: none;
}

input::-webkit-input-placeholder {
	color: #AAAAAA;
}

.valid-button {
	border: 0;
	padding: 1rem 2rem;
	background-color: rgba(4,99,128,0.9);
	color: #EFECCA;
	font-weight:bold;
	margin-top:2rem;
  box-shadow: 1px 1px 1px black;
}

.valid-button:hover {
  background-color: rgba(4,99,128,1);
  box-shadow: none;
}

.total {
  position: absolute;
  top: 3em;
  left: -8em;
  z-index: -1;
  
  background: #002F2F;
  color: #A7A37E;
  
  width: 100px;
  transform: rotate(-35deg);
  display:flex;
  flex-wrap: wrap;
  justify-content:center;
  align-items:center;
  padding-right: 2rem;
  
  box-shadow: 1px 1px 5px black;
}

.total p {
  font-size: 1.5rem;
}
</style>
</head>
<body>
<section class="component">
  <div class="total">
    <h3>TOTAL</h3>
  </div>
  <div class="credit-card">
    <h2>Card Detalis</h2>
    <form>
      <input type="text" placeholder="NAME" />
      <div class="line"><input type="text" placeholder="CARD" /> <input type="text" placeholder="NUMBER" /> <input type="text" /> <input type="text" /></div>
      <div class="line">
        <input class="litle" type="text" placeholder="EXPIRY" />
        <input class="tall" type="text" placeholder="CCV" />
      </div>
      <button type="submit" class="valid-button">PROCEED TO CHECKOUT</button>
    </form>
  </div>
</section>


</body>
</html>