<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Booking</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #e0f7e9;
            overflow: hidden;
            position: relative;
            height: 100vh;
        }

        .form-box {
            position: relative;
            z-index: 2;
            background-color: #c8e6c9;
            padding: 60px;
            border-radius: 16px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.25);
            text-align: left;
            width: 600px;
            margin: 0 auto;
            top: 10%;
        }

        .form-box h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 2.5em;
            color: #1b5e20;
        }

        .form-box label {
            display: block;
            margin-top: 20px;
            font-size: 1.2em;
            color: #2e7d32;
        }

        .form-box input[type="text"],
        .form-box input[type="email"],
        .form-box input[type="date"],
        .form-box select {
            width: 100%;
            padding: 10px;
            font-size: 1.1em;
            margin-top: 5px;
            border-radius: 8px;
            border: 1px solid #a5d6a7;
            background-color: #f1f8e9;
        }

        .form-box input[type="submit"] {
            margin-top: 30px;
            background-color: #43a047;
            color: white;
            padding: 15px 30px;
            font-size: 1.2em;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-box input[type="submit"]:hover {
            background-color: #2e7d32;
        }

        .cube {
            position: absolute;
            bottom: -80px;
            width: 100px;
            height: 100px;
            background: #66bb6a;
            animation: rise 12s linear infinite;
            opacity: 0.5;
            z-index: 1;
			border-radius: 20px;
        }

        @keyframes rise {
            0% {
                transform: translateY(0) rotate(0deg);
            }
            100% {
                transform: translateY(-120vh) rotate(360deg);
            }
        }
    </style>
</head>
<body>

    <div class="form-box">
        <h2>Edit Your Booking</h2>
        <form action="/update" method="post">
            <input type="hidden" name="id" value="${booking.id}" />

            <label for="name">Name:</label>
            <input type="text" name="name" value="${booking.name}" />

            <label for="email">Email:</label>
            <input type="email" name="email" value="${booking.email}" />

            <label for="phone">Phone:</label>
            <input type="text" name="phone" value="${booking.phone}" />

            <label for="address">Address:</label>
            <input type="text" name="address" value="${booking.address}" />

            <label for="dob">DOB:</label>
            <input type="date" name="dob" value="${booking.dob}" />

            <label for="destination">Destination:</label>
            <select name="destination">
                <option value="Delhi" ${booking.destination == 'Delhi' ? 'selected' : ''}>Delhi</option>
                <option value="Mumbai" ${booking.destination == 'Mumbai' ? 'selected' : ''}>Mumbai</option>
                <option value="Chennai" ${booking.destination == 'Chennai' ? 'selected' : ''}>Chennai</option>
            </select>

            <input type="submit" value="Update" />
        </form>
    </div>

    <!-- Animated cubes -->
    <script>
        for (let i = 0; i < 20; i++) {
            const cube = document.createElement('div');
            cube.className = 'cube';
            cube.style.left = Math.random() * window.innerWidth + 'px';
            cube.style.animationDuration = (6 + Math.random() * 6) + 's';
            cube.style.backgroundColor = `rgba(76, 175, 80, ${Math.random()})`;
            document.body.appendChild(cube);
        }
    </script>

</body>
</html>
