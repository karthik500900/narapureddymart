<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>



<h2>Register</h2>

<p style="color:red; font-weight:bold;">${error}</p>

<form:form action="register" method="post" modelAttribute="user">



    Name: <form:input path="name"/><br><br>



    Email: <form:input path="email"/><br><br>



    Password: <form:password path="password"/><br><br>



    Phone: <form:input path="phone"/><br><br>



    <input type="submit" value="Register"/>




</form:form>