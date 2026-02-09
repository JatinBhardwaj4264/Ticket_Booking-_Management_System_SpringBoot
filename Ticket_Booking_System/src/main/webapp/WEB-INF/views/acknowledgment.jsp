<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Acknowledgment</title>
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

        .ack-box {
            position: relative;
            z-index: 2;
            background-color: #c8e6c9;
            padding: 60px;
            border-radius: 16px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.25);
            text-align: center;
            width: 500px;
            margin: 0 auto;
            top: 20%;
        }

        .ack-box h2 {
            margin-bottom: 30px;
            font-size: 2.5em;
            color: #1b5e20;
        }

        .ack-box p {
            margin-bottom: 20px;
            font-size: 1.5em;
            color: #2e7d32;
        }

        .ack-box a {
            text-decoration: none;
            color: white;
            background-color: #43a047;
            padding: 15px 30px;
            font-size: 1.2em;
            border-radius: 10px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .ack-box a:hover {
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

    <div class="ack-box">
        <h2>Booking ${status}</h2>
        <p>Your Booking ID: ${id}</p>
        <a href="/view?id=${id}">View Your Booking</a>
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
