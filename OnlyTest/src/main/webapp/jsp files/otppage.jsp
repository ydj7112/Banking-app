<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/OTP1.css">
    
</head>

<body>
    <form action="otpconfirm" method="post">
        <main>
            <div class="container">
                <div class="icode">
                    <img src="images/Logo.jpg" alt="">
                </div>

                <br>
                <div class="heading">
                    <p style="margin: 0%; min-height: 2em;">Welcome to Icode BankPro NetBanking</p>
                </div>
            </div>
            <div class="box">
                <div class="B1">
                    <p class="Heading">OTP</p>
                    <div class="note">
                        Dear User, Please enter the One-Time Password(OTP) sent to your registered email address and mobile Number. 
                        <br>
                        This extra step is for your security
                    </div>
                    <%@include file="message.jsp" %>
                    
                    <label for="fname" class="OTP">OTP</label>
                    <input type="number" id="otp" class="input" name="enteredotp">
                    <br><br>
                    <button type="submit" class="continue">Continue</button>
                    <br>
                    <p class="DA" style="font: large;">Don't have a Account?</p>
                    <div class="options">
                        <span><a href="">Credit Card only? Login here</a></span>
                        <span><a href="">Home Loans? Login here</a></span>
                        <br>
                        <span><a href="">Deposits? Login here</a></span>
                        <span><a href="">Prepaid Card only? Login here
                            </a></span>

                    </div>
                </div>
            </div>
        </main>
    </form>
    <footer>
        <div>
            hi aishjaodhdhsuhvnsdaf
            <br>
            bhebadfa-border

        </div>
    </footer>
</body>

</html>