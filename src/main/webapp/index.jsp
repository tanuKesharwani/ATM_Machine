<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>Registration</title>

 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #5a89ad;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="password"] {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #007bff;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color:#212324;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            text-decoration: none;
            color: #007bff;
            text-align: center;
            margin-top: 10px;
        }
        .linked{
       
       color: white;
        }
    </style>
</head>
<body>
 <div class="container">
        <h2>User Registration</h2>
        <form action="RegistrationServ" method="post">
            <label for="userName">Name:</label>
            <input type="text" id="userName" name="userName" required>

            <label for="userPass">Password:</label>
            <input type="password" id="userPass" name="userPass" required>

            <label for="userEmail">Email Id:</label>
            <input type="text" id="userEmail" name="userEmail" required>

            <label for="contact">Mobile No:</label>
            <input type="text" id="contact" name="contact" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>

            <label for="security">What is your school name:</label>
            <input type="text" id="security" name="security" required>

            <input type="submit" value="Register"><br>
           
        </form>
        <a href="login.jsp" class="linked">Aready registered? then..Login</a>
    </div>
</body>
</html>