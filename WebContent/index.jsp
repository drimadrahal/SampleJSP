<%@page language="java" import="java.util.*"%>
<html>
<head>
<title>Sample Login Page</title>
</head>
<body>
<form method="post" action="login_action.jsp">
	    Username <input name="Username"><br>
	    Password<input name="Password" type="password"><br>
	    <input value="Login" type="submit"> 
	    <input value="Reset" type="reset"><br>
	</form><br>
<br>

<%
	String anyErrors = request.getParameter("Error");
    if(anyErrors!=null && anyErrors.equals("1")){
    	out.println("PLEASE PROVIDE A VALID USERNAME AND PASSWORD<br>");
    }
    Map<String,String[]> params = request.getParameterMap();
    for(String key: params.keySet()){
    	out.print(key + " = " + request.getParameter(key) + "<br>");
    }
%>

	
	</body>
	</html>

