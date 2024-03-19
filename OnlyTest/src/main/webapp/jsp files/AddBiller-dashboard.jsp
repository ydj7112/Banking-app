<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../dashboard/dashboard.css">
    <link rel="stylesheet" href="../dashboard/Button.css">
    <link rel="stylesheet" href="../dashboard/dropdown.css">
    <link rel="stylesheet" href="../dashboard/side-container.css">
    <link rel="stylesheet" href="../cssBillPay/center-container.css">
    <link rel="stylesheet" href="../dashboard/img-slider.css">
    <link rel="stylesheet" href="../dashboard/right-container.css">
    <link rel="stylesheet" href="../dashboard/footer.css">
    <link rel="stylesheet" href="../dashboard/update.css">
   
</head>


<body>
    <header>
        <nav>
            <form action="">
                <div class="icode">
                    <div class="icodeBankPro"><img src="../images/Logo.jpg" alt=""></div>
                    <div class="profile-icon">
                        <a href="UserProfile.jsp"><img src="../images/Login Icon (1).jpg"></a><span>Hi <%=session.getAttribute("name") %>...</span>
                    </div>
                    <div class="Log-Out">
                        <form action="../logout" method="post"></form>
                        <Button>Log Out</Button>
                    </form>
                    </div>
                </div>
                <div class="ul">
                    <ul>
                        <div class="dropdown">
                            <button type="submit" class="button"><a href="">Account</a></button>
                            <div class="content">
                                <a href="MainDashBoard.jsp">Account Overview</a>
                                <form action="../RecentTransac" method="get">
                                    <button type="submit"  class="recentview-trans">Recent Transactions</button>
                                </form>
                                <form action="../transhist" method="get">
                                    <button type="submit" class="recentview-trans">View Transaction
                                        History</button>
                                </form>
                            </div>
                        </div>
                        <hr>
                        <div class="billButton">
                            <form action="../GetDetails" method="post">
                                <button type="submit" class="button2">BillPay & Recharge</button>
                            </form>
                        </div>
                        <hr>
                        <div class="dropdown2">
                            <button type="submit" class="button"><a href="">Fund Transfer</a></button>
                            <div class="content2">
                                <a href="AddBenifpg1.jsp">Add Payee/Beneficiary</a>
                                <a href="TransferToSame1.jsp">Fund Trasfer Within Own Account</a>
                                <a href="TransferToAnother1.jsp">Fund Trasfer Within Another Account</a>
                            </div>
                        </div>

                        <hr>
                        <button type="submit" class="button"><a href="FAQ.jsp">Customer Support</a></button>
            </form>
            <form action="" class="searchbar">
                <input type="text" placeholder="Search">
                <button></button>
            </form>
            <div class="underline1">
                <div class="underline"></div>
            </div>
            </ul>
            </div>
        </nav>
    </header>
    <main>
        <div class="side-container">
            <div class="list">
                <h2>Services</h2>
                <hr>
                <li>
                    <form action="" method="">
                        <div class="box">
                            <a href="#popup-box">
                                Update Email
                            </a>
                        </div>
                        <div id="popup-box" class="modal">
                            <div class="content">
                                <div class="old-email">
                                    <label>Old Email<span>*</span></label>
                                    <input type="text"name="curremail">
                                </div>
                                <div class="new-email">
                                    <label>New Email<span>*</span></label>
                                    <input type="text" name="newemail">
                                </div>
                                <div class="otp">
                                    <label>OTP<span>*</span></label>
                                    <input type="number" name="enteredotp">
                                </div>
                                <button class="get-otp" formaction="ChangeEmail" method="get">Get OTP</button>
                                <button class="change-email"formaction="changeemailotp" method="get">Change Email</button>
                                <div class="box-close1">
                                    <a href="#">
                                        ×
                                    </a>
                                </div>
                            </div>
                        </div>
                    </form>
                </li>
                <hr>
                <li><a href="">Stop Cheque</a></li>
                <hr>
                <li><a href="">Generate Card Pin</a></li>
                <hr>
                <li>
                    <div class="box">
                        <a href="#popupbox">Help</a>
                    </div>
                    <div id="popupbox" class="modal">
                        <div class="content">
                            <h1>How can we help you?</h1>
                            <div class="box-center">
                                <div class="b1">
                                    <img src="../images/placeholder.jpg" alt="Location">
                                    <h2>Main Office</h2>
                                    <p>MG Road, Mumbai</p>
                                </div>
                                <div class="b1">
                                    <img src="../images/telephone.jpg" alt="Phone number">
                                    <h2>Phone Number</h2>
                                    <p>9995522110</p>
                                </div>
                            </div>
                            <div class="box-center">
                                <div class="b1">
                                    <img src="../images/gmail.jpg" alt="Email">
                                    <h2>Email</h2>
                                    <p>office123@gamil.com</p>
                                </div>
                                <div class="b1">
                                    <img src="../images/print.jpg" alt="Fax">
                                    <h2>Fax</h2>
                                    <p>02525-12345</p>
                                </div>
                            </div>
                        </div>
                        <div class="box-close2">
                            <a href="#">
                                ×
                            </a>
                        </div>
                    </div>
                </li>
                <hr>
            </div>
        </div>
        <div class="center-container">
            <h2>Bill & Payment</h2>
            <div class="acc-container">
                <a href="gasPay.jsp">
                    <div class="mobile-pay">
                            <img src="../images/mobile.png" alt="">
                            <p>Mobile Recharge</p>
                        </div>
                    </a>
                <a href="">
                    <div class="dth-pay">
                            <img src="../images/television (1).png" alt="">
                            <p>DTH / Cable TV</p>
                        </div>
                    </a>
                <a href="../jsp files/gasPay.jsp">
                <div class="electricity-pay">
                        <img src="../images/electricity.png" alt="">
                        <p>Electricity</p>
                    </div>
                </a>
                <a href="">
                    <div class="gas-pay">
                            <img src="../images/gasoline.png" alt="">
                            <p>Gas Cylinder Booking</p>
                        </div>
                    </a>
            </div>
        </div>
        <div class="right-container">
            <h5>WE TAKE YOUR BANKING SECURITY </h5><h5 style="color: rgb(212 107 39);">SERIOUSLY !</h5>
            <p>Rest easy knowing we've got you covered with top-notch technology and security to give you peace of mind.
            </p>
            <li>2 Factor Authentification</li>
            <li>End to End 256 bit Encrypted</li>
        </div>
    </main>
    <footer>
        <div class="footer">
            <ul>
                <li class="h1">
                    <h3>About Us</h3>
                    <div class="about-us">
                        <p>With a commitment to innovation, we strive to simplify your financial journey, offering
                            reliable and personalized services tailored to your needs. Trust us for a seamless online
                            banking experience, backed by robust technology and dedicated customer support.</p>
                    </div>
                </li>


                <li class="h2">
                    <h3>Products</h3>
                    <div class="product">
                        <a href="">Saving Account</a>
                        <a href="">Current Account</a>
                        <a href="">Housing Loan</a>
                        <a href="">Term Deposite</a>
                    </div>
                </li>
                <li class="h3">
                    <h3>Important Links</h3>
                    <a href="">Bank Policies</a>
                    <a href="">Service Charges & Fees</a>
                    <a href="">Download Forms</a>
                    <a href="">FAQs</a>
                </li>
                <li class="h4">
                    <h3>Contact</h3>
                    <a href="">Hyderabad, India</a>
                    <a href="">customercare@icodebank.com</a>
                    <a href="">+91 1800 1234 5678</a>
                    <a href="">+91 1800 1234 5678</a>
                </li>
            </ul>
        </div>
    </footer>
    <script>
        let slideIndex = 0;
        showSlides();
        function showSlides() {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 6000); // Change image every 2 seconds
        }
    </script>
    
</body>

</html>