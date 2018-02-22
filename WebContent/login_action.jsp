<%@page language="java" import="dblibrary.project.csci230.*, xyz.*"%>

<%  
 String u = request.getParameter("Username");
 String p = request.getParameter("Password");
 UniversityDBLibrary udb = new UniversityDBLibrary("Universities","monty","foo");
 String[][] users = udb.user_getUsers();
 boolean match =false;
 int i=-1;
 for(i=0;i<users.length;i++){
 	//out.println("Username = " + users[i][2] + " and Password = " + users[i][3] + " <br>");
    if(u.equals(users[i][2]) && p.equals(users[i][3])){
        match=true;
        break;
    }
 }
 if(match){
     if(users[i][4].equals("a")){
        out.println("Username = " + u + " and Password = " + p + " are valid credentials for a CMC ADMIN");
      }
     else{
        out.println("Username = " + u + " and Password = " + p + " are valid credentials for a CMC USER");
      }
 }
 else{
   response.sendRedirect("index.jsp?Error=1&AnotherParam=somevalue");
   }
  
 %>
  <%--//using the following instead will preserve the request object--%>
 <%-- jsp:forward page="index.jsp?Error=1&AnotherParam=somevalue"/>--%>
<%--}--%>

 

