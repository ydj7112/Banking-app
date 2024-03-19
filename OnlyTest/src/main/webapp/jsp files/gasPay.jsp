<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../dashboard/dashboard.css">
    <link rel="stylesheet" href="../dashboard/Button.css">
    <link rel="stylesheet" href="../dashboard/dropdown.css">
    <link rel="stylesheet" href="../gasbill/center-container.css">
    <link rel="stylesheet" href="../dashboard/footer.css">
     <link rel="stylesheet" href="../dashboard/update.css">
    <link rel="stylesheet" href="../dashboard/footer.css">
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

        <div class="center-container">
            <div class="selectbiller-exit">
                <h1 class="h1">Select Biller</h1>
                <h3><a href="AddBiller-dashboard.jsp">Exit <img src="images/icons8-exit-50.png" alt=""></a></h3>
            </div>

            <div>
                <hr
                    style="height:1px; width: 100%; border-width:0; background-color:rgb(136, 116, 169); margin-top: 0px;">
            </div>

            <input id="searchbar" onkeyup="search_animal()" type="text" name="search" placeholder="Search Items..">

            <ul id='list'>
                <li class="animals"><a href="AddBillerAdani.jsp"><img src="../images/Adani.jpg" alt=""> Adani Mumbai Electricity Limited</a>
                </li>
                <li class="animals"><a href=""><img style="border-radius: 10em; padding: 0.3em;" src="../images/avvnl.jpg"
                            alt="">Ajmer Vidyut Vetran Nigam Limited</a></li>
                <li class="animals"><a href=""><img style="border-radius: 10em; padding: 0.3em;" src="../images/apdcl.jpg"
                            alt="">Assam Power Distribution Company Ltd</a></li>
                <li class="animals"><a href=""><img src="../images/Adani.jpg" alt="">Brihan Mumbai Electricity Supply And
                        Transport Undertaking</a></li>
                <li class="animals"><a href=""><img style="border-radius: 10em; padding: 0.3em;"
                            src="../images/bses yamuna.jpg" alt="">BSES Rajdhani Power Limited</a></li>
                <li class="animals"><a href=""><img style="border-radius: 10em; padding: 0.3em;"
                            src="../images/bses yamuna.jpg" alt="">BSES Yamuna Power Limited</a></li>
                <li class="animals"><a href=""><img style="border-radius: 10em; padding: 0.3em;" src="images/msedcl.jpg"
                            alt="">Mhavitran-Maharashtra Electricity (MSEDCL)</a></li>
                <li class="animals"><a href=""><img src="../images/Adani.jpg" alt="">TATA Power Mumbai</a></li>
                <li class="animals"><a href=""><img src="../images/Adani.jpg" alt="">BEST-Brihan Mumbai Electricity</a>
                </li>
                <li class="animals"><a href=""><img src="../images/Adani.jpg" alt="">New Delhi Electricity (NDMC)</a></li>
                <li class="animals"><a href=""><img src="../images/Adani.jpg" alt="">West Bengal Electricity (WBSEDCL)</a>
                </li>
            </ul>

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
        // JavaScript code
 
 function search_animal() {
 let input = document.getElementById('searchbar').value
 input = input.toLowerCase();
 let x = document.getElementsByClassName('animals');
 
 for (i = 0; i < x.length; i++) {
     if (!x[i].innerHTML.toLowerCase().includes(input)) {
     x[i].style.display = "none";
     }
     else {
     x[i].style.display = "list-item";
     }
 }
 }
 
         </script>
</body>

</html>