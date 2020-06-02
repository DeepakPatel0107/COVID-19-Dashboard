<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
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
        <link rel="icon" href="../error-404.html" type="image/x-icon" />
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />

        <!-- PAGE TITLE HERE ============================================= -->
        <title>CORONA: COVID 19</title>

        <!-- MOBILE SPECIFIC ============================================= -->
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <!-- All PLUGINS CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/assets.css">
        <link rel="stylesheet" type="text/css" href="assets/vendors/calendar/fullcalendar.css">

        <!-- TYPOGRAPHY ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/typography.css">

        <!-- SHORTCODES ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">

        <!-- STYLESHEETS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">
        <link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">

    </head>
    <body class="ttr-opened-sidebar ttr-pinned-sidebar" onload="details()">

        <!-- header start -->
        <header class="ttr-header">
            <div class="ttr-header-wrapper">
                <!--sidebar menu toggler start -->
                <div class="ttr-toggle-sidebar ttr-material-button">
                    <i class="ti-close ttr-open-icon"></i>
                    <i class="ti-menu ttr-close-icon"></i>
                </div>

                <div class="ttr-logo-box">
                    <div>
                        <a href="index.jsp" class="ttr-logo">
                            <img alt="" class="ttr-logo-mobile" src="assets/images/logo-mobile.png" width="30" height="30">
                            <img alt="" class="ttr-logo-desktop" src="assets/images/logo-white.png" width="160" height="27">
                        </a>
                    </div>
                </div>
                <!--logo end -->
                <div class="ttr-header-right ttr-with-seperator">
                    <!-- header right menu start -->
                    <ul class="ttr-header-navigation">

                        <li>
                            <a href="logout.jsp" class=""><i class="fa fa-sign-out">Log Out</i></a>

                        </li>


                    </ul>
                    <!-- header right menu end -->
                </div>
            </div>
        </header>
        <!-- header end -->
        <!-- Left sidebar menu start -->
        <div class="ttr-sidebar">
            <div class="ttr-sidebar-wrapper content-scroll">
                <!-- side menu logo start -->
                <div class="ttr-sidebar-logo">
                    <a href="#"><img alt="" src="assets/images/logo.png" width="122" height="27"></a>


                    <%

                        String name = "";
                        String email = "";

                        String query33 = "Select * from userdetails where email='" + session.getAttribute("admin_id") + "'";
                        ResultSet rs33 = new GetQuery().getResultSetQuery(query33);
                        try {
                            while (rs33.next()) {
                                name = rs33.getString("name");
                                email = rs33.getString("email");
                            }
                        } catch (Exception e) {

                        }

                    %>


                    <div class="ttr-sidebar-toggle-button">
                        <i class="ti-arrow-left"></i>
                    </div>
                </div>
                <!-- side menu logo end -->
                <!-- sidebar menu start -->
                <nav class="ttr-sidebar-navi">
                    <ul>
                        <li>
                            <a href="index.jsp?state=null" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-home"></i></span>
                                <span class="ttr-label">Dashboard</span>
                            </a>
                        </li>

                        <li>
                            <a href="user-profile.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-user"></i></span>
                                <span class="ttr-label">My Profile</span>

                            </a>

                        </li>
                        <li class="ttr-seperate"></li>
                    </ul>
                    <!-- sidebar menu end -->
                </nav>
                <!-- sidebar menu end -->
            </div>
        </div>
        <!-- Left sidebar menu end -->

        <!--Main container start -->
        <main class="ttr-wrapper">
            <div class="container-fluid">
                <div class="db-breadcrumb">
                    <h4 class="breadcrumb-title">User Profile</h4>
                    <ul class="db-breadcrumb-list">
                        <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                        <li>User Profile</li>
                    </ul>
                </div>	
                <div class="row">
                    <!-- Your Profile Views Chart -->
                    <div class="col-lg-12 m-b30">
                        <div class="widget-box">
                            <div class="wc-title">
                                <h4>User Profile</h4>
                            </div>

                            <div class="user-profile-thumb">
                                <img src="../admin/assets/images/favicon.png" alt=""/>

                            </div>
                            <div class="profile col-sm-8 ml-auto" >
                                <h4><%= name%></h4>
                                <span><%= email%></span>	
                            </div>
                            <div class="widget-inner">
                                <form class="edit-profile m-b30" >
                                    <div class="">
                                        <div class="form-group row">


                                            <div class="col-sm-10  ml-auto">
                                                <h3>1. Personal Details</h3>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Name</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" id="name" name="name">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Father Name</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" id="father" name="father">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Mother Name</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" id="mother" name="mother">

                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Date of Birth</label>
                                            <div class="col-sm-7">
                                                <input class="form-control"  type="date" id="dob" name="dob">
                                                <span id="error_dob" style="color: red"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Mobile Number</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" id="mobile" name="mobile">
                                            </div>
                                        </div>

                                        <div class="seperator"></div>

                                        <div class="form-group row">
                                            <div class="col-sm-10 ml-auto">
                                                <h3>2. Address</h3>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Address</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" id="address" name="address">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">City</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" id="city" name="city">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">State</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" id="state" name="state">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Pincode</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" value="221201" type="text" id="pincode" name="pincode">
                                                <span id="error_pincode" style="color: red"></span>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="">
                                        <div class="">
                                            <div class="row">
                                                <div class="col-sm-2">
                                                </div>
                                                <div class="col-sm-7">
                                                    <input type="button" value="Update" class="btn" onclick="updateProfile()"/>
                                                    <button type="reset" class="btn-secondry">Reset</button>
                                                </div>
                                            </div>
                                            <span id="error" style="color: red"></span>
                                        </div>
                                    </div>
                                </form>
                                <form class="edit-profile">
                                    <div class="">
                                        <div class="form-group row">
                                            <div class="col-sm-10 ml-auto">
                                                <h3>4. Password</h3>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Current Password</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" id="currentPassword" type="password" id="currentPassword" onblur=" oldpsValid();">
                                                <span id="erroroldpassword" name="erroroldpassword" style="color: red"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">New Password</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" id="newPassword" type="password" id="newPassword" onblur="newpsValid()">
                                                <span id="errornewpassword" name="errornewpassword" style="color: red"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Re Type Password</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" id="rePassword" type="password" id="rePassword" onblur="newpsValid()">
                                                <span id="errorconfirmpassword" name="errorconfirmpassword" style="color: red"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2">
                                        </div>
                                        <div class="col-sm-7">
                                            <input type="button" class="btn" value="Change Password" onclick="changePassword()"/>
                                            <button type="reset" class="btn-secondry">Reset</button>
                                        </div>
                                    </div>
                                    <span id="errorbtn" name="errorbtn" style="color: red"></span>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Your Profile Views Chart END-->
                </div>
            </div>
        </main>
        <div class="ttr-overlay"></div>

        <script>

            function details()
            {

                $.ajax({
                    url: "GetProfileDetails.jsp",

                    type: 'POST',
                    data: {},
                    success: function (msg) {
                        $("#errorbtn").empty();
                        var name = msg.split(",")[0].trim();
                        var father = msg.split(",")[1].trim();
                        var mother = msg.split(",")[2].trim();
                        var dob = msg.split(",")[3].trim();
                        var mobile = msg.split(",")[4].trim();
                        var address = msg.split(",")[5].trim();
                        var city = msg.split(",")[6].trim();

                        var state = msg.split(",")[7].trim();
                        var pincode = msg.split(",")[8].trim();


                        callSetValues(name, father, mother, dob, mobile, address, city, state, pincode);

                    }

                });



                function callSetValues(name, father, mother, dob, mobile, address, city, state, pincode)
                {
                    document.getElementById("name").value = name;
                    document.getElementById("father").value = father;
                    document.getElementById("mother").value = mother;
                    document.getElementById("dob").value = dob;
                    document.getElementById("mobile").value = mobile;
                    document.getElementById("address").value = address;
                    document.getElementById("city").value = city;
                    document.getElementById("state").value = state;
                    document.getElementById("pincode").value = pincode;

                }


            }



            function updateProfile()
            {

                var name = $("#name").val().trim();
                var father = $("#father").val().trim();
                var mother = $("#mother").val().trim();
                var dob = $("#dob").val().trim();
                var mobile = $("#mobile").val().trim();
                var address = $("#address").val().trim();
                var city = $("#city").val().trim();
                var state = $("#state").val().trim();
                var pincode = $("#pincode").val().trim();

                if (dob.length == 0 && pincode === null)
                {
                    document.getElementById("error").innerHTML = "Please Fill All Details!";
                } else if (dob.length == 0 || pincode.length == 0)
                {

                    document.getElementById("error_dob").innerHTML = "Please Enter Date of Birth!";
                    document.getElementById("error_pincode").innerHTML = "Please Enter Pincode!";
                } else if (pincode === null)
                {
                    document.getElementById("error_pincode").innerHTML = "Please Enter Pincode!";
                } else if (dob.length == 0)
                {

                    document.getElementById("error_dob").innerHTML = "Please Enter Date of Birth!";

                } else
                {
                    $.ajax({

                        type: 'POST',
                        url: "UpdateProfile.jsp",
                        data: {name: name, father: father, mother: mother, address: address, city: city, state: state, pincode: pincode, dob: dob, mobile: mobile},
                        success: function (msg) {
                            $("#error").empty();
                            $("#error").append(msg);

                        }
                    });
                }


            }





            function changePassword()
            {
                var oldps = $("#currentPassword").val().trim();

                var newps = $("#newPassword").val().trim();
                var confirmps = $("#rePassword").val().trim();


                if (oldps.length == 0 && newps.length == 0 && confirmps.length == 0)
                {
                    oldpsValid();
                    newpsValid();
                    confirmpsValid();

                } else if (oldps.length == 0 || newps.length == 0 || confirmps.length == 0)
                {
                    document.getElementById("errorbtn").innerHTML = "Please fill all field";
                } else
                {
                    if (newps == confirmps)
                    {
                        $.ajax({
                            url: "ChangePasswordData.jsp",
                            type: 'POST',
                            data: {oldps: oldps, newps: newps, confirmps: confirmps},
                            success: function (msg) {
                                $("#errorbtn").empty();
                                $("#errorbtn").append(msg);

                                location.href = "../index.jsp";
                            }
                        });
                    } else
                    {
                        document.getElementById("errorbtn").innerHTML = "Confirm Password Not Match !!!";
                    }



                }
            }
            function oldpsValid()
            {
                var oldps = $("#currentPassword").val().trim();
                if (oldps.length == 0)
                {
                    document.getElementById("erroroldpassword").innerHTML = "Please enter old password";
                } else
                {
                    document.getElementById("erroroldpassword").innerHTML = "";
                }
            }


            function newpsValid()
            {
                var newps = $("#newPassword").val().trim();
                if (newps.length == 0)
                {
                    document.getElementById("errornewpassword").innerHTML = "Please enter new password";
                } else
                {
                    document.getElementById("errornewpassword").innerHTML = "";
                }
            }

            function confirmpsValid()
            {
                var confirmps = $("#rePassword").val().trim();
                if (confirmps.length == 0)
                {
                    document.getElementById("errorconfirmpassword").innerHTML = "Please enter confirm pssword";
                } else
                {
                    document.getElementById("errorconfirmpassword").innerHTML = "";
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
        <script src='assets/vendors/scroll/scrollbar.min.js'></script>
        <script src="assets/js/functions.js"></script>
        <script src="assets/vendors/chart/chart.min.js"></script>
        <script src="assets/js/admin.js"></script>
        <script src='assets/vendors/switcher/switcher.js'></script>
    </body>


</html>