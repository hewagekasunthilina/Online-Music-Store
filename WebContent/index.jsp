<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="WEB-INF/views/header.jsp"/>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
        
<title>Home | Online Music Store</title>

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

	<style>
		
		body{
			background:rgba(0,0,0,0.9);
			margin: 0;
			color: #fff;
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-sarif;
		}
		
		.wrapper{
			padding-top:200px;
		}
		

		.showcase::after{
			content: '';
			height: 450px;
			width: 100%;
			background-image: url(images/slide2.jpg);
			background-size: cover;
			background-repeat: no-repeat;
			background-position: center;
			display: block;
			filter: blur(10px);
			-webkit-filter:blur(10px);
			transition: all 100ms;
		}

		.showcase:hover::after{
			filter:blur(0px);
			-webkit-filter:blur(0px);
		}

		.showcase:hover .content{
			filter:blur(2px);
			-webkit-filter:blur(2px);
		}

		.content{
			position: absolute;
			z-index: 1;
			top: 10%;
			left: 50%;
			margin-top: 300px;
			margin-left: -250px;
			width: 500px;
			height: 350px;
			text-align: center;
			transition: all 1000ms;
		}

		.content .logo{
			height: 120px;
			width: 200px;
		}

		.content .title{
			font-size: 2.2rem;
			margin-top: 1rem;
		}

		.content .text{
			line-height: 1.7;
			margin-top: 1rem;
		}

		.container{
			max-width: 960px;
			margin: auto;
			overflow: hidden;
			padding: 4rem 1rem;
		}

		.grid-3{
			display: grid;
			grid-gap: 20px;
			grid-template-columns: 1fr 1fr 1fr;
		}

		.center{
			text-align: center;
			margin: auto;
		}

		.bg-light{
			background: #f4f4f4;
			color: #333;
		}

		footer p{
			margin: 0;
		}

		footer{
			padding: 2.2rem;
		}

		/* Responsive part*/

		@media(max-width: 560px){
			.showcase::after{
			height: 50vh;
			}

			.content{
				top: 5%;
				margin-top: 5px;
			}

			.content .logo{
				height: 140px;
				width: 14px;
			}

			.content .text{
				display: none;
			}

			.grid-3, .grid-2{
				grid-template-columns: 1fr;
			}

			.services div{
				border-bottom: #333 dashed 1px;
				padding: 1.2rem 1rem;
			}
		}

		/*Landscape view*/

		@media(max-height: 500px){
			.content .title .text{
				display: none;
			}

			.content{
				top: 0;
			}
		}
		
		/*Button*/
		
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


</head>
<body>

<div class = "wrapper">
	<div class="showcase">
		<div class="content">
			<img src="images/musica.png" class="logo" alt="musica">
		<div class="title">
				Welcome to Musica
		</div>

			<div class="text">
				Be the food of love, play on..
				<div class = "b">
				
				<a href = "login.jsp"><button class="button"><span>LOGIN </span></button></a>
				<a href = "signin.jsp"><button class="button"><span>SIGNUP </span></button></a>
				
				</div>
				
			</div>
		</div>
	</div>

	<section class="services">
		<div class="container grid-3 center">
			<div>
				<i class="fas fa-compact-disc fa-3x"></i>
				<h3>Albums</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>

			<div>
				<i class="fas fa-play fa-3x"></i>
				<h3>listen</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>

			<div>
				<i class="fas fa-download fa-3x"></i>
				<h3>Download</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
		</div>
	</section>

	<section class="about bg-light">
		<div class="container">
			<div class="grid-2">
				<div class="center">
					<i class="fas fa-laptop-code fa-10x"></i>
				</div>

				<div>
					<h3>About Us</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco.</p>
				</div>

			</div>
		</div>
	</section>
	
</div>
	<footer class="center bg-dark">
		<p>MUSICA &copy; 2019</p>
	</footer>
	












<jsp:include page="WEB-INF/views/footer.jsp"/>

</body>
</html>