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
            position: relative;
            background: white;
            padding: 50px 40px;
            border-radius: 25px;
            text-align: center;
            box-shadow: 0 20px 50px rgba(0,0,0,0.3);
            animation: fadeIn 2s ease;
            max-width: 500px;
        }

        h1 {
            color: #ff4e50;
            font-size: 38px;
            animation: glowText 2s ease-in-out infinite alternate;
        }

        h2 {
            font-size: 26px;
            color: #e84343;
            margin-top: 20px;
            animation: glowText 3s ease-in-out infinite alternate;
        }

        p {
            font-size: 18px;
            color: #333;
            line-height: 1.6;
        }

        .heart {
            font-size: 70px;
            animation: heartbeat 1.5s infinite;
        }

        button {
            position: absolute;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%);
            padding: 14px 35px;
            font-size: 20px;
            border: none;
            border-radius: 35px;
            cursor: pointer;
            background: #ff4e50;
            color: white;
            transition: transform 0.3s, background 0.3s, box-shadow 0.3s;
            box-shadow: 0 0 10px #ff4e50, 0 0 20px #ff4e50;
            animation: shineButton 2s infinite alternate;
        }

        button:hover {
            background: #e84343;
            transform: scale(1.2);
            box-shadow: 0 0 15px #ff6b6b, 0 0 25px #ff6b6b;
        }

        #response {
            margin-top: 20px;
            font-size: 22px;
            color: #ff4e50;
            display: none;
            animation: fadeIn 2s ease;
        }

        /* Animations */
        @keyframes heartbeat {
            0% { transform: scale(1); }
            50% { transform: scale(1.25); }
            100% { transform: scale(1); }
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(40px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes glowText {
            from { text-shadow: 0 0 5px #ff6b6b, 0 0 10px #ff6b6b; }
            to { text-shadow: 0 0 15px #ff4e50, 0 0 25px #ff4e50; }
        }

        @keyframes shineButton {
            from { box-shadow: 0 0 10px #ff4e50, 0 0 20px #ff4e50; }
            to { box-shadow: 0 0 20px #ff6b6b, 0 0 30px #ff6b6b; }
        }

        /* Floating hearts and letters */
        .floating-heart, .floating-letter {
            position: absolute;
            font-size: 20px;
            animation: floatUp 6s linear infinite;
        }

        .floating-letter {
            font-size: 24px;
            color: #ff6b6b;
        }

        @keyframes floatUp {
            from { transform: translateY(100vh) scale(1); opacity: 1; }
            to { transform: translateY(-10vh) scale(1.5); opacity: 0; }
        }

        /* Sparkles */
        .sparkle {
            position: absolute;
            width: 5px;
            height: 5px;
            background: #fff;
            border-radius: 50%;
            opacity: 0.8;
            animation: sparkleAnim 2s linear infinite;
        }

        @keyframes sparkleAnim {
            0% { transform: translateY(0) scale(1); opacity: 0.8; }
            50% { transform: translateY(-5px) scale(1.5); opacity: 1; }
            100% { transform: translateY(0) scale(1); opacity: 0.8; }
        }
    </style>

    <script>
        function sayYes() {
            document.getElementById("response").style.display = "block";
        }

        // Floating hearts and letters
        function createFloating() {
            const isHeart = Math.random() > 0.5;
            const elem = document.createElement("div");
            elem.className = isHeart ? "floating-heart" : "floating-letter";
            elem.innerHTML = isHeart ? "❤️" : "💌";
            elem.style.left = Math.random() * 100 + "vw";
            elem.style.animationDuration = (Math.random() * 3 + 4) + "s";
            document.body.appendChild(elem);
            setTimeout(() => elem.remove(), 7000);
        }
        setInterval(createFloating, 400);

        // Sparkles
        for(let i=0; i<30; i++){
            const sparkle = document.createElement("div");
            sparkle.className = "sparkle";
            sparkle.style.left = Math.random() * 100 + "vw";
            sparkle.style.top = Math.random() * 100 + "vh";
            sparkle.style.animationDuration = (Math.random() * 3 + 1) + "s";
            document.body.appendChild(sparkle);
        }

        // Movable YES button
        document.addEventListener("DOMContentLoaded", function() {
            const button = document.querySelector("button");
            const card = document.querySelector(".card");

            card.addEventListener("mousemove", function(e) {
                const rect = button.getBoundingClientRect();
                const mouseX = e.clientX;
                const mouseY = e.clientY;

                const distanceX = Math.abs(mouseX - (rect.left + rect.width / 2));
                const distanceY = Math.abs(mouseY - (rect.top + rect.height / 2));
                const threshold = 90;

                if(distanceX < threshold && distanceY < threshold) {
                    const cardRect = card.getBoundingClientRect();
                    const maxX = cardRect.width - rect.width - 20;
                    const maxY = cardRect.height - rect.height - 20;

                    const newX = Math.random() * maxX;
                    const newY = Math.random() * maxY;

                    button.style.left = newX + "px";
                    button.style.top = newY + "px";
                    button.style.transform = "translate(0,0)";
                }
            });
        });
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

