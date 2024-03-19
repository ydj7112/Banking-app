<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    
   
    <link rel="stylesheet" href="../dashboard/update.css">
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="../Profile/bodyfaq.css">
      <link rel="stylesheet" href="../Profile/headerfaq.css">
    
</head>

<body>
    <main>
        <header>
            <a href="MainDashBoard.jsp"><img class="img" src="../images/Logo.png" alt=""></a>
            <nav>
                <ul>
                    <li><a href="">Resourses</a></li>
                    <li><a href="">Tools</a></li>
                    <li><a href="">FAQs</a></li>
                </ul>
            </nav>
            <div class="Log-Out">
                <Button>Log Out</Button>
            </div>
        </header>
        <div class="faq-container">
            <div class="content">
                <div class="text">
                    <h1>FAQs</h1>
                    <p>Have questions? Here you'll find the answers, along with access to step-by-step instructions and
                        support.
                    </p>
                </div>
                <div class="image">
                    <img src="../images/FAQ.png">
                </div>
            </div>
        </div>
        <br>
        <div class="container">
            <section class="sub-container">
                <div class="faq-heading">
                    <!-- faq question -->
                    <h1 class="faq-page">How to change password?</h1>
                    <!-- faq answer -->
                    <div class="faq-body">
                        <p>After you have logged in you can change password using "change Password" option.</p>
                    </div>
                </div>
                <hr class="hr-line">

                <div class="faq-heading">
                    <!-- faq question -->
                    <h1 class="faq-page">Is minimum balance required?</h1>
                    <!-- faq answer -->
                    <div class="faq-body">
                        <p>Yes, you need to keep minimum balance of Rs.500.</p>
                    </div>
                </div>
                <hr class="hr-line">

                <div class="faq-heading">
                    <!-- faq question -->
                    <h1 class="faq-page">What are bank bill payments</h1>
                    <!-- faq answer -->
                    <div class="faq-body">
                        <p>This is a facility to make online payment like electricity, mobile, insurance etc.</p>
                    </div>
                </div>
                <hr class="hr-line">

                <div class="faq-heading">
                    <!-- faq question -->
                    <h1 class="faq-page">Can I also know about Credit Card alerts?</h1>
                    <!-- faq answer -->
                    <div class="faq-body">
                        <p>Yes, your payment due and card limit.</p>
                    </div>
                </div>
                <hr class="hr-line">

                <div class="faq-heading">
                    <!-- faq question -->
                    <h1 class="faq-page">What is the daily transaction limit?</h1>
                    <!-- faq answer -->
                    <div class="faq-body">
                        <p>The daily default limit is Rs. 25,000. There is no limit for fund transfer.</p>
                    </div>
                </div>
                <hr class="hr-line">
            </section>
        </div>
        <script>

            var faq = document.getElementsByClassName("faq-page");
            var i;

            for (i = 0; i < faq.length; i++) {
                faq[i].addEventListener("click", function () {
                    /* Toggle between adding and removing the "active" class,
                    to highlight the button that controls the panel */
                    this.classList.toggle("active");
                    this.parentElement.classList.toggle("active");

                    /* Toggle between hiding and showing the active panel */
                    var body = this.nextElementSibling;
                    if (body.style.display === "block") {
                        body.style.display = "none";
                    } else {
                        body.style.display = "block";
                    }
                });
            }
        </script>


    </main>
</body>



</html>