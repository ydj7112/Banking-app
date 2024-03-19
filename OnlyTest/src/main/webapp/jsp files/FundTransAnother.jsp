<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="FundTransfer/dashboard.css">
    <link rel="stylesheet" href="FundTransfer/Button.css">
    <link rel="stylesheet" href="FundTransfer/dropdown.css">
    <link rel="stylesheet" href="FundTransfer/side-container.css">
    <link rel="stylesheet" href="FundTransfer/center-container.css">
    <link rel="stylesheet" href="FundTransfer/img-slider.css">
    <link rel="stylesheet" href="FundTransfer/right-container.css">
    <link rel="stylesheet" href="FundTransfer/footer.css">
    <link rel="stylesheet" type="text/css" href="FundTransfer/1.css">
    <link rel="stylesheet" href="otp page2 css.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    
     <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

</head>

<body>
    <header>
        <nav>
            <div class="icode">
                <div class="icodeBankPro">Icode BankPro</div>
                <div class="profile-icon">
                    <a href=""><img src="images/Login Icon (1).jpg"></a><span>Hi Deven...</span>
                </div>
                <div class="Log-Out">
                    <a href="">Log Out</a>
                </div>
            </div>
            <div class="ul">
                <ul>
                    <div class="dropdown">
                        <button><a href="">Account</a></button>
                        <div class="content">
                            <a href="">Account Overview</a>
                            <a href="">Recent transcation</a>
                            <a href="">View Transaction History</a>
                        </div>
                    </div>
                    <hr>
                    <button><a href="">BillPay & Recharge</a></button>
                    <hr>
                    <div class="dropdown2">
                        <button><a href="">Fund Transfer</a></button>
                        <div class="content2">
                            <a href="">Add Payee/Beneficiary</a>
                            <a href="">Fund Trasfer Within Own Account</a>
                            <a href="">Fund Trasfer Within Another Account</a>
                        </div>
                    </div>

                    <hr>
                    <button><a href="">Customer Support</a></button>
                    <form action="" class="searchbar">
                        <input type="text" placeholder="Search">
                        <button type="submit"><img src="Photos/Search icon.png"></button>
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
                <li><a href="">Update Email-ID</a></li>
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
            <h2 class="h2">Third Party Fund Transfer</h2>
            <div class="wrapper">
                <div class="header">
                    <ul>
                        <li class="active form_1_progessbar">
                            <div class="circle">
                                <p>1</p>
                                <pre>Enter Details</pre>
                            </div>
                        </li>
                        <li class="form_2_progessbar">
                            <div class="circle2">
                                <p>2</p>
                                <pre>Confirm Details</pre>
                            </div>
                        </li>
                        <li class="form_3_progessbar">
                            <div class="circle3">
                                <p>3</p>
                                <pre>OTP</pre>
                            </div>
                        </li>
                    </ul>
                </div>
                
                
                <div class="form_wrap">
                    <div class="form_1 data_info">
                        <h2 style="padding: 0;margin: 25px 0px 5px 0px;">To Other Bank</h2>
                      
                        <form action="pg1otherBank111" method="post">
                            <div class="form_container">

                                <div class="form-group">
                                    <label for="beneficiary">From Account</label>
                                    <input type="text" disabled name="myacc" id="beneficiary"value=<%=session.getAttribute("accno") %>>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label for="beneficiary account number">Beneficiary</label>
                                    <input type="text" name="benname" id="benename">
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label for="beneficiary-bank name">Beneficiary IFSC Code</label>
                                    <input type="text" name="benifsc" id="benifsc">
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label for="beneficiary account number">Beneficiary Account Number</label>
                                    <input type="text" name="benaccno" placeholder=" Enter Beneficiary Account Number" id="benacc">
                                </div>
                                
                                
                                <hr>
                                <div class="form-group">
                                    <label for="transfer amount">Transfer Amount</label>
                                    <input type="number" name="Transamount" placeholder="Enter the amount">
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label for="transfer description">Transfer Description</label>
                                    <input type="text" name="td" id="transfer description">
                                </div>
                                
                                <hr>
								<div class="form-group">
                                    <label for="beneficiary-bank name">Transfer Type</label>
                                    <select name="acc-type" id="beneficiary-bank">
                                        <option>Savings</option>
                                        <option>Current</option>
                                        <option>Overdarft</option>
                                        <option>Card Payment</option>
                                    </select>
                                </div>
                                <div class="btns_wrap">
                                    <div class="common_btns form_1_btns">
                                    <button type="submit" class="btn_next">Next <span class="icon"><ion-icon
                                                name="arrow-forward-sharp"></ion-icon></span></button>
                                    </div>
                                </div>
		                        </div>          
                        </form>
                   	</div>
                   
                   
              
                    <div class="form_2 data_info" style="display: none;">
                        <h2 style="padding: 0;margin: 25px 0px 5px 0px;">Personal Info</h2>
                        <form>
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
                                    <div class="common_btns form_2_btns" style="display: none;">
                                        <button type="button" class="btn_back"><span class="icon"><ion-icon
                                                    name="arrow-back-sharp"></ion-icon></span>Back</button>
                                        <button type="button" class="btn_next">Next <span class="icon"><ion-icon
                                                    name="arrow-forward-sharp"></ion-icon></span></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    
                    
                    
                    <div class="form_3 data_info" style="display: none;">
                        <h2 style="padding: 0;margin: 25px 0px 5px 0px;">OTP</h2>
                        <form action="pg3otherBank11" method="post">

                            <div class="container">
                                <hr>
                                <div class="otp-instru">
                                    <p>Please note : </p>
                                    <p>1. There will be multiple attempts made to deliver the OTP (One Time Password)
                                        successfully to you.</p>
                                    <p>2. For customers having an Indian mobile number registered with the Bank, if the
                                        above attempts are unsuccessful, an IVR will be initiated on your registered
                                        mobile
                                        number.</p>
                                    <p>3. For J&K customers, OTP will be sent only through IVR(Integrated Voice
                                        Recognition). Please re-initiate the transaction, incase you do not receive the
                                        same.</p>
                                    <p>Please input the OTP sent to your registered mobile number.</p>
                                </div>

                               
                                    <div class="form-otp">
                                        <label for="otp" style="display: flex;">
                                            <p style="color: red;">*</p>
                                            <p>Enter One Time Password</p>
                                        </label>
                                        <input type="number" required id="otp" name="enteredotp">
                                    </div>
                                </form>
                                <p>Your One Time Password(OTP) is confidential. Please do not share it with anyone via
                                    e-mail, phone or any other medium</p>
                                    <div class="btns_wrap">
                                    <div class="common_btns form_3_btns" style="display: none;">
                                        <button type="button" class="btn_back"><span class="icon"><ion-icon
                                                    name="arrow-back-sharp"></ion-icon></span>Back</button>
                                        <button type="submit" class="btn_done">Done</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                
           
              

            <div class="modal_wrapper">
                <div class="shadow"></div>
                <div class="success_wrap">
                    <span class="modal_icon"><ion-icon name="checkmark-sharp"></ion-icon></span>
                    <p>You have successfully completed the process.</p>
                </div>
            </div>
            <script type="text/javascript" src="FundTransfer/fund.js"></script>
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

    <script type="text/javascript" src="FundTransfer/fund.js"></script>
      <script>
                $(document).ready(function(){
                   console.log('Hi ready');
                
                   $(function(){
                   $('#benename').autocomplete({
                
                    source: [{
                      label: "<%=session.getAttribute("benename") %>",
                      ifsc: "<%=session.getAttribute("beneifsc") %>",
                      accno:"<%=session.getAttribute("beneaccno") %>"
                     
                    
                    }],
                    
                    select: function(e, ui){
                        $('#benename').val(ui.item.label);
                
                        $('#benifsc').val(ui.item.ifsc);
                        $('#benacc').val(ui.item.accno);
                
                
                        return false;
                
                
                
                    }
                
                   });
                   });
                
                    });
                </script>


           

</body>

</html>