<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Forgot Password</title>
</head>
<body>
    <h2>Forgot Password</h2>
    <p>Enter your email address to receive a password reset link.</p>
    
    <form action="processForgotPassword" method="post">
        Email: <input type="email" name="email" required><br><br>
        <input type="submit" value="Send Reset Link">
    </form>
    
    <br>
    <a href="login">Back to Login</a>
</body>
</html>