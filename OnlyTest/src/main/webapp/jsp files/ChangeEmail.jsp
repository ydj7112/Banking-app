<!DOCTYPE html>
<html>
<body>

<form action="ChangeEmail" method="get">

 <%@include file="message.jsp" %>
  <label for="username">Current Email: </label>
  <input type="email" id="curremail" name="curremail"><br>
  
  <label for="username">Enter new email: </label>
  <input type="email" id="newemail" name="newemail"><br>
  
  <input type="submit" value="Submit">
</form>

</body>
</html>
