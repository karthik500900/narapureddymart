<!DOCTYPE html>
<html>
<head>
    <title>NarapureddyMart | Edit Profile</title>
    <style>
        body { font-family: sans-serif; background: #f9fbf9; display: flex; justify-content: center; padding: 50px; }
        .profile-box { background: white; padding: 30px; border-radius: 10px; box-shadow: 0 5px 15px rgba(0,0,0,0.1); width: 400px; }
        h2 { color: #1b4332; }
        input { width: 100%; padding: 10px; margin: 10px 0; box-sizing: border-box; }
        button { background: #2d6a4f; color: white; border: none; padding: 12px; width: 100%; border-radius: 5px; cursor: pointer; }
    </style>
</head>
<body>
    <div class="profile-box">
        <h2>Edit Your Profile</h2>
        <form action="updateProfile" method="POST">
            <label>Full Name</label>
            <input type="text" name="name" value="${loggedInUser.name}">
            <label>Email (Cannot change)</label>
            <input type="email" name="email" value="${loggedInUser.email}" disabled>
            <label>Phone Number</label>
            <input type="text" name="phone" value="${loggedInUser.phone}">
            <button type="submit">Save Changes</button>
        </form>
        <br>
        <a href="categories">Back to Shop</a>
    </div>
</body>
</html>