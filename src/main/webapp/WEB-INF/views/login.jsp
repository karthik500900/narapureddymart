<!DOCTYPE html>
<html>
<head>
    <title>NARAPUREDDYMART | Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Poppins', sans-serif; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); height: 100vh; display: flex; align-items: center; justify-content: center; margin: 0; }
        .login-card { background: white; padding: 40px; border-radius: 15px; box-shadow: 0 15px 35px rgba(0,0,0,0.2); width: 350px; text-align: center; }
        
        /* LOGO STYLING */
        .logo { font-size: 28px; font-weight: 800; color: #764ba2; margin-bottom: 20px; display: flex; align-items: center; justify-content: center; gap: 10px; }
        .logo-icon { background: #764ba2; color: white; padding: 5px 12px; border-radius: 8px; font-style: italic; }
        
        input { width: 100%; padding: 12px; margin: 10px 0; border: 1px solid #ddd; border-radius: 8px; box-sizing: border-box; }
        button { width: 100%; padding: 12px; border: none; background: #764ba2; color: white; font-weight: 600; border-radius: 8px; cursor: pointer; transition: 0.3s; margin-top: 10px; }
        button:hover { background: #5a3782; }
        .links { margin-top: 20px; font-size: 14px; }
        a { color: #764ba2; text-decoration: none; font-weight: 600; }
        .error { color: red; font-size: 13px; margin-bottom: 10px; }
    </style>
</head>
<body>

    <div class="login-card">
        <!-- THE LOGO -->
        <div class="logo">
            <span class="logo-icon">N</span> NARAPUREDDYMART
        </div>

        <div id="login-section">
            <p class="error">${error}</p>
            <form action="loginProcess" method="POST">
                <input type="email" name="email" placeholder="Email Address" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit">Log In</button>
            </form>
            <div class="links">
                <a href="javascript:void(0)" onclick="showResetForm()">Forgot Password?</a> <br><br>
                <span>New here? <a href="/store/register">Register</a></span>
            </div>
        </div>

        <div id="reset-section" style="display: none;">
            <h3>Reset Password</h3>
            <form action="reset-password" method="POST">
                <input type="email" name="email" placeholder="Confirm Email" required>
                <input type="password" name="newPassword" placeholder="New Password" required>
                <button type="submit">Update Password</button>
            </form>
            <div class="links">
                <a href="javascript:void(0)" onclick="showLoginForm()">Back to Login</a>
            </div>
        </div>
    </div>

    <script>
        function showResetForm() {
            document.getElementById('login-section').style.display = 'none';
            document.getElementById('reset-section').style.display = 'block';
        }
        function showLoginForm() {
            document.getElementById('login-section').style.display = 'block';
            document.getElementById('reset-section').style.display = 'none';
        }
    </script>
</body>
</html>