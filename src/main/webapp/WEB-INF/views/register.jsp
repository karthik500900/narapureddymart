<!DOCTYPE html>
<html>
<head>
    <title>NARAPUREDDYMART | Join Us</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Poppins', sans-serif; background: linear-gradient(135deg, #1b4332 0%, #2d6a4f 100%); height: 100vh; display: flex; align-items: center; justify-content: center; margin: 0; }
        .auth-card { background: white; padding: 40px; border-radius: 15px; box-shadow: 0 15px 35px rgba(0,0,0,0.3); width: 380px; text-align: center; }
        .logo { font-size: 26px; font-weight: 800; color: #1b4332; margin-bottom: 20px; }
        .logo span { color: #2d6a4f; border: 2px solid #2d6a4f; padding: 2px 8px; border-radius: 5px; margin-right: 5px; }
        
        input { width: 100%; padding: 12px; margin: 8px 0; border: 1px solid #ddd; border-radius: 8px; box-sizing: border-box; font-family: inherit; }
        button { width: 100%; padding: 14px; border: none; background: #2d6a4f; color: white; font-weight: 600; border-radius: 8px; cursor: pointer; transition: 0.3s; margin-top: 15px; }
        button:hover { background: #1b4332; }
        
        .toggle-text { margin-top: 20px; font-size: 14px; color: #666; }
        .toggle-link { color: #2d6a4f; text-decoration: none; font-weight: 600; cursor: pointer; }
        .error { color: red; font-size: 13px; margin-bottom: 10px; }
    </style>
</head>
<body>

    <div class="auth-card">
        <div class="logo"><span>N</span> NARAPUREDDYMART</div>

        <!-- REGISTRATION FORM SECTION -->
        <div id="signup-section">
            <h3>Create Account</h3>
            <form action="registerUser" method="POST">
                <input type="text" name="name" placeholder="Full Name" required>
                <input type="email" name="email" placeholder="Email Address" required>
                <input type="password" name="password" placeholder="Create Password" required>
                <input type="text" name="phone" placeholder="Phone Number" required>
                <button type="submit">Sign Up</button>
            </form>
            <div class="toggle-text">
                Already a member? <span class="toggle-link" onclick="showLogin()">Login here</span>
            </div>
        </div>

        <!-- LOGIN FORM SECTION (Hidden by default) -->
        <div id="login-section" style="display: none;">
            <h3>Welcome Back</h3>
            <form action="loginProcess" method="POST">
                <input type="email" name="email" placeholder="Email Address" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit">Login</button>
            </form>
            <div class="toggle-text">
                New to Mart? <span class="toggle-link" onclick="showSignup()">Create an account</span>
            </div>
        </div>
    </div>

    <script>
        function showLogin() {
            document.getElementById('signup-section').style.display = 'none';
            document.getElementById('login-section').style.display = 'block';
        }
        function showSignup() {
            document.getElementById('signup-section').style.display = 'block';
            document.getElementById('login-section').style.display = 'none';
        }
    </script>
</body>
</html>