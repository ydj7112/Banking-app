<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="dashboard/dashboard.css">
    <link rel="stylesheet" href="dashboard/Button.css">
    <link rel="stylesheet" href="dashboard/dropdown.css">
    <link rel="stylesheet" href="FundTransfer/side-container.css">
    <link rel="stylesheet" href="FundTransfer/center-container1.css">
    <link rel="stylesheet" href="dashboard/img-slider.css">
    <link rel="stylesheet" href="dashboard/update.css">
    <link rel="stylesheet" href="dashboard/footer.css">
    <link rel="stylesheet" type="text/css" href="FundTransfer/22.css">
    <link rel="stylesheet" href="otp page2 css.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    
     <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

</head>

<body>
    <header>
        <nav>
            <form action="">
                <div class="icode">
                    <div class="icodeBankPro"><img src="images/Logo.jpg" alt=""></div>
                    <div class="profile-icon">
                        <a href="UserProfile.jsp"><img src="images/Login Icon (1).jpg"></a><span>Hi <%=session.getAttribute("name") %>...</span>
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
                                    <input type="text">
                                </div>
                                <div class="new-email">
                                    <label>New Email<span>*</span></label>
                                    <input type="text">
                                </div>
                                <div class="otp">
                                    <label>OTP<span>*</span></label>
                                    <input type="number">
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
                                    <img src="images/placeholder.jpg" alt="Location">
                                    <h2>Main Office</h2>
                                    <p>MG Road, Mumbai</p>
                                </div>
                                <div class="b1">
                                    <img src="images/telephone.jpg" alt="Phone number">
                                    <h2>Phone Number</h2>
                                    <p>9995522110</p>
                                </div>
                            </div>
                            <div class="box-center">
                                <div class="b1">
                                    <img src="images/gmail.jpg" alt="Email">
                                    <h2>Email</h2>
                                    <p>office123@gamil.com</p>
                                </div>
                                <div class="b1">
                                    <img src="images/print.jpg" alt="Fax">
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
            <h2 class="h2"></h2>
            <div class="wrapper">
                <div class="header">
                    <ul>
                        <li class="active form_1_progessbar">
                            <h2>Congratulations!!! Your Transfer was Successfull.</h2>
                        </li>
                    </ul>
                </div>
                
                
                <div class="form_wrap">
                    <div class="form_1 data_info">
                        <h2 style="padding: 0;margin: 5px 0px 5px 0px;">To Same Bank</h2>
                         <form action="OtherBank_pg2" method="post">
                            <div class="form_container">
                                <div class="form-group">
                                    <label for="account">From Account</label>
                                    <input type="text" id="account" name="account" value=<%=session.getAttribute("accno") %>>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label for="beneficiary">Beneficiary</label>
                                    <input type="text" id="beneficiary" name="beneficiary" value=<%=session.getAttribute("benifname") %>>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label for="beneficiary account number">Beneficiary IFSC Code</label>
                                    <input type="text" id="accountNumber" name="accountNumber" value=<%=session.getAttribute("benififsc") %>>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label for="beneficiary-bank name">Beneficiary Account Number</label>
                                    <input type="text" id="bank name" name="name" value=<%=session.getAttribute("benaccno") %>>
                                </div>
                                
                                <hr>
                                <div class="form-group">
                                    <label for="transfer amount">Transfer Amount</label>
                                    <input type="text" id="amount" name="amount" value=<%=session.getAttribute("trans_ammnt") %>>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label for="transfer description">Transfer Description</label>
                                    <input type="text" id="description" name="description" value=<%=session.getAttribute("transtype") %>>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label for="transfer-type">Transfer Type</label>
                                    <input type="text" id="type" name="type" value=<%=session.getAttribute("mobileNumber") %>>
                                </div>
                               <div class="btns_wrap">
                            <div class="common_btns form_1_btns">
                                <button type="submit" class="btn_next"><a href="jsp files/MainDashBoard.jsp">Done</a> <span class="icon"></ion-icon></span></button>
                            </div>
                        </div>
                    </div>
                        </form>

            </div>
        </div>
</body>

</html>