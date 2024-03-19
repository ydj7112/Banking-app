<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Profile/header.css">
    <link rel="stylesheet" href="../Profile/main.css">
    <link rel="stylesheet" href="../Profile/ChangePassword.css">
    <link rel="stylesheet" href="../Profile/footer.css">
    <title>Profile</title>
</head>

<body>
    <header>
        <a href="MainDashBoard.jsp"><img class="img" src="../images/Logo.png" alt=""></a>
        <nav>
            <ul>
                <li><a href="">Resourses</a></li>
                <li><a href="">Tools</a></li>
                <li><a href="FAQ.jsp">FAQs</a></li>
            </ul>
        </nav>
        <div class="Log-Out">
            <form action="../logout" method="post">
                        <button type="submit">Logout</button>
        </div>
    </header>
    <main>
        <div class="container">
            <div class="profileB1">
                <img src="../images/user(1).png" alt="">
                <h2><%=session.getAttribute("name") %></h2>
                <br>
                <a href="#popup-box">Change Password</a>
                <div id="popup-box" class="modal">
                    <div class="content">
                        <div class="old-Password">
                            <label>Old Password<span>*</span></label>
                            <input type="text" name="currpass">
                        </div>
                        <div class="new-Password">
                            <label>New Password<span>*</span></label>
                            <input type="text" name="newpass">
                        </div>
                        <div class="otp">
                            <label>OTP<span>*</span></label>
                            <input type="number" name="enteredotp">
                        </div>
                        <button class="get-otp" formaction="" method="">Get OTP</button>
                        <br>
                        <button class="change-Password" formaction="../ChangePassword" method="post" >Change Password</button>
                        <div class="box-close1">
                            <a href="#">
                                ×
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="profileB2">
                <h1>Profile</h1>
                <div class="PersnolDetail">
                    <h2>Persnol Detail</h2>
                    <div class="sub_details">
                        <div class="group">
                            <span class="label">Mobile No.</span><span class="label">:</span>
                        </div>
                        <span><%=session.getAttribute("mobileNumber") %></span>
                    </div>
                    <div class="sub_details">
                        <div class="group">
                            <span class="label">Email</span><span class="label">:</span>
                        </div>
                        <span><%=session.getAttribute("email") %></span>
                    </div>
                    <div class="sub_details">
                        <div class="group">
                            <span class="label">Address</span><span class="label">:</span>
                        </div>
                        <span><%=session.getAttribute("address") %></span>
                    </div>    
                </div>
                <div class="PersnolDetail">
                    <h2>Bank Detail</h2>
                    <div class="sub_details">
                        <div class="group">
                            <span class="label">Account No.</span><span class="label">:</span>
                        </div>
                        <span>
                            <%=session.getAttribute("accno") %></span>
                    </div>
                    <div class="sub_details">
                        <div class="group">
                            <span class="label">Account Type</span><span class="label">:</span>
                        </div>
                        <span><%=session.getAttribute("accountType") %></span>
                    </div>
                    <div class="sub_details">
                        <div class="group">
                            <span class="label">Branch Name</span><span class="label">:</span>
                        </div>
                        <span><%=session.getAttribute("branchName") %></span>
                    </div> 
                    <div class="sub_details">
                        <div class="group">
                            <span class="label">Branch Address</span><span class="label">:</span>
                        </div>
                        <span><%=session.getAttribute("branchAddress") %></span>
                    </div>   
                    <div class="sub_details">
                        <div class="group">
                            <span class="label">IFSC Code</span><span class="label">:</span>
                        </div>
                        <span><%=session.getAttribute("ifscCode") %></span>
                    </div>
                </div>
            </div>
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
</body>
</html>