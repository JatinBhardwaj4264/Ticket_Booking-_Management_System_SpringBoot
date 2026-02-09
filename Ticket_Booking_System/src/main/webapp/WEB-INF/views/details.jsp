<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Enter Details</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #d4edda, #a9dfbf);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            text-align: left;
            width: 400px;
        }

        h2 {
            color: #2e7d32;
            text-align: center;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .btn {
            margin-top: 20px;
            width: 100%;
            padding: 12px;
            background-color: #4caf50;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #388e3c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Enter Your Details for <c:out value="${mode}" /></h2>
        <form action="/destination" method="post">
            <input type="hidden" name="mode" value="${mode}" />
            <label>Name:</label>
            <input type="text" name="name" required />

            <label>Email:</label>
            <input type="email" name="email" required />

            <label>Phone:</label>
            <input type="text" name="phone" required />

            <label>Address:</label>
            <input type="text" name="address" required />

            <label>Date of Birth:</label>
            <input type="date" name="dob" required />

            <button type="submit" class="btn">Next</button>
        </form>
    </div>
</body>
</html>
