<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>For My Valentine ❤️</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background: linear-gradient(135deg, #ff4e50, #f9d423);
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }

        .card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 20px 50px rgba(0,0,0,0.3);
            animation: fadeIn 2s ease;
            max-width: 500px;
        }

        h1 {
            color: #ff4e50;
            font-size: 36px;
        }

        p {
            font-size: 18px;
            color: #333;
            line-height: 1.6;
        }

        .heart {
            font-size: 60px;
            animation: heartbeat 1.5s infinite;
        }

        button {
            margin-top: 20px;
            padding: 12px 30px;
            font-size: 18px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            background: #ff4e50;
            color: white;
            transition: transform 0.3s, background 0.3s;
        }

        button:hover {
            background: #e84343;
            transform: scale(1.1);
        }

        #response {
            margin-top: 20px;
            font-size: 22px;
            color: #ff4e50;
            display: none;
        }

        @keyframes heartbeat {
            0% { transform: scale(1); }
            50% { transform: scale(1.2); }
            100% { transform: scale(1); }
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(40px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Floating hearts */
        .floating-heart {
            position: absolute;
            color: rgba(255,255,255,0.7);
            font-size: 20px;
            animation: floatUp 6s linear infinite;
        }

        @keyframes floatUp {
            from {
                transform: translateY(100vh) scale(1);
                opacity: 1;
            }
            to {
                transform: translateY(-10vh) scale(1.5);
                opacity: 0;
            }
        }
    </style>

    <script>
        function sayYes() {
            document.getElementById("response").style.display = "block";
        }

        function createHeart() {
            const heart = document.createElement("div");
            heart.className = "floating-heart";
            heart.innerHTML = "❤️";
            heart.style.left = Math.random() * 100 + "vw";
            heart.style.animationDuration = (Math.random() * 3 + 3) + "s";
            document.body.appendChild(heart);

            setTimeout(() => {
                heart.remove();
            }, 6000);
        }

        setInterval(createHeart, 400);
    </script>
</head>

<body>

<div class="card">
    <div class="heart">❤️</div>
    <h1>My Love</h1>

    <p>
        From the moment you came into my life,<br>
        everything became brighter, warmer, and more beautiful.<br><br>
        I don’t need a special day to love you,<br>
        but today I want to ask you something special…
    </p>

    <h2>Will you be my Valentine? 💍</h2>

    <button onclick="sayYes()">YES ❤️</button>

    <div id="response">
        You just made me the happiest person alive 💖<br>
        I love you forever!
    </div>
</div>

</body>
</html>

