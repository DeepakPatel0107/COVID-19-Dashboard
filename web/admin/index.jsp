<!DOCTYPE html>
<html lang="en">
    <%@page import="Covid.CovidTest"%>
    <%@page import="org.json.JSONArray"%>
    <%@page import="org.json.JSONObject"%>

    <head>



        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box;}

            /* Button used to open the contact form - fixed at the bottom of the page */
            .open-button {
                background-color: #555;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                opacity: 0.8;
                position: fixed;
                bottom: 23px;
                right: 28px;
                width: 280px;
            }

            /* The popup form - hidden by default */
            .form-popup {
                display: none;
                position: fixed;
                bottom: 0;
                right: 15px;
                border: 3px solid #f1f1f1;
                z-index: 9;
            }

            /* Add styles to the form container */
            .form-container {
                max-width: 300px;
                padding: 10px;
                background-color: white;
            }

            /* Full-width input fields */
            .form-container input[type=text], .form-container input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                border: none;
                background: #f1f1f1;
            }

            /* When the inputs get focus, do something */
            .form-container input[type=text]:focus, .form-container input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Set a style for the submit/login button */
            .form-container .btn {
                background-color: #4CAF50;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                width: 100%;
                margin-bottom:10px;
                opacity: 0.8;
            }

            /* Add a red background color to the cancel button */
            .form-container .cancel {
                background-color: red;
            }

            /* Add some hover effects to buttons */
            .form-container .btn:hover, .open-button:hover {
                opacity: 1;
            }
            .card {
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                transition: 0.3s;
                width: 40%;
            }

            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

            .container {
                padding: 2px 16px;
            }



            .glow {
                font-size: 80px;
                color: #fff;
                text-align: center;
                -webkit-animation: glow 1s ease-in-out infinite alternate;
                -moz-animation: glow 1s ease-in-out infinite alternate;
                animation: glow 1s ease-in-out infinite alternate;
            }

            @-webkit-keyframes glow {
                from {
                    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
                }

                to {
                    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
                }
            }



        </style>


        
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>

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
        <title>CORONA: COVID 19 </title>

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
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
    <body class="ttr-opened-sidebar ttr-pinned-sidebar" >

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
                            <img class="ttr-logo-mobile" alt="" src="assets/images/logo-mobile.png" width="30" height="30">
                            <img class="ttr-logo-desktop" alt="" src="assets/images/logo-white.png" width="160" height="27">
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

                    <div class="ttr-sidebar-toggle-button">
                        <i class="ti-arrow-left"></i>
                    </div>
                </div>


                <!-- side menu logo end -->
                <!-- sidebar menu start -->
                <nav class="ttr-sidebar-navi">
                    <ul>
                        <li>
                            <a href="index.jsp" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-home"></i></span>
                                <span class="ttr-label">Dashboard</span>
                            </a>
                        </li>

                        <li>
                            <a href="../admin/user-profile.jsp" class="ttr-material-button">
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
                    <h4 class="breadcrumb-title">Dashboard</h4>
                    <ul class="db-breadcrumb-list">
                        <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                        <li>Dashboard</li>
                    </ul>
                </div>	

                <%
                    String selectedState = request.getParameter("state");
                    String confirm = "";
                    String active = "";
                    String recovered = "";
                    String deaths = "";
                    JSONObject jsondata = new CovidTest().getCovidData();

                    if (jsondata != null) {

                        JSONArray list = jsondata.getJSONArray("statewise");
                        if (list != null) {
                            for (int index = 0; index < 1; index++) {
                                JSONObject obj1 = (JSONObject) list.get(index);

                                confirm = obj1.getString("confirmed");
                                active = obj1.getString("active");
                                recovered = obj1.getString("recovered");
                                deaths = obj1.getString("deaths");

                            }
                        }

                    } else {

                    }


                %>

                <!-- Card -->
                <div class="row">
                    <div class="col-md-6 col-lg-3 col-xl-3 col-sm-6 col-12" >
                        <div class="widget-card widget-bg1 glow">					 
                            <div class="wc-item">
                                <h4 class="wc-title">
                                    Confirm Cases
                                </h4>

                                <span class=" counter " style="font-size: 70%">
                                    <h1><b><%=confirm%></b></h1>   
                                </span>


                            </div>				      
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 col-xl-3 col-sm-6 col-12">
                        <div class="widget-card widget-bg2 glow">					 
                            <div class="wc-item">
                                <h4 class="wc-title">
                                    Active Cases
                                </h4>

                                <span class=" counter " style="font-size: 70%">
                                    <h1><b><%=active%></b></h1>   
                                </span>	

                            </div>				      
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 col-xl-3 col-sm-6 col-12">
                        <div class="widget-card widget-bg3 glow">					 
                            <div class="wc-item">
                                <h4 class="wc-title">
                                    Recovered Cases
                                </h4>

                                <span class=" counter " style="font-size: 70%">
                                    <h1><b><%=recovered%></b></h1>   
                                </span>	

                            </div>				      
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 col-xl-3 col-sm-6 col-12">
                        <div class="widget-card widget-bg4 glow">					 
                            <div class="wc-item">
                                <h1 class="wc-title">
                                    Deceased Cases 
                                </h1>



                                <span class=" counter " style="font-size: 70%">
                                    <h1><b><%=deaths%></b></h1>   
                                </span>		


                            </div>				      
                        </div>
                    </div>
                </div>
                <!-- Card END -->

                <br>
                <br>
                <div class="row">
                    <div class="col-sm-3">
                        <span  class="ttr-label">Select the State from the List</span>
                    </div>
                    <div class="col-sm-6">


                        <select id="mylist" onchange="myFunction()" >

                            <%            String State = "";
                                JSONObject jsondata3 = new CovidTest().getCovidData();

                                if (jsondata3 != null) {

                                    JSONArray list = jsondata3.getJSONArray("statewise");
                                    if (list != null) {
                                        for (int index = 0; index < list.length(); index++) {
                                            JSONObject obj3 = (JSONObject) list.get(index);


                            %>

                            <option><%=obj3.getString("state")%></option>
                            <%
                                        }

                                    }

                                }
                            %>
                        </select>

                    </div>
                    <div class="col-sm-3">
                        <button class="btn-primary" onclick="reload()">  <span class="ttr-label">Show All Details</span></button>
                    </div>
                </div> 



                <br>
                <br>
                <br>
                <br>
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead id="t1">
                        <tr>

                            <th>State</th>
                            <th>Total Cases</th>
                            <th>Active</th>
                            <th>Recoverd</th>
                            <th>Deaths</th>
                            <th>Last Update</th>                
                        </tr>
                    </thead>
                    <tbody>

                        <%
                            String state1 = "";
                            JSONObject jsondata1 = new CovidTest().getCovidData();

                            if (jsondata1 != null) {

                                JSONArray list = jsondata1.getJSONArray("statewise");

                                if (list != null) {
                                    for (int index = 0; index < list.length(); index++) {
                                        JSONObject obj2 = (JSONObject) list.get(index);

                                        state1 = obj2.getString("state");
                                        if (selectedState.equals("null")) {
                        %>

                        <tr>

                            <td><%=obj2.getString("state")%></td>
                            <td><%=obj2.getString("confirmed")%></td>
                            <td><%=obj2.getString("active")%></td>
                            <td><%=obj2.getString("recovered")%></td>
                            <td><%=obj2.getString("deaths")%></td>
                            <td><%=obj2.getString("lastupdatedtime")%></td>

                        </tr>
                        <%
                        } else {
                            if (state1.equalsIgnoreCase(selectedState)) {


                        %>
                    <script>alert(<%= state1%>);</script>
                    <tr>

                        <td><%=obj2.getString("state")%></td>
                        <td><%=obj2.getString("confirmed")%></td>
                        <td><%=obj2.getString("active")%></td>
                        <td><%=obj2.getString("recovered")%></td>
                        <td><%=obj2.getString("deaths")%></td>
                        <td><%=obj2.getString("lastupdatedtime")%></td>

                    </tr>
                    <%

                                        }

                                    }

                                }
                            }

                        }
                    %>
                    </tbody>
                </table>

                <script>


                    function myFunction() {

                        var selectedDropdown = document.getElementById("mylist");
                        var strUser = selectedDropdown.options[selectedDropdown.selectedIndex].value;

                        location.href = "index.jsp?state=" + strUser;

                    }
                    function reload()
                    {

                        location.href = "index.jsp?state=null";
                    }

                </script>

                <br>
                <br>
            </div>
        </main>

        <div class="ttr-overlay"></div>

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
        <script src='assets/vendors/calendar/moment.min.js'></script>
        <script src='assets/vendors/calendar/fullcalendar.js'></script>
        <script src='assets/vendors/switcher/switcher.js'></script>
        <script>


        </script>
    </body>
    <script type="text/javascript" src="jquery.lazy.min.js"></script>

</html>