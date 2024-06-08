<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ATM Home Page</title>
   <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 80%;
            max-width: 800px;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color:#5a89ad;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .options-container {
            display: flex;
            justify-content: space-between;
            width: 100%;
            margin-bottom: 20px;
        }
        .options {
            display: flex;
            flex-direction: column;
        }
        .option {
            margin: 5px 0;
            padding: 10px 20px;
            background-color: #212324;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .option:hover {
            background-color: #0056b3;
        }
        .keyboard-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .keyboard {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 5px;
            margin-bottom: 20px;
        }
        .key {
            padding: 10px 20px;
            background-color: #212324;
            color:white;
            text-align: center;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .key:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
 <div class="container">
        <h1>Welcome to the ATM</h1>
        <div class="options-container">
            <div class="options">
                <a href="#" class="option">Add Money</a>
                <a href="#" class="option">Withdraw Money</a>
                <a href="#" class="option">Check Balance</a>
            </div>
            <input type="text" id="input-screen" readonly style="width: 200px; text-align: center;">
            <div class="options">
                <a href="#" class="option">Transfer Money</a>
                <a href="#" class="option">Change Pin</a>
                <a href="#" class="option">UPI Transaction</a>
            </div>
        </div>
        <div class="keyboard-container">
            <div class="keyboard">
                <div class="key" onclick="appendToScreen('1')">1</div>
                <div class="key" onclick="appendToScreen('2')">2</div>
                <div class="key" onclick="appendToScreen('3')">3</div>
                <div class="key" onclick="appendToScreen('4')">4</div>
                <div class="key" onclick="appendToScreen('5')">5</div>
                <div class="key" onclick="appendToScreen('6')">6</div>
                <div class="key" onclick="appendToScreen('7')">7</div>
                <div class="key" onclick="appendToScreen('8')">8</div>
                <div class="key" onclick="appendToScreen('9')">9</div>
                <div class="key" onclick="appendToScreen('0')">0</div>
                <div class="key" onclick="clearScreen()">Clear</div>
                <div class="key" onclick="backspace()">Backspace</div>
            </div>
        </div>
    </div>

    <script>
        function appendToScreen(value) {
            document.getElementById("input-screen").value += value;
        }

        function clearScreen() {
            document.getElementById("input-screen").value = "";
        }

        function backspace() {
            var inputScreen = document.getElementById("input-screen");
            inputScreen.value = inputScreen.value.slice(0, -1);
        }
    </script>




</body>
</html>