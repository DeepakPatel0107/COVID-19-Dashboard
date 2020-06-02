<%@page import="java.sql.Statement"%>
<%@page import="Db.DBConnection"%>
<%@page import="java.sql.Connection"%>
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

        <!-- DESCRIPTION -->
        <meta name="description" content="COVID 19: Dashboard" />

       
        <!-- FAVICONS ICON ============================================= -->
        <link rel="icon" href="../error-404.html" type="image/x-icon" />
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />

        <!-- PAGE TITLE HERE ============================================= -->
        <title>CORONA: COVID 19</title>

        <!-- MOBILE SPECIFIC ============================================= -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--[if lt IE 9]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->

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
                <!--sidebar menu toggler end -->
                <!--logo start -->
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
                                            <a href="../admin/logout.jsp" class=""><i class="fa fa-sign-out">Log Out</i></a>
						
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
                    <!-- <div class="ttr-sidebar-pin-button" title="Pin/Unpin Menu">
                            <i class="material-icons ttr-fixed-icon">gps_fixed</i>
                            <i class="material-icons ttr-not-fixed-icon">gps_not_fixed</i>
                    </div> -->
                    
                 
               

                    <div class="ttr-sidebar-toggle-button">
                        <i class="ti-arrow-left"></i>
                    </div>
                </div>
                <!-- side menu logo end -->
                <!-- sidebar menu start -->
                <nav class="ttr-sidebar-navi">
                    <ul>
                        <li>
                            <a href="#" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-home"></i></span>
                                <span class="ttr-label">Dashboard</span>
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
                    <h4 class="breadcrumb-title">Admin Dashboard</h4>
                    
                </div>	
                <div class="row">
                    <!-- Your Profile Views Chart -->
                    <div class="col-lg-12 m-b30">
                        <div class="widget-box">
                            <div class="wc-title">
                                <h4>User Lists</h4>
                            </div>

                        
                            
                            
                            
                             <div class="card-body">                                    
                                        <div class="col-12">
                                            <div class="table-responsive">
                                                <table id="order-listing" class="table" style="border-style:outset ">
                                                    <thead style="background-color: #6666ff;color: white;">
                                                        <tr>
                                                            <th>Sr.No.</th>
                                                            <th>Name</th>
                                                            <th>Email</th>
                                                            <th>Father Name</th>
                                                            <th>Mother Name</th>
                                                            <th>Mobile</th>
                                                            <th>Address</th>
                                                            <th>City</th>
                                                            <th>State</th>
                                                           
                                                            <th>Actions</th>
                                                        </tr>
                                                    </thead>                                                
                                                    <tbody >
                                                        <%
                                                            int i = 0;
                                                            Connection conn = new DBConnection().getConnection();
                                                            Statement stmt = conn.createStatement();
                                                            String query = "select * from userdetails";
                                                            ResultSet rs = stmt.executeQuery(query);
                                                            while (rs.next()) {
                                                                i = i + 1;
                                                        %>
                                                        <tr>    
                                                            <td><%=i%></td>
                                                            <td><%=rs.getString("name")%></td>
                                                             <td><%=rs.getString("email")%></td>
                                                             <td><%=rs.getString("father")%></td>
                                                              <td><%=rs.getString("mother")%></td>
                                                               <td><%=rs.getString("mobile")%></td>
                                                                <td><%=rs.getString("address")%></td>
                                                                 <td><%=rs.getString("city")%></td>
                                                                  <td><%=rs.getString("state")%></td>
                                                                  
                                                            <td style="cursor: pointer"><i class="fa fa-trash"  onclick="deletCall('<%=rs.getString("email")%>')"></i>&nbsp;&nbsp;<span><i class="fa fa-edit" onclick="editCall( '<%=rs.getString("email")%>')" ></i></span></td>
                                                        </tr>
                                                        <%
                                                            }

                                                        %>
                                                    </tbody>
                                                </table>
                                                    <span id="msg"></span>
                                            </div>
                                        </div>                                                    

                                    </div>
                            
                            
                            <div id="name_up" style="display:none"></div>
                            <div id="father_up" style="display:none"></div>
                            <div id="mother_up" style="display:none"></div>
                            <div id="mobile_up" style="display:none"></div>
                            <div id="address_up" style="display:none"></div>
                            <div id="city_up" style="display:none"></div>
                            <div id="state_up" style="display:none"></div>
                            
                            
                            
                            
                          
                            </div>
                           
                        </div>
                    </div>
                    <!-- Your Profile Views Chart END-->
                </div>
            </div>
        </main>
        <div class="ttr-overlay"></div>

        <script>
            
           
                        function callRefresh()
                        {
                            window.location.reload(true);
                        }


                        function deletCall(email)
                        {
                            $.ajax({
                                type: 'POST',
                                url: "DeleUser.jsp",
                                data: {email: email},
                                success: function (msg) {
                                    $("#msg").empty();
                                    $("#msg").append(msg);
                                    callRefresh();
                                }
                            });

                        }
                        function callRefresh()
                        {
                            window.location.reload(true);
                        }
                        function  update()
                        {
                            var name = $("#name").val().trim();
                           
                             var father = $("#father").val().trim();
                              var mother = $("#mother").val().trim();
                               var mobile = $("#mobile").val().trim();
                                var address = $("#address").val().trim();
                                 var state = $("#state").val().trim();
                                  var city = $("#city").val().trim();
                                alert(father);   
                            var newName = document.getElementById("name_up").innerText;
                             var newFather = document.getElementById("father_up").innerText;
                              var newMother = document.getElementById("mother_up").innerText;
                               var newMobile = document.getElementById("mobile_up").innerText;
                                var newAddress = document.getElementById("address_up").innerText;
                                 var newCity = document.getElementById("city_up").innerText;
                                  var newState = document.getElementById("state_up").innerText;
                                  
                                  alert(newFather);
                            $.ajax({
                                type: 'POST',
                                url: "updateDetails.jsp",
                                data: {name: name, father: father, mother:mother,mobile:mobile, address: address,state:state,city:city, newName: newName,newFather: newFather, newMother: newMother, newMobile: newMobile, newAddress: newAddress, newCity: newCity, newState: newState},
                                success: function (msg) {
                                    $("#msg").empty();
                                    $("#msg").append(msg);
                                    callRefresh();
                                }
                            });

                        }
                        function editCall(email)
                        {
                           location.href="user-profile_1.jsp?email="+email;

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