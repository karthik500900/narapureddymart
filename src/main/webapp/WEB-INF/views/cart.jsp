<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>NaraMart | Your Cart</title>
    <style>
        body { font-family: sans-serif; background: #f4f7f4; padding: 50px; text-align: center; }
        .cart-container { background: white; max-width: 600px; margin: auto; padding: 30px; border-radius: 10px; box-shadow: 0 5px 15px rgba(0,0,0,0.1); }
        .cart-item { display: flex; justify-content: space-between; padding: 10px; border-bottom: 1px solid #eee; }
        .total { font-size: 22px; font-weight: bold; margin-top: 20px; color: #1b4332; }
        .btn { padding: 10px 20px; background: #2d6a4f; color: white; text-decoration: none; border-radius: 5px; display: inline-block; margin-top: 20px; }
    </style>
</head>
<body>
    <div class="cart-container">
        <h2>Your Shopping Cart</h2>
        <div id="cart-list">
            <!-- Items will show up here -->
        </div>
        <div class="total" id="total-price">Total: &#8377; 0</div>
        <a href="categories" class="btn">Add More Milk</a>
        <a href="#" class="btn" onclick="clearCart()" style="background: #8b0000;">Clear Cart</a>
    </div>

    <script>
        let cart = JSON.parse(localStorage.getItem('naraCart')) || [];
        let list = document.getElementById('cart-list');
        let total = 0;

        if(cart.length === 0) {
            list.innerHTML = "<p>Your cart is empty.</p>";
        } else {
            cart.forEach(item => {
                list.innerHTML += `<div class='cart-item'><span>${item.name}</span> <span>&#8377; ${item.price}</span></div>`;
                total += item.price;
            });
            document.getElementById('total-price').innerHTML = "Total: &#8377; " + total;
        }

        function clearCart() {
            localStorage.removeItem('naraCart');
            location.reload();
        }
    </script>
</body>
</html>