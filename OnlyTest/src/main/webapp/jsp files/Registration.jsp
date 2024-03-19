<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scal=1.0">
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="global.css">
    <script src="https://kit.fontawesome.com/add80a7af6.js" crossorigin="anonymous"></script>

  </head>
  <body>
    <nav class="nav-bar">
      <div class="container-fluid">
        <div class="icode-bank-pro">
          <span class="icode-bank-pro1">ICODE -BANK PRO</span>
        </div>
    </nav>



    <div class="container">
    <div class="form-box">
      <h1 id="title">Sign Up</h1>
      <form action="register" method="post">
        <div class="input-group">
          <div class="input-field" id="nameField">
            <i class="fa-solid fa-user"></i>
            <input type="text" name="name" placeholder="Name">
          </div>

          <div class="input-field">
            <i class="fa-solid fa-envelope"></i>
            <input type="email" name="email" placeholder="Email">
          </div>

          <div class="input-field">
            <i class="fa-solid fa-lock"></i>
            <input type="password" name="password" placeholder="Password">
          </div>

          <div class="input-field">
            <i class="fa-solid fa-lock"></i>
            <input type="Application Id" name="userid" placeholder="Application Id">
          </div>

        </div>
        <div class="btn-field">
          <button type="submit" id="registrationbtn" class="form-submit" value="Register">Sign up</button>
          
        </div>
      </form>
    </div>
    </div>

 <!--   
 <script>

  let signupBtn = document.getElementById("signupBtn");
  let signinBtn = document.getElementById("signinBtn");
  let nameField = document.getElementById("nameField");
  let title = document.getElementById("title");

  signinBtn.onclick= function(){
    nameField.style.maxHeight= "0";
    title.innerHTML= "Sign In";
    signupBtn.classList.add("disable");
    signinBtn.classList.remove("disable");
  }

  signupBtn.onclick= function(){
    nameField.style.maxHeight= "60px";
    title.innerHTML= "Sign Up";
    signupBtn.classList.remove("disable");
    signinBtn.classList.add("disable");
  }

  </script>         -->
  </body>
</html>



