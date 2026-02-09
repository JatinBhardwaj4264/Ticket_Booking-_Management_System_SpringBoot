<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Select Destination</title>
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
            text-align: center;
            width: 500px;
            margin: 0 auto;
            top: 15%;
        }

        .form-box h2 {
            margin-bottom: 30px;
            font-size: 2.5em;
            color: #1b5e20;
        }

        .form-box select,
        .form-box input[type="submit"] {
            font-size: 1.2em;
            padding: 10px 20px;
            margin-top: 20px;
            border-radius: 8px;
            border: none;
            outline: none;
        }

        .form-box select {
            background-color: #a5d6a7;
            color: #1b5e20;
        }

        .form-box input[type="submit"] {
            background-color: #43a047;
            color: white;
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
			border-radius: 20px;
            background: #66bb6a;
            animation: rise 12s linear infinite;
            opacity: 0.5;
            z-index: 1;
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
        <h2>Select Your Destination</h2>
        <form action="/summary" method="post">
            <input type="hidden" name="mode" value="${mode}" />
            <input type="hidden" name="name" value="${name}" />
            <input type="hidden" name="email" value="${email}" />
            <input type="hidden" name="phone" value="${phone}" />
            <input type="hidden" name="address" value="${address}" />
            <input type="hidden" name="dob" value="${dob}" />
            <label for="destination">Destination:</label><br/>
            <select name="destination" id="destination">
                <option value="Delhi">Delhi</option>
                <option value="Mumbai">Mumbai</option>
                <option value="Chennai">Chennai</option>
            </select><br/>
            <input type="submit" value="Next" />
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
