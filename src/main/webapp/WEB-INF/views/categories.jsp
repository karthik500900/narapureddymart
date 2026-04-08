<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>NARAPUREDDYMART | Farm Fresh</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;800&family=Playfair+Display:ital,wght@1,600&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Poppins', sans-serif; margin: 0; background-color: #f0f4f0; color: #333; }
        
        /* BRANDING & NAVBAR */
        .navbar { background-color: #0b251e; color: white; padding: 20px 8%; position: sticky; top: 0; z-index: 100; box-shadow: 0 4px 15px rgba(0,0,0,0.3); }
        .header-content { display: flex; align-items: center; justify-content: space-between; }
        .logo { font-size: 32px; font-weight: 800; letter-spacing: 1.5px; margin: 0; }
        .logo span { color: #b7e4c7; }
        .quote { font-family: 'Playfair Display', serif; font-size: 14px; color: #b7e4c7; font-style: italic; margin-top: 5px; opacity: 0.9; }
        
        .nav-links a { color: white; text-decoration: none; margin-left: 20px; font-weight: 500; border: 1px solid rgba(255,255,255,0.2); padding: 8px 18px; border-radius: 5px; transition: 0.3s; }
        .nav-links a:hover { background: #2d6a4f; border-color: #b7e4c7; }
        
        .container { padding: 40px 8%; }
        .section-header { border-left: 6px solid #2d6a4f; padding-left: 15px; margin-bottom: 35px; }
        .section-header h2 { margin: 0; color: #1b4332; font-size: 30px; text-transform: uppercase; letter-spacing: 1px; }

        /* PRODUCT CARDS */
        .grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(280px, 1fr)); gap: 30px; margin-bottom: 60px; }
        .card { background: white; border-radius: 20px; padding: 20px; text-align: center; box-shadow: 0 10px 25px rgba(0,0,0,0.05); transition: 0.4s; border: 1px solid #e1e8e1; position: relative; overflow: hidden; }
        .card:hover { transform: translateY(-10px); box-shadow: 0 15px 35px rgba(0,0,0,0.15); }
        
        /* Fixed Images with Fallback Styling */
        .img-container { width: 100%; height: 220px; background-color: #e8f0e8; border-radius: 12px; margin-bottom: 15px; overflow: hidden; display: flex; align-items: center; justify-content: center; position: relative; }
        .card img { width: 100%; height: 100%; object-fit: cover; }
        
        .card h3 { font-size: 19px; color: #0b251e; margin: 10px 0; font-weight: 600; }
        .price { font-size: 26px; font-weight: 800; color: #2d6a4f; margin-bottom: 15px; }
        
        .add-btn { width: 100%; padding: 14px; border: none; background: #2d6a4f; color: white; border-radius: 10px; cursor: pointer; font-weight: 600; font-size: 15px; transition: 0.3s; }
        .add-btn:hover { background: #0b251e; transform: scale(1.02); }
        
        .badge { position: absolute; top: 15px; right: 15px; background: #ffd700; color: #000; font-size: 10px; font-weight: bold; padding: 5px 12px; border-radius: 20px; z-index: 2; }
    </style>
</head>
<body>

    <div class="navbar">
        <div class="header-content">
            <div>
                <div class="logo">NARAPUREDDY<span>MART</span></div>
                <div class="quote">"100% Pure & Untouched — Trust Built Through Purity in Every Drop."</div>
            </div>
            <div class="nav-links">
                <a href="edit-profile">Profile</a>
                <a href="cart">Cart (<span id="cart-count">0</span>)</a>
                <a href="logout">Logout</a>
            </div>
        </div>
    </div>

    <div class="container">
        
        <!-- SECTION 1: MILK -->
        <div class="section-header">
            <h2>Our Pure Animal Milk</h2>
        </div>
        <div class="grid">
            <div class="card">
                <span class="badge">WHITE GOLD</span>
                <div class="img-container">
                    <img src="https://images.pexels.com/photos/248412/pexels-photo-248412.jpeg?auto=compress&cs=tinysrgb&w=400" alt="Donkey Milk">
                </div>
                <h3>Medicinal Donkey Milk</h3>
                <div class="price">Rs. 5,000 /L</div>
                <button class="add-btn" onclick="addToCart('Donkey Milk', 5000)">Add to Cart</button>
            </div>

            <div class="card">
                <span class="badge">HEALTHY</span>
                <div class="img-container">
                    <img src="https://images.pexels.com/photos/594672/pexels-photo-594672.jpeg?auto=compress&cs=tinysrgb&w=400" alt="Gir Cow">
                </div>
                <h3>A2 Gir Cow Milk</h3>
                <div class="price">Rs. 120 /L</div>
                <button class="add-btn" onclick="addToCart('A2 Gir Cow Milk', 120)">Add to Cart</button>
            </div>

            <div class="card">
                <div class="img-container">
                    <img src="https://images.pexels.com/photos/1105166/pexels-photo-1105166.jpeg?auto=compress&cs=tinysrgb&w=400" alt="Buffalo Milk">
                </div>
                <h3>Creamy Buffalo Milk</h3>
                <div class="price">Rs. 95 /L</div>
                <button class="add-btn" onclick="addToCart('Buffalo Milk', 95)">Add to Cart</button>
            </div>
        </div>

        <!-- SECTION 2: MILK PRODUCTS -->
        <div class="section-header">
            <h2>Dairy Delights & Sweets</h2>
        </div>
        <div class="grid">
            <div class="card">
                <span class="badge">TRADITIONAL</span>
                <div class="img-container">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Palkova_Sweet.jpg/640px-Palkova_Sweet.jpg" alt="Palakova">
                </div>
                <h3>Jaggery Palakova</h3>
                <div class="price">Rs. 450 /kg</div>
                <button class="add-btn" onclick="addToCart('Jaggery Palakova', 450)">Add to Cart</button>
            </div>

            <div class="card">
                <div class="img-container">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Ghee_Bowl.jpg/640px-Ghee_Bowl.jpg" alt="Ghee">
                </div>
                <h3>Pure Desi Ghee</h3>
                <div class="price">Rs. 950 /L</div>
                <button class="add-btn" onclick="addToCart('Desi Ghee', 950)">Add to Cart</button>
            </div>

            <div class="card">
                <div class="img-container">
                    <!-- FIXED PANEER IMAGE -->
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Paneer_cubes.jpg/640px-Paneer_cubes.jpg" alt="Paneer">
                </div>
                <h3>Fresh Malai Paneer</h3>
                <div class="price">Rs. 420 /kg</div>
                <button class="add-btn" onclick="addToCart('Fresh Paneer', 420)">Add to Cart</button>
            </div>
        </div>
    </div>

    <script>
        // Cart Logic
        let cart = JSON.parse(localStorage.getItem('naraCart')) || [];
        updateCartCount();

        function addToCart(name, price) {
            cart.push({name: name, price: price});
            localStorage.setItem('naraCart', JSON.stringify(cart));
            updateCartCount();
            alert(name + " added to NARAPUREDDYMART successfully!");
        }

        function updateCartCount() {
            document.getElementById('cart-count').innerText = cart.length;
        }

        // Auto-fix broken images (if any)
        document.querySelectorAll('img').forEach(img => {
            img.onerror = function() {
                this.style.display = 'none';
                this.parentElement.innerHTML = '<span style="color:#2d6a4f; font-weight:bold;">NARAPUREDDY PURE PRODUCT</span>';
            };
        });
    </script>
</body>
</html>