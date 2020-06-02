<!DOCTYPE html>
<html lang="en">

<head>

	
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>CORONA: COVID 19</title>
	
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
		<div class="account-head" style="background-image:url(assets/images/2.jpg);">
			<a href="index.jsp"><img src="assets/images/logo-white-2.png" alt=""></a>
		</div>
		<div class="account-form-inner">
			<div class="account-container">
				<div class="heading-bx left">
					<h2 class="title-head">Sign Up <span>Now</span></h2>
	
                                        
				</div>	
				<form class="contact-bx">
					<div class="row placeani">
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Your Name</label>
                                                                        <input id="name" type="text" required="" class="form-control">
								<span id="name_error" style="color: red"></span>
                                                                </div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Your Email Address</label>
                                                                        <input id="email" type="email" required="" class="form-control">
								<span id="email_error" style="color: red"></span>
                                                                </div>
							</div>
						</div>
                                            <div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Your Mobile Number</label>
                                                                        <input id="mobile" type="number" required="" class="form-control">
								<span id="mobile_error" style="color: red"></span>
                                                                </div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group"> 
									<label>Your Password</label>
                                                                        <input id="password" type="password" class="form-control" required="">
								<span id="passwoed_error" style="color: red"></span>
                                                                </div>
							</div>
						</div>
						<div class="col-lg-12 m-b30">
                                                    <button  type="button" value="Submit" class="btn button-md" onclick="ValidateAndLogin()">Sign Up</button>
						</div>
						<span id="error" style="color: red"></span>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
    
    
      <script>
              
         
            function ValidateAndLogin()
            {
                
                var name = $("#name").val().trim();
                var email = $("#email").val().trim();
                var mobile = $("#mobile").val().trim();
                var pass = $("#password").val().trim();
                
                if (name.length == 0 && email.length == 0 && mobile.length == 0 && pass.length == 0)
                {
                    document.getElementById("name_error").innerHTML = "Please Enter Name!";
                    document.getElementById("email_error").innerHTML = "Please Enter Email!";
                    document.getElementById("mobile_error").innerHTML = "Please Enter Mobile Number!";
                    document.getElementById("passwoed_error").innerHTML = "Please Enter Password!";
                } else if (name.length == 0 || email.length == 0 || mobile.length==0 || pass.length==0)
                {
                    document.getElementById("error").innerHTML = "Please Fill All the Details!";
                } else
                {
                    document.getElementById("name_error").innerHTML = "";
                    document.getElementById("email_error").innerHTML = "";
                    document.getElementById("mobile_error").innerHTML = "";
                    document.getElementById("passwoed_error").innerHTML = "";
                    document.getElementById("error").innerHTML = "";
                
                    $.ajax({
                        type: 'POST',
                        url: "RegisterData.jsp",
                        data: {name: name, email: email, mobile: mobile, pass:pass},
                        success: function (msg) {
                            $("#error").empty();
                            $("#error").append(msg);
                             location.reload();
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
