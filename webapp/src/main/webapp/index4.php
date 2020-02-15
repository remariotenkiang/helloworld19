<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login </title>
        <meta name="description" content="Custom Login Form Styling with CSS3" />
        <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="css1/style.css" />
		<script src="js1/modernizr.custom.63321.js"></script>
       	<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>

		<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
		<style>
			@import url(http://fonts.googleapis.com/css?family=Raleway:400,700);
			body {
				background: #7f9b4e url(images1/login.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container > header h1,
			.container > header h2 {
				color: #fff;

				text-shadow: 0 1px 1px rgba(0,0,0,0.7);
			}
			a {
    color: hotpink;
}
h1 {
    color:white;
}
		</style>
    </head>
    <body >

				<header id="header">
				<h1><a href="index.php">BookMyBusTicket</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="index.php">Home</a></li>
				<!--		<li><a href="#about">About</a></li>
					-->	<li><a href="index4.php">Users</a></li>
				<!--		<li><a href="admin1.php">Admin</a></li> -->
						<li><a href="#contact">Contact</a></li>
					</ul>
				</nav>
			</header>
		<div class="container">


			<?php
		 session_start();
		 if(isset($_SESSION['msg']))
		{
			echo '<p class="message"> <font size="5" color="White"> <center> <i>';
			echo $_SESSION['msg'];
			echo "</i></center></font></p>";
			unset($_SESSION['msg']);
		}
		if(isset($_SESSION['error']))
		{
			echo '<p class="error-message"> <font size="6" color="White"> <center><i>';
			echo $_SESSION['error'];
			echo "</i> </center></font></p>";
			unset($_SESSION['error']);
		}
		 if(isset($_SESSION['reg']))
		{
			echo '<p class="message"> <font size="5" color="White"><center> <i>';
			echo $_SESSION['reg'];
			echo "</i> <center></font></p>";
			unset($_SESSION['reg']);
		}
		if(isset($_SESSION['reg_error']))
		{
			echo '<p class="message"> <font size="5" color="White"> <center><i>';
			echo $_SESSION['reg_error'];
			echo "</i> </center></font></p>";
			unset($_SESSION['reg_error']);
		}
		if(isset($_SESSION['change']))
		{
			echo '<p class="message"> <font size="5" color="White"> <center><i>';
			echo $_SESSION['change'];
			echo "</i> </center></font></p>";
			unset($_SESSION['change']);
		}
		?>
			<section class="main">
				<form class="form-4" action="login.php" method ="POST" >
				    <h1>Login</h1>
				    <p>
				        Username
				        <input type="text" class="form-control" name="Username" placeholder="eg:Johannes" required>
				    </p>
				    <p>
				        Password
				        <input type="password" class="form-control" name='Password' placeholder="eg:Johannes123" required>
				    </p>

				    <p>
				        <input type="submit" class="btn btn-primary" name="submit" value="Continue">
				    </p>
				    <p>
			<!--	    	<a href="forgetpass.php" > Forgot password?</a> -->
				    	&nbsp;
				    	<a href="register1.php" > Register Now</a>

				    </p>

				</form>​

			</section>

		</div>
			<footer id="footer">
				<div class="container">
					<div class="row">
						<section class="4u 6u(medium) 12u$(small)">
							<h3>BoookMyBusTicket</h3>
							<ul class="alt">
								<li>Quick Search</li>
								<li>Online Booking</li>
								<li>Pay Online</li>
								<li>Hassle Free Bus Booking</li>
							</ul>
						</section>
						<section class="4u 6u$(medium) 12u$(small)">
							<h3>Top Bus Routes</h3>
							<ul class="alt">
                <li>PKR - KTM</li>
								<li>KTM - CTN</li>
								<li>BTL - BIR</li>
								<li>DAR - PKR</li>
							</ul>
						</section>
					<section class="4u$ 12u$(medium) 12u$(small)">
							<h3>Contact Us</h3>
			<!--				<ul class="icons">
								<li><a href="#" class="icon rounded fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon rounded fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon rounded fa-pinterest"><span class="label">Pinterest</span></a></li>
								<li><a href="#" class="icon rounded fa-google-plus"><span class="label">Google+</span></a></li>
								<li><a href="#" class="icon rounded fa-linkedin"><span class="label">LinkedIn</span></a></li>
							</ul>
					-->		<ul class="tabular">
								<li>
                  <h3>Address</h3>
									ABC Road<br>
									<a href="https://code-projects.org/">Code-Projects</a> 521126
								</li>
								<li>
									<h3>Mail</h3>
									<a href="#">codeprojectsorg@gmail.com</a>
								</li>
								<li>
									<h3>Phone</h3>
									(000) 102-2400
								</li>
							</ul>
						</section>
					</center>
					</div>
					<ul class="copyright">
						<li>&copy; 2017 BookMyBusTicket. All rights reserved.Brought To You By <a href="https://code-projects.org/">Code-Projects</a></li>
			<!--			<li>Design: <a href="http://templated.co">TEMPLATED</a></li>
						<li>Images: <a href="http://unsplash.com">Unsplash</a></li>
				-->	</ul>
				</div>
			</footer>
    </body>
</html>
