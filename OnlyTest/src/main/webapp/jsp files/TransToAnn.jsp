<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transfer Funds</title>
    <link rel="stylesheet" href="css/transferpage.css">
    <body>
       
        <div class="outer-container">
            <h2>Transfer Funds</h2>
            <div class="inner-container">
                <h2>To Other Bank</h2>
            </div>
            <form action="TransWithIn" method="post">
                <div class="form-group">
                    <label for="account">From Account</label>
                    <select id="account">
                        <option>Select Account</option>
                        <option>Saving +acnno  </option>
                        <option>Saving-1</option>
                    </select>
                </div>
    
                
                <div class="form-group">
                    <label for="beneficiary">Beneficiary</label>
                    <input type="text" id="beneficiary">
                </div>


                <div class="form-group">
                    <label for="beneficiary account number">Beneficiary Account Number</label>
                    <input type="text" name="accname" placeholder="Enter Account Number To Transfer">
                </div>

                <div class="form-group">
                    <label for="beneficiary-bank name">Beneficiary Bank Name</label>
                    <input type="text" id="beneficiary-bank name">
                </div>

                <div class="form-group">
                    <label for="beneficiary-ifsc">Beneficiary IFSC Code</label>
                    <input type="text" id="beneficiary-ifsc">
                </div>

                <div class="form-group">
                    <label for="transfer amount">Transfer Amount</label>
                    <input type="number" name="Transamount" placeholder="Enter the amount">
                </div>

                <div class="form-group">
                    <label for="transfer description">Transfer Description</label>
                    <input type="text" id="transfer description">
                </div>

                <div class="form-group">
                    <label for="transfer-type">Transfer Type</label>
                    <select id="transfer-type">
                        <option>Select Transfer Type</option>
                        <option>Transfer Now</option>
                        <option>Schedule Payment</option>
                        <option>Set Standing Instruction</option>
                    </select>
                </div>
    
                
                <div class="form-group">
                    <button type="continue">Continue</button>
                </div>
            </form>
        </div>
    </body>
    </html>
    