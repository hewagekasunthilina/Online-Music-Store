<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:include page="WEB-INF/views/header.jsp"/> <!--Header-->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Artist | Online Music Store</title>

	<style>
		
	body{
		margin: 0;
		padding: 0;
		background: #313131;
	}

	.slider{
		width: 100%;
		height: 350px;
		background: url(images/slide1.jpg);
		margin: 100px auto;
		animation: slide 20s infinite;
		
		position: absolute;
	}

	@keyframes slide{
		25%{
			background: url(images/slide2.jpg);

		}

		50%{
			background: url(images/artist1.jpg);
		}

		75%{
			background: url(images/img2.jpg);
		}

		100%{
			background: url(images/img3.jpg);
		}
	}

	</style>

</head>
<body>

	<div class="slider">
		
	</div>

</body>
</html>