

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>




<!--content-->
<html>

<head>
    <title>About Us</title>

<style>

body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.column1 {
  float: left;
  width: 50%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-image: linear-gradient(to top, #474e5d , #01738c);
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}









    body {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
 
  
}


h3
{
	color: yellow;
	text-align: center;
}

body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("images/med123.jpg");
  height: 50%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #555;
  color: white;
}
</style>




</head>
<body> 







<div class="hero-image">
  <div class="hero-text">
    <h1>ABOUT US<i class='fas fa-cart-arrow-down'></i></h1>
    <p></p>

  </div>
</div>







<div class="content">



<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column1">
    <div class="card">
      <div class="container">
       <h2> GETIN TOUCH</h2>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7921.598529097374!2d79.85472753488769!3d6.914587699999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2596c21d0740b%3A0x4c0f9c74349858a1!2sHealthguard%20Pharmacy%20-%20Dharmapala%20Mawatha!5e0!3m2!1sen!2slk!4v1622019521697!5m2!1sen!2slk" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        <p class="title">Phamabuy Contact Details</p>
        <p>Hotline : 0112323232</p>
        <p>Offical Email : pharmabuy@pharma.lk</p>
      
      </div>
    </div>
  </div>

  
  <div class="column1">
    <div class="card">
      <div class="container">
        <h2>Pharmabuy E-Pharamcy Store</h2>
        <p class="title">Our Online features</p>
        <p>Pharmabuy Shop is proud of being a best Pharmacy Online shops in USA with high-quality medicines, supplements, healthcare product.</p></p>
        <p>Pharmabuy brings to you an online platform, which can be accessed for all your health needs. We are trying to make healthcare a hassle-free experience for you. Get your allopathic, ayurvedic, homeopathic medicines, vitamins & nutrition supplements and other health-related products delivered at home. Lab tests? That too in the comfort of your home. Doctor consult? Yes, we got that covered too.</p></p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

</div>





<br>
<br>
<br>


<div class="about-section">
  <h1>Our Group</h1>
  <p>Starting out as a retail pharmaceutical company, our group has been transformed into a diversified company with International links. </p>
  <p>We create a culture of excellence, so place a strong emphasis on individual development to keep our people motivated and our business moving.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="images/mede123.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Our Vision</h2>
        <p>To be the Admired Pharmabuy Retailer in Sri Lanka</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/med123.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Our Mission</h2>
 
        <p>To offer exceptional Pharmabuy, Wellness & Beauty solutions to the Customer and the Community.</p>
        
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="images/pharma1.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Our Work Culture</h2>
        <p class="title">Work Culture</p>
        <p>We care about our customers and communities, employees and shareholders. </p>
        
      </div>
    </div>
  </div>
</div>







</body>
</html>
<%@include file="footer.jsp" %>


