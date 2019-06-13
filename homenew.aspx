<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homenew.aspx.cs" Inherits="applliedProject.homenew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<head>
    <style>
        #fisrtlist {
    color: orange;
}
    </style>
	<title></title>
	<link rel="stylesheet" type="text/css" href="hnew.css"/>
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'/>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet"/>
</head>
<body>

	<div class="bgimage">
		<div class="menu">
			
			<div class="leftmenu">
                <h2> PERFUME ONLINE </h2>
			</div>

			<div class="rightmenu">
				<ul>
					<li id="fisrtlist"> HOME </li>
					<li onclick="window.location.href='/homeBrands.aspx'" > BRANDS </li>
					<li onclick="window.location.href='/homeProducts.aspx'"> PRODUCTS</li>
					<li onclick="window.location.href='/loginnew.aspx'">LOGOUT</li>
				</ul>
			</div>

		</div>

		<div class="text">
			<h1> PERFUME ONLINE </h1>
			<h2> CANADA'S #1 PERFUME CHOICE</h2>
			<button type="submit" onclick="window.location.href='/addBrands.aspx'" id="buttonone"> ADD BRANDS </button>
			<button id="buttontwo" onclick="window.location.href='/addProducts.aspx'"> ADD PRODUCTS </button> 
		</div>

	</div>

</body>
</html>
