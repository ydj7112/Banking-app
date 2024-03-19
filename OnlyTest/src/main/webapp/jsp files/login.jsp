<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
       <link rel="stylesheet" href="dashboard/login.css">
       <link rel="stylesheet" href="dashboard/login.js">

</head>

<body>
    <form action="login" method="post">
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
                <%@include file="message.jsp" %>
                    <p class="Login">Login to NetBanking</p>
                    <label for="fname" class="fname">Application ID/UserId</label>
                    <input type="text" required id="fname" name="userid" placeholder="Application ID/UserId">
                    <br>
                    <a class="fgID" href="#"><label for="">Forget Customer ID?</label></a>
                    <br><br>
                    
                    <label for="fname1" class="OTP">Password</label>
                    <input type="password" required id="otp" name="password"  placeholder="Password">
                    <br>
                    <a class="fgID" href="#"><label for="">Forget Password?</label></a>
                    <br><br>
                    
                    
                    
                    
                    
                    
                    <a href="">
                        <button type="submit" class="continue">Continue</button>
                    </a>
                    <br>
                    <div class="note">
                        Dear Customer
                        <br>
                        Welcome to the login interface for Icode BankPro NetBanking services. We've designed its
                        appearance
                        to
                        offer you a more streamlined and user-friendly experience.
                        <br>
                        Please proceed with logging in by using your customer ID and password.
                    </div>
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
                <div class="B2">
                    <div class="txt">Your security is of utmost importance.
                        <br>
                        <a href=>"Know More..."</a>
                        <br>
                        <p style="margin-bottom:0 ;">First Time User?</p>
                        <p style="margin: 0;"><a href="">Register Now </a>for a host of convenient features</p>
                    </div>
                    <section class="ImgSlider">
                        <div class="slider-wrapper">
                            <div class="slider">
                                <img id="slide-1" src="images/texture.jpg" alt="Advertisement" />
                                <img id="slide-2" src="" alt="images/Advertisement" />
                                <img id="slide-3" src="" alt="imagesAdvertisement" />
                            </div>
                            <div class="slider-nav">
                                <a href="#slide-1"></a>
                                <a href="#slide-2"></a>
                                <a href="#slide-3"></a>
                            </div>
                        </div>
                    </section>
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
<body>

</body>
</html>