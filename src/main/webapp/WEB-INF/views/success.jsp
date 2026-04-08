<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful!</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f7f6;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            overflow: hidden;
        }

        .success-card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 450px;
            width: 90%;
            animation: slideUp 0.8s ease-out;
        }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(50px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .icon-circle {
            width: 80px;
            height: 80px;
            background: #4BB543;
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 40px;
            margin: 0 auto 20px;
            box-shadow: 0 4px 15px rgba(75, 181, 67, 0.4);
        }

        h1 { color: #333; margin-bottom: 10px; }
        p { color: #666; line-height: 1.6; }

        .reward-badge {
            display: inline-block;
            background: #FFD700;
            color: #8B4513;
            padding: 5px 15px;
            border-radius: 20px;
            font-weight: 600;
            font-size: 14px;
            margin: 15px 0;
            border: 2px solid #DAA520;
        }

        .btn-login {
            display: inline-block;
            margin-top: 25px;
            padding: 12px 35px;
            background: #4A90E2;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(74, 144, 226, 0.3);
        }

        .btn-login:hover {
            background: #357ABD;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(74, 144, 226, 0.4);
        }
    </style>
</head>
<body>

    <div class="success-card">
        <div class="icon-circle">
            <i class="fas fa-check"></i>
        </div>
        
        <!-- Displays the name sent from RegisterController -->
        <h1>Welcome, ${userName}!</h1>
        
        <div class="reward-badge">
            <i class="fas fa-medal"></i> New Member Badge Unlocked
        </div>
        
        <p>Your account has been successfully created. We're excited to have you in our community!</p>
        
        <!-- Points to your Login page -->
        <a href="${pageContext.request.contextPath}/login" class="btn-login">
            <i class="fas fa-sign-in-alt"></i> Get Started (Login)
        </a>
    </div>

    <!-- Canvas Confetti Library -->
    <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.5.1/dist/confetti.browser.min.js"></script>
    <script>
        window.onload = function() {
            var duration = 3 * 1000;
            var end = Date.now() + duration;
            (function frame() {
              confetti({ particleCount: 3, angle: 60, spread: 55, origin: { x: 0 }, colors: ['#4BB543', '#4A90E2', '#FFD700'] });
              confetti({ particleCount: 3, angle: 120, spread: 55, origin: { x: 1 }, colors: ['#4BB543', '#4A90E2', '#FFD700'] });
              if (Date.now() < end) requestAnimationFrame(frame);
            }());
        };
    </script>
</body>
</html>