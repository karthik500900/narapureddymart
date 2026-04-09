<script>
    let cart = JSON.parse(localStorage.getItem('naraCart')) || [];
    let list = document.getElementById('cart-list');
    let total = 0;

    // Display Items
    if(cart.length === 0) {
        list.innerHTML = "<p>Your cart is empty.</p>";
    } else {
        cart.forEach(item => {
            list.innerHTML += `<div class='cart-item'><span>${item.name}</span> <span>Rs. ${item.price}</span></div>`;
            total += item.price;
        });
        document.getElementById('total-price').innerHTML = "Total: Rs. " + total;
    }

    // THE CHECKOUT FUNCTION
    async function placeOrder() {
        if(cart.length === 0) {
            alert("Cart is empty!");
            return;
        }

        for (let item of cart) {
            // We send each item to the Java backend
            await fetch('checkout', {
                method: 'POST',
                headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                body: `productName=${item.name}&price=${item.price}`
            });
        }

        alert("NARAPUREDDYMART: Order Placed Successfully!");
        localStorage.removeItem('naraCart'); // Clear cart after ordering
        window.location.href = "categories"; // Go back to shop
    }
</script>

<!-- Add this button in your HTML part of cart.jsp -->
<button onclick="placeOrder()" class="btn" style="background: #2d6a4f; margin-top: 10px;">Confirm & Place Order</button>