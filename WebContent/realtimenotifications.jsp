<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png" href="images/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Information Reporting</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    
    
    
   

    <!-- Bootstrap core CSS     -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" />


</head>

<style>

* {font-family: Helvetica Neue, Arial, sans-serif; }

h1, table { text-align: center; }

table {border-collapse: collapse;  width: 70%; margin: 0 auto 5rem;}

th, td { padding: 1.5rem; font-size: 1.3rem; }



tr, td { transition: .4s ease-in; } 

tr:first-child {background: rgb(216, 191, 216) }

tr:nth-child(even) { background: hsla(50, 50%, 80%, 0.7); }

td:empty {background: hsla(50, 25%, 60%, 0.7); }

tr:hover:not(#firstrow), tr:hover td:empty {background: #ff0; pointer-events: visible;}
tr:hover:not(#firstrow) { transform: scale(1.2); font-weight: 700; box-shadow: 0px 3px 7px rgba(0, 0, 0, 0.5);}


</style>

<style>


body {
  min-height: 100%;
  margin: 0;
  padding: 0;
  font: 400 1.4rem 'Lato', Verdana, Helvetica, sans-serif;
}

* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

#wrapper {
  width: 100%;
  margin: 0;
  padding: 0;
}

.container {
  width: 80%;
  margin: 0 auto;
}
section button {
  margin: 0 auto;
  font-size: 2.0rem;
  padding: 1.25rem 2.5rem;
  display: block;
  background-color: #009ac9;
  border: 1px solid transparent;
  color: #ffffff;
  font-weight: 300;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

section button:hover {
  background-color: #ffffff;
  color: #009ac9;
  border-color: #009ac9;
}

</style>


<%@ page import = "splash.InformationReporting" %>
<%@ page import = "splash.GarbageInfo" %>
<%@ page import = "java.util.*" %>

<% 

InformationReporting info = new InformationReporting();
List<GarbageInfo> ls = info.selectData();

%>


<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="images/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                    SMART GARBAGE COLLECTION
                </a>
            </div>

                   <ul class="nav">
                <li class="active">
                    <a href="dashboard.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                
               
                <li>
                    <a href="table.jsp">
                        <i class="pe-7s-map-marker"></i>
                        <p>Table List</p>
                    </a>
                </li>
                <li>
                    <a href="typography.jsp">
                        <i class="pe-7s-bell"></i>
                        <p> Typography</p>
                    </a>
                </li>
                
                  <li>
                    <a href="icons.jsp">
                        <i class="pe-7s-bell"></i>
                        <p> Icons</p>
                    </a>
                </li>
                
                  <li>
                    <a href="notifications.jsp">
                        <i class="pe-7s-bell"></i>
                        <p> Notifications</p>
                    </a>
                </li>
                
                 
                
				<li class="active-pro">
                    <a href="upgrade.jsp">
                        <i class="pe-7s-rocket"></i>
                        <p>Upgrade to PRO</p>
                    </a>
                </li>
            </ul>


    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="dashboard.jsp">Dashboard</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret"></b>
                                    <span class="notification">5</span>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
                        <li>
                           <a href="">
                                <i class="fa fa-search"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="">
                               Account
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Dropdown
                                    <b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                              </ul>
                        </li>
                        <li>
                            <a href="Login.jsp">
                                Log out
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row" style="width:3000px;  height: 70px; font-size:80%;">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="header">
                                <h4 class="title"> Client Notifications</h4>
                                <p class="category">Get Notified</p>
                            </div>
                            <div class="content">
                               
                          

<table id="racetimes">
<tr id="firstrow"><td><h5><b>City</b></h5></td><td><h5><b>Latitude</b></h5></td><td><h5><b>Longitude</b></h5></td><td><h5><b>Altitude</b></h5></td><td><h5><b>Action Required</b></h5></td></tr>
<tr><td><%out.println(ls.get(0).getCity()); %></td><td><%out.println(ls.get(0).getLatitude()); %></td><td><%out.println(ls.get(0).getLongitude()); %></td><td><%out.println(ls.get(0).getAltitude()); %></td><td><%out.println(ls.get(0).getActionRequired()); %></td></tr>
<tr><td><%out.println(ls.get(1).getCity()); %></td><td><%out.println(ls.get(1).getLatitude()); %></td><td><%out.println(ls.get(1).getLongitude()); %></td><td><%out.println(ls.get(1).getAltitude()); %></td><td><%out.println(ls.get(1).getActionRequired()); %></td></tr>
<tr><td><%out.println(ls.get(2).getCity()); %></td><td><%out.println(ls.get(2).getLatitude()); %></td><td><%out.println(ls.get(2).getLongitude()); %></td><td><%out.println(ls.get(2).getAltitude()); %></td><td><%out.println(ls.get(2).getActionRequired()); %></td></tr>
<tr><td><%out.println(ls.get(3).getCity()); %></td><td><%out.println(ls.get(3).getLatitude()); %></td><td><%out.println(ls.get(3).getLongitude()); %></td><td><%out.println(ls.get(3).getAltitude()); %></td><td><%out.println(ls.get(3).getActionRequired()); %></td></tr>
<tr><td><%out.println(ls.get(4).getCity()); %></td><td><%out.println(ls.get(4).getLatitude()); %></td><td><%out.println(ls.get(4).getLongitude()); %></td><td><%out.println(ls.get(4).getAltitude()); %></td><td><%out.println(ls.get(4).getActionRequired()); %></td></tr>
<tr><td><%out.println(ls.get(5).getCity()); %></td><td><%out.println(ls.get(5).getLatitude()); %></td><td><%out.println(ls.get(5).getLongitude()); %></td><td><%out.println(ls.get(5).getAltitude()); %></td><td><%out.println(ls.get(5).getActionRequired()); %></td></tr>
<tr><td><%out.println(ls.get(6).getCity()); %></td><td><%out.println(ls.get(6).getLatitude()); %></td><td><%out.println(ls.get(6).getLongitude()); %></td><td><%out.println(ls.get(6).getAltitude()); %></td><td><%out.println(ls.get(6).getActionRequired()); %></td></tr>
</table>

<form action = "CancelObservation.jsp">
 <section>
<button id="js-trigger-overlay" type="submit">Cancel Observation</button>
  </section>
</form>

                                <div class="footer">
                                    <div class="legend">
                                        <i class="fa fa-circle text-info"></i> Started
                                        <i class="fa fa-circle text-warning"></i> In Progress
                                        <i class="fa fa-circle text-danger"></i> Stopped
                                        
                                    </div>
                                    <hr>
                                    <div class="stats">
                                        <i class="fa fa-clock-o"></i> Campaign sent 2 days ago
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

    
                </div>




            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; 2016 <a href="#">Varun Goyal</a>, made with love for a better web
                </p>
            </div>
        </footer>

    </div>
</div>

</body>

   <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>

    <!--   Core JS Files   -->
    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="js/bootstrap-checkbox-radio-switch.js"></script>

	<!--  Charts Plugin -->
	<script src="js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="js/demo.js"></script>

	<script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();

        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "Welcome to <b>Light Bootstrap Dashboard</b> - a beautiful freebie for every web developer."

            },{
                type: 'info',
                timer: 4000
            });

    	});
	</script>

</html>