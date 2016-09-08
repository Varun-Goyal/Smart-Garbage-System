<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>

<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">
        
</head>
<body>

<%@ page import = "splash.UserRegistration" %>


          <% 
              String firstName = request.getParameter("firstname");
        	  String lastName = request.getParameter("lastname");
        	  String emailAddress = request.getParameter("emailaddress");
        	  String password = request.getParameter("userpassword");
          
        	  session.putValue("userid", firstName);
        	  
              UserRegistration registration = new UserRegistration();
        	  int i = registration.register(firstName, lastName, emailAddress, password);
        		  
        	  if(i == 1)
        	  {
        		  out.println("<center><H2>Registration Successful</H2></center>");
        	  }
        	  else
        	  {
        		  out.println("<center><H2>Registration Failed: Please try again</H2></center>");
        		  
        	  }
          %>



<center><H2><a href = "Login.jsp" style="color: #000000"> Login</a></H2></center>

</body>
</html>