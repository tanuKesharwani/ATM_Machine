<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #5a89ad;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #212324;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
        .l1{
        color: white;
        }
    </style>
</head>
<body>
   <div class="login-container">
   <h1 class="text-center">User Login Page</h1>
        <form action="login_process.jsp" method="POST">
            <label for="userName">Name:</label><br>
            <input type="text" id="userName" name="userName"/><br/><br/>
            <label for="userPass">Password:</label><br>
            <input type="password" id="userPass" name="userPass"/><br/><br/>
            <input type="submit" value="Login"/>
        </form>
        <a href="ForgetPassword.jsp" class="l1">Forget Password</a>
    </div>
    
    </body>
</html>