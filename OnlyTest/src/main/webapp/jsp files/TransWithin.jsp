<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>FundTransfer 1</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="css/TransWithIn.css">
	<link rel="stylesheet" type="text/css" href="css/FTWown.css">
</head>
<body>
<header>
	<div class="container">
		<div class="middle">
			<h3>Fund Transfer Within Own Accounts</h3>
			<hr class="hr1">
			<form action="TransWithIn11" method="post">
				<div id="zip">
					
						From Account
						<select class="form-select form-select-sm" aria-label="Small select example">
							<option selected>Select Account </option>
							<option value="1">Savings Account</option>
							<option value="2">Current Account</option>
							
						</select>
					
				</div>
				<div id="zip2">
				    
					To Account
					<select class="form-select form-select-sm" aria-label="Small select example">
						<option selected>Select Account required </option>
						<option value="1">Savings Account</option>
						<option value="2">Current Account</option>
						
					</select>
				 
			    </div>
				
                <!-- <div id="zip2">
				    
					   To Account
					    <select style="text-decoration: none; border: #ffffff; background: rgb(231, 225, 225); border-radius: 3px;">
						    <option>Savings Account</option>
							<hr>
						    <option>Current Account</option>
							<hr>
						    <option>Loan account</option>
					    </select>
				    
			    </div> -->


				<hr class="hr2">
				Enter Account Number To Transfer
					<input type="text" name="accname" placeholder="Enter Account Number To Transfer">
				Transfer Amount
				<input type="number" name="Transamount" placeholder="Enter the amount">
				Remarks/Purpose 
				<input type="text" name="rp" placeholder="Enter here">
			
			
			<input type="submit" name="" value="Proceed to Checkout">
</form>
		</div>	
	</div>
</header>
</body>
</html>