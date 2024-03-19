<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="dashboard/dashboard.css">
    <link rel="stylesheet" href="dashboard/Button.css">
    <link rel="stylesheet" href="dashboard/dropdown.css">
    <link rel="stylesheet" href="Successpg/center-container.css">
    <link rel="stylesheet" href="dashboard/footer.css">
</head>

<body>
    <header>
        <nav>
            <form action="">
                <div class="icode">
                    <div class="icodeBankPro"><img src="images/Logo.jpg" alt=""></div>
                    <div class="profile-icon">
                        <a href=""><img src="images/Login Icon (1).jpg"></a><span>Hi <%=session.getAttribute("name") %>...</span>
                    </div>
                    <div class="Log-Out">
                        <form action="logout" method="post"></form>
                        <Button>Log Out</Button>
                    </form>
                    </div>
                </div>
                <div class="ul">
                    <ul>
                        <div class="dropdown">
                            <button type="submit" class="button"><a href="">Account</a></button>
                            <div class="content">
                                <a href="jsp files/MainDashBoard.jsp">Account Overview</a>
                                <form action="RecentTransac" method="get">
                                    <button type="submit"  class="recentview-trans">Recent Transactions</button>
                                </form>
                                <form action="transhist" method="get">
                                    <button type="submit" class="recentview-trans">View Transaction
                                        History</button>
                                </form>
                            </div>
                        </div>
                        <hr>
                        <div class="billButton">
                            <form action="GetDetails" method="post">
                                <button type="submit" class="button2">BillPay & Recharge</button>
                            </form>
                        </div>
                        <hr>
                        <div class="dropdown2">
                            <button type="submit" class="button"><a href="">Fund Transfer</a></button>
                            <div class="content2">
                                <a href="jsp files/AddBenifpg1.jsp">Add Payee/Beneficiary</a>
                                <a href="jsp files/TransferToSame1.jsp">Fund Trasfer Within Own Account</a>
                                <a href="jsp files/TransferToAnother1.jsp">Fund Trasfer Within Another Account</a>
                            </div>
                        </div>

                        <hr>
                        <button type="submit" class="button"><a href="FAQ.jsp">Customer Support</a></button>
            </form>
            <form action="BillerDashBoard.java" class="searchbar">
                <input type="text" placeholder="Search">
                <button><img src="image/Search icon.png"></button>
            </form>
            <div class="underline1">
                <div class="underline"></div>
            </div>
            </ul>
            </div>
        </nav>
    </header>
    <main>
         <form action="BillerDashBoard" method="post">
            <div class="center-container">
                <div class="Successful">
                    <img src="images/check.png" alt="">
                    <b>Bill Successfully Paid!</b>
                </div>
                
                <div class="details-bg">
                    <div class="biller">
                        <img src="images/Adani.jpg" alt="">
                        <h2>Adani</h2>
                    </div>
                    <div>
                        <hr
                            style="height:1.5px; width: 100%; border-width:0; background-color:rgb(136, 116, 169); margin-top: 0px;">
                    </div>
                    <div class="details">
                        <div class="d1">
                            <ul>
                                <li>
                                    <p>Name</p><b id="CA"><%=session.getAttribute("biler_name") %> </b>
                                </li>
                                <li>
                                    <p>Registration Date</p><p id="print">9890175615</p>
                                </li>
                                <li>
                                    <p>Mobile Number</p><p id="print"><%=session.getAttribute("Phonenumber") %></p>
                                </li>
                                <li>
                                    <p>Smartpay Amount</p><p id="print">-</p>
                                </li>
                                <li>
                                    <p>Payment Channel</p><p id="print">Internet Banking</p>
                                </li>
                                <li><Button>Continue</Button></li>
                            </ul>
                        </div>
                        <div class="d2">
                            <ul>
                                <li>
                                    <p>Biller ID</p><b id="CA"><%=session.getAttribute("refid") %></b>
                                </li>
                                <li>
                                    <p>Status</p><p id="print">DONE</p>
                                </li>
                                <li>
                                    <p>Smartpay Status</p><p id="print">-</p>
                                </li>
                                <li>
                                    <p>From: ACC</p><p id="print"><%=session.getAttribute("accno") %></p>
                                </li>
                        </div>
                    </div>
                </div>
            </div>
        </form>
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