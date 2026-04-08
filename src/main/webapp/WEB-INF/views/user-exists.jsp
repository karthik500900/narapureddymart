<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Error</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding: 50px; background: #fdf2f2; }
        .error-card { background: white; padding: 30px; border-radius: 10px; display: inline-block; box-shadow: 0 4px 10px rgba(0,0,0,0.1); }
        h1 { color: #d9534f; }
        .btn { display: inline-block; padding: 10px 20px; background: #5bc0de; color: white; text-decoration: none; border-radius: 5px; margin-top: 20px; font-weight: bold; }
        .btn:hover { background: #31b0d5; }
    </style>
</head>
<body>
    <div class="error-card">
        <h1>User Already Exists!</h1>
        <p>The email address you entered is already registered in our system.</p>
        
        <!-- This button redirects the user back to the register page -->
        <a href="register" class="btn">Click here to Register with a different Email</a>
    </div>
</body>
</html>