<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
  	<link rel="stylesheet" href="css/dashboard1.css">
   <link rel="stylesheet" href="css/Button.css">
    <link rel="stylesheet" href="css/dropdown.css">
    <link rel="stylesheet" href="css/side-container.css">
    <link rel="stylesheet" href="css/center_container.css">
    <link rel="stylesheet" href="css/image_slider.css">
    <link rel="stylesheet" href="css/right-container.css">
    <link rel="stylesheet" href="css/update.css">
    <link rel="stylesheet" href="css/footer.css">
</head>

<body>
    <header>
        <nav>
            <div class="icode">
                <div class="icodeBankPro">Icode BankPro</div>
                <div class="profile-icon">
                    <a href="UserProfile"><img src="images/Login Icon (1).jpg"></a><span>Hi <%=session.getAttribute("name") %>...</span>
                </div>
                <div class="Log-Out">
                    <form action="logout" method="post">
                        <button type="submit">Logout</button>
                    </form>
                </div>
            </div>
            <div class="ul">
                <ul>
                    <div class="dropdown">
                        <button><a href="">Account</a></button>
                        <div class="content">
                            <a href="dashboard.jsp">Account Overview</a>
                            <a href="">Recent transcation</a>
                            
                            <form action="transhist" method="get">
                        <button type="submit">Transfer History</button>
                    </form>
                    
                        </div>
                    </div>
                    <hr>
                    <button> <form action="GetDetails" method="post">
                        <button type="submit">BillPay & Recharge</button>
                    </form></a></button>
                    <hr>
                    <div class="dropdown2">
                        <button><a href="">Fund Transfer</a></button>
                        <div class="content2">
                        	<a href="AddBenifpg1.jsp">Add Payee/Beneficiary</a>
                            <a href="WithINFund.jsp">Fund Trasfer Within Own Account</a>
                            <a href="TransferToAnother1.jsp">Fund Trasfer Within Another Account</a>
                        </div>
                    </div>

                    <hr>
                    <button><a href="FAQ.jsp">Customer Support</a></button>
                    <form action="" class="searchbar">
                        <input type="text" placeholder="Search">
                        <button type="submit"><img src="images/Search icon.png"></button>
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
                <li><form >
                    <div class="box">
                        <a href="#popup-box">
                            Update Email
                        </a>
                    </div>
                    <div id="popup-box" class="modal">
                        <div class="content">
                            <div class="old-email">
                                <label>Old Email<span>*</span></label>
                                <input type="text" name="curremail">
                            </div>
                            <div class="new-email">
                                <label>New Email<span>*</span></label>
                                <input type="text" name="newemail">
                            </div>
                            <div class="otp">
                                <label>OTP<span>*</span></label>
                                <input type="number" name="enteredotp">
                            </div>
                            <button class="get-otp" formaction="ChangeEmail" method="get" >Get OTP</button>
                            <button class="get-otp">Verify OTP</button>
                            <button class="change-email" formaction="changeemailotp" method="get">Change Email</button>
                            <div class="box-close">
                                <a href="#">
                                    ×
                                </a>
                            </div>
                            
                        </div>
                    </div>
                </form></li>
               
                <hr>
                <li><a href="">Stop Cheque</a></li>
                <hr>
                <li><a href="">Generate Card Pin</a></li>
                <hr>
                <li><a href="">Help</a></li>
                <hr>
            </div>
        </div>
        <div class="center-container">
            <div class="images/img-slider">
                <div class="slideshow-container">

                    <div class="mySlides fade">
                        <div class="numbertext"></div>
                        <img src="images/gettyimages (1).jpg">
                    </div>

                    <div class="mySlides fade">
                        <div class="numbertext"></div>
                        <img src="images/photo.jpg">
                    </div>

                    <div class="mySlides fade">
                        <div class="numbertext"></div>
                        <img src="images/gettyimages (1).jpg">
                    </div>

                </div>
                

                <div style="text-align:center ">
                    <span class="dot"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                </div>
            </div>

            <div class="acc-container">
                <div class="acc-heading">
                    <span>Account Name</span>
                    <span>Account No.</span>
                    <span>Account Balance</span>
                </div>
                <hr>
                <div class="acc-subheading">
                    <span class="name"><%=session.getAttribute("name") %></span>
                    <span class="acc-no"><%=session.getAttribute("accno") %></span>
                    <span class="acc-total">Rs.<%=session.getAttribute("balance") %></span>
                </div>
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