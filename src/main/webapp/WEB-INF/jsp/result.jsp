<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
   <head>
      <title>Spring MVC Form Handling</title>
   </head>
   <body>
	<%
		String name = request.getParameter("userName");
		String pass = request.getParameter("password");
		
	
		if(name.equals("admin") && pass.equals("123") ){

			out.print("<h1>login success</h1>");
		}else{
			out.print("<h1>login faill</h1>");
		}
	%>
    
      <!--  <table>
         <tr>
            <td>Username</td>          
            <td>${userName}</td>
         </tr>
         <tr>
            <td>Password</td>
            <td>${password}</td>
         </tr> 
      </table> 
      -->
    	  
           
     
           
          
      
       
      	
   </body>
</html>