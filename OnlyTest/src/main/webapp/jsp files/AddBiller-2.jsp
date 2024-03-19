<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../dashboard/dashboard.css">
    <link rel="stylesheet" href="../dashboard/Button.css">
    <link rel="stylesheet" href="../dashboard/dropdown.css">
    <link rel="stylesheet" href="../electicitybill/center-container.css">
    <link rel="stylesheet" href="../dashboard/footer.css">
    <link rel="stylesheet" href="../electicitybill/Add-Biller.css">
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
                                <a href="../jsp files/MainDashBoard.jsp">Account Overview</a>
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
       <form action="../EnteredDetails" method="post">
            <div class="center-container">
                <div class="selectbiller-exit">
                    <h1 class="h1">Select Biller</h1>
                    <div class="exitAddBiller">
                        <h3><a href="AddBiller-dashboard.jsp">Exit<img src="images/icons8-exit-50.png" alt=""></a></h3>
                    </div> 
                </div>
                <div>
                    <hr
                        style="height:1px; width: 100%; border-width:0; background-color:rgb(136, 116, 169); margin-top: 0px;">
                </div>
                <div class="biller">
                    <img src="Photos/Adani.jpg" alt="">
                    <b>Adani Mumbai Electricity Limited</b>
                </div>
                <div class="details">
                    <div class="box1">
                        <div class="inputs">
                         <%@include file="message.jsp" %>
                            <label class="heading" for="">CA Number</label>
                            <input type="number" name="CANO" id="CANO">
                            <label class="heading" for="">Nickname</label>
                            <input type="text" id="tbuser2">
                        </div>

                        <div class="smartpay">
                            <b>Setup SmartPay for this Biller</b>
                            <label class="switch">
                                <input type="checkbox" checked>
                                <span class="slider round"></span>
                            </label>
                        </div>
                        <div class="inputs">
                            <label class="heading" for="">SmartPay Limit Amount</label>
                            <input type="number">
                            <label class="heading" for="">Nickname</label>
                            <input type="text">
                        </div>
                        <div class="Add-Biller"id="btn1">
                            <a href="#side-box">Add Biller</a>
                        </div>
                    </div>
                    <div class="box2">
                        <div class="sub-box">
                            <img src="../images/Adani.jpg" alt="">
                            <hr>
                            <div class="acc">
                                <b>Account No</b>:<b id="output3"></b>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
    </main>
    <div id="side-box" class="side-box">
        <div class="sideb">
            <div class="sideb1">
            
                <ul>
                    <h3>View Details</h3>
                    <li>
                        <p>Consumer Number</p><b name="CANO" id="output1"></b>
                    </li>
                    <li>
                        <p>Nickname</p><b id="output2"></b>
                    </li>
                    <li>
                        <p>AutoPay Amount</p><b>-</b>
                    </li>
                    <li>
                        <p>Payment Account</p><b>-</b>
                    </li>
                    <li><button>Confirm</button></li>
                </ul>
                </form>
            </div>
            <div class="sideb2">
                <img src="images/Adani.jpg" alt="">
                <p>Adani</p>
            </div>
        </div>

        <div class="box-close">
            <a href="#">
                ×
            </a>
        </div>
    </div>
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
    const txt1 = document.getElementById('CANO'); 
    const txt2 = document.getElementById('tbuser2'); 
   
    
    const btn1 = document.getElementById('btn1');
    
    
    const out1 = document.getElementById('output1');
    const out3 = document.getElementById('output3');
    
    const out2 = document.getElementById('output2');
    function fun1() {
    	out1.innerHTML = txt1.value;
    	out2.innerHTML = txt2.value;
    	
    	}
    btn1.addEventListener('click', fun1);
    
    </script>
</body>

</html>