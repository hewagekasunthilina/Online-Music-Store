<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="WEB-INF/views/header.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<style>
		
	.slideshow{
		margin: 0;
		padding: 0;
		background: #313131;
		padding-top:200px;
	}

	.slider{
		width: 1300px;
		height: 400px;
		background: url(images/slide1.jpg);	
		animation: slide 20s infinite;
		padding-top: 300px;
		padding-left:425px;
	}

	@keyframes slide{
		25%{
			background: url(images/slide2.jpg);

		}

		50%{
			background: url(images/cover.png);
		}

		75%{
			background: url(images/slide1.jpg);
		}

		100%{
			background: url(images/slide2.jpg);
		}
	}
	
	.button {
  		border-radius: 5px;
 		background-color: #63f461;
  		border: none;
  		color: black;
  		text-align: center;
  		font-size: 12px;
  		padding: 8px;
  		width: 150px;
 		transition: all 0.5s;
  		cursor: pointer;
  		margin: 20px;
	}	

	.button span {
		 cursor: pointer;
		 display: inline-block;
		 position: relative;
		 transition: 0.5s;
	}

	.button span:after {
 		 content: '\00bb';
 		 position: absolute;
  		 opacity: 0;
 		 top: 0;
 		 right: -20px;
  		 transition: 0.5s;
	}

	.button:hover span {
  		padding-right: 25px;
	}

	.button:hover span:after {
  		pacity: 1;
  		right: 0;
	}

	</style>
        
<title>Home | Online Music Store</title>

<body>

	<div class = "slideshow">
	<div class="slider">
		<button class="button"><span>LOGIN </span></button>
		<button class="button"><span>SIGNUP </span></button>
	</div>
	</div>
	












<jsp:include page="WEB-INF/views/footer.jsp"/>

</body>
</html>