<%@ page session="true" %>
<html>
   <head>
      <title>Home page</title>
   </head>

   <body>
      <h2>Home Page!!!</h2>
      
      <c:if test = "${username!=null}">
      	Welcome ${username}
      </c:if>
   </body>
</html> 