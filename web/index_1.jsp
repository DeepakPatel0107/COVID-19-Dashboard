<!DOCTYPE html>
<html lang="en">


<head>

	<!-- META ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
	
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>CORONA: COVID 19 </title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/assets.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
	
</head>
<body id="bg">
<div class="page-wraper">
	<div id="loading-icon-bx"></div>
	<div class="account-form">
		<div class="account-head" style="background-image:url(assets/images/3.jpg);">
			<a href="index.jsp"><img src="assets/images/logo-white-2.png" alt=""></a>
		</div>
		<div class="account-form-inner">
			<div class="account-container">
				<div class="heading-bx left">
					<h2 class="title-head">Login <span>Admin Account</span></h2>
                                       
				</div>	
                            <form action="" method="post" >
					<div class="row placeani">
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									
                                                                    <input name="Name" id="user_id" type="text" placeholder="Email ID" required="" class="form-control">
								</div>
                                                            <span id="user_id_error" style="color: red"></span>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group"> 
								
                                                                    <input name="Email" id="Pass" type="password" placeholder="Password" class="form-control" required="">
								</div>
                                                            <span id="Pass_error" style="color: red"></span>
							</div>
						</div>
						
                                           
						<div class="col-lg-12 m-b30">
                                                    <input  type="button" value="Login" class="btn button-md" onclick="ValidateAndLogin1()" />
						</div>
                                             <span id="error" style="color: red"></span>
						
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
    
    
    
    <script>
            $(document).ready(function () {
                function disablePrev() {
                    window.history.forward()
                }
                window.onload = disablePrev();
                window.onpageshow = function (evt) {
                    if (evt.persisted)
                        disableBack()
                }
            });
        </script>
  <script>
              
              
            function ValidateAndLogin1()
            {
                
                var u_id = $("#user_id").val().trim();
                var Pass = $("#Pass").val().trim();
                
                if (u_id.length == 0 && Pass.length == 0)
                {
                    document.getElementById("user_id_error").innerHTML = "Please Enter username!";
                    document.getElementById("Pass_error").innerHTML = "Please Enter Password!";
                } else if (u_id.length == 0 || Pass.length == 0)
                {
                    document.getElementById("error").innerHTML = "Please Enter Username and Password both!";
                } else
                {
                 
                    document.getElementById("user_id_error").innerHTML = "";
                    document.getElementById("Pass_error").innerHTML = "";
                    document.getElementById("error").innerHTML = "";
                    $.ajax({
                        type: 'POST',
                        url: "ValidateLoginAdmin1.jsp",
                        data: {u_id: u_id, Pass: Pass},
                        success: function (msg) {
                            $("#error").empty();
                            $("#error").append(msg);
                           
                        }
                    });
                }
            }
        </script>  
    
    
    
    
<!-- External JavaScripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="assets/vendors/counter/waypoints-min.js"></script>
<script src="assets/vendors/counter/counterup.min.js"></script>
<script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="assets/vendors/masonry/masonry.js"></script>
<script src="assets/vendors/masonry/filter.js"></script>
<script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="assets/js/functions.js"></script>
<script src="assets/js/contact.js"></script>
<script src='assets/vendors/switcher/switcher.js'></script>
</body>

</html>
