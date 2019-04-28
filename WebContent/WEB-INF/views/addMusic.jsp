<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<style>

        h1{
			color:black;
			text-align: center;
			font-size:60px;
            margin: 80px;
		}
        
		body{
			
			margin: 0px;
		}
        
        .mainArea{
            width: auto;
            height: 700px;
            margin-top: 70px;
        }
        
        .sideBar{
            width: 290px;
            height: 560px;
            margin-left: 30px;
            margin-right: 5px;
            margin-top: 50px;
            margin-bottom: 30px;
            padding: 5px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
            float: left;
        }
        
        .content{
            min-width: 940px;
            height: 530px;
            margin-top: 50px;
            margin-bottom: 30px;
            margin-right: auto;
            margin-left: 5px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
            float: right;
            text-align = left;
        }
        
        input[type="text"], input[type="email"]{
			width:600px;
			height:20px;
            font-size: 16px;
			margin-bottom: 20px;
			border:1px solid gray;
            border-radius: 5px;
			padding:10px;
		}
        
        
        
        input[type="submit"], .back{
			height: 50px;
			width: 85px;
			padding: 5px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 0px;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
		
		 input[type="reset"]{
			height: 50px;
			width: 85px;
			padding: 5px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 0px;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
		
		input[type="submit"]:hover, .back:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
        
        
        input[type="reset"]:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
        

	</style>

</head>
<body>

 <div class="mainArea" align="center">
        <div class="sideBar" align="center">
        	<img src = "images/sidebar.png" width = "280px" height="550px">
        </div>
        <div class="content">
            
			<font size = "10" ><b> ADD MUSIC </b></font>
			<br>
			
			
        		<p style="color: green;" align="center"><br/><confirm</p>
        	
			
			<form method = "POST" action = "add-music">

				  <input type = "text" name = "musicName" placeholder = "ADD Music Title" required/><br>
				  <font  color = "#3090C7"> 
				  Select The Category of the Music:<br/></font>
				  <input type = "radio" name = "category" value = "Action"  required/>RnB &nbsp;
				  <input type = "radio" name = "category" value = "Racing" required/>HipHop &nbsp;
				  <input type = "radio" name = "category" value = "Sport" required/>Bollywood &nbsp;
				  <input type = "radio" name = "category" value = "Puzzle" required/>Jazz &nbsp;
				  <input type = "radio" name = "category" value = "Other" required/>Other <br/><br/>
				  <input type = "text" name="codeTag" placeholder="Enter the artist name" required><br/>
				  <input type = "text" name="tag" placeholder="Enter keywords. Seperate with a space" required><br/><br/>
				  <input type = "submit" value = "Add"/> &nbsp;
				  <input type = "reset" value = "Reset"/> <br/> <br/>
  
			</form>
            
            <a href="edit-game"><button class="back" style="width: 180px;">Back</button></a>
            
        </div>
    </div>
    


</body>
</html>