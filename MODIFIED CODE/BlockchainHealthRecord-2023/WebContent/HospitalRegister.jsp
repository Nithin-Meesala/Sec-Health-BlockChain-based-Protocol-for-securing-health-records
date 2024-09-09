<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Block Chain Health Record</title>
</head>
<body>

</body><!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Block Chain Health Record</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Medicio
  * Updated: Mar 10 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex align-items-center justify-content-center justify-content-md-between">
      <div class="align-items-center d-none d-md-flex">
        <i class="bi bi-clock"></i> Monday - Saturday, 10AM to 7PM
      </div>
      <div class="d-flex align-items-center">
        <i class="bi bi-phone"></i> Call us now +91 9581022022
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
         <li><a class="nav-link scrollto " href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="HospitalLogin.jsp">Hospital</a></li>
          <li><a class="nav-link scrollto" href="DoctorLogin.jsp">Doctors</a></li>
          <li><a class="nav-link scrollto" href="PatientLogin.jsp">Patient</a></li>
          <li><a class="nav-link scrollto" href="RelativeLogin.jsp">Emergency Doctors Admin</a></li>            
          </ul>
         
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="#appointment" class="appointment-btn scrollto"><span class="d-none d-md-inline">Make an</span> Appointment</a>

    </div>
  </header><!-- End Header -->

  <main id="main">
   <style>
    /* Center the form on the page */
    form {
      margin: auto;
      width: 50%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    /* Style the input fields and labels */
    label {
      display: block;
      margin-bottom: 8px;
    }

    input[type=text], input[type=password] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      box-sizing: border-box;
      border: 2px solid #ccc;
      border-radius: 4px;
    }

    /* Style the submit button */
    input[type=submit] {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type=submit]:hover {
      background-color: #45a049;
    }
  </style>
<script>
    function validateForm() {
        var password = document.getElementsByName("password")[0].value;
        var confirmPassword = document.getElementsByName("cpassword")[0].value;

        if (password !== confirmPassword) {
            alert("Passwords do not match.");
            return false; // Prevent form submission
        }

        var pincode = document.getElementById("HospitalPincode").value;
        if (pincode.length > 6) {
            alert("Pincode cannot be more than six digits.");
            return false; // Prevent form submission
        }

        return true; // Allow form submission
    }

    function validateMobileNumber(input) {
        var mobileNumber = input.value;
        
        if (mobileNumber.length > 10) {
            alert("Mobile number should not exceed 10 characters!");
            input.value = mobileNumber.slice(0, 10); // Truncate the input to 10 characters
        }
    }

    function validatePasswordStrength(input) {
        var password = input.value;

        // Define your password strength conditions
        var hasUpperCase = /[A-Z]/.test(password);
        var hasLowerCase = /[a-z]/.test(password);
        var hasDigit = /\d/.test(password);
        var hasSpecialChar = /[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]/.test(password);

        // Check if all conditions are met
        if (hasUpperCase && hasLowerCase && hasDigit && hasSpecialChar && password.length >= 8) {
            updatePasswordStrengthIcon('strong');
            input.setCustomValidity(""); // Reset the validation message
        } else if ((hasUpperCase || hasLowerCase || hasDigit || hasSpecialChar) && password.length >= 6) {
            updatePasswordStrengthIcon('medium');
            input.setCustomValidity("");
        } else {
            updatePasswordStrengthIcon('weak');
            input.setCustomValidity("Password must be at least 8 characters long and include uppercase, lowercase, digit, and special character.");
        }
    }

    function updatePasswordStrengthIcon(strength) {
        var iconElement = document.getElementById('passwordStrengthIcon');
        iconElement.innerHTML = ''; // Clear previous icons

        if (strength === 'weak') {
            iconElement.innerHTML = '\uD83D\uDD34'; // Unicode escape sequence for 🔴
            iconElement.style.color = 'red'; // Set the color
        } else if (strength === 'medium') {
            iconElement.innerHTML = '\uD83D\uDFE0'; // Unicode escape sequence for 🟠
            iconElement.style.color = 'orange'; // Set the color
        } else if (strength === 'strong') {
            iconElement.innerHTML = '\uD83D\uDFE2'; // Unicode escape sequence for 🟢
            iconElement.style.color = 'green'; // Set the color
        }
    }

    function validatePincode(input) {
        var pincode = input.value;
        
        if (pincode.length > 6) {
            alert("Pincode should not exceed 6 characters!");
            input.value = pincode.slice(0, 6); // Truncate the input to 6 characters
        }
    }
</script>
    <!-- ======= Breadcrumbs Section ======= -->
    <section id="home" class="min-h-100vh flex justify-start items-center">
        <div class="mx-5 md-mx-l5">
            <div>
            <br><br><br>
            <center>
               <h1 class="white fs-l3 lh-2 md-fs-xl1 md-lh-1 fw-900 ">Hospital Registration</h1>
                </center>
				<form action="HospitalRegister" method="post">
                <div>
                 
                 <label for="HospitalName">Hospital Name :</label>
                
                <input type="text"
                        
                        placeholder="Enter Hospital Name" name="HospitalName"> &nbsp;&nbsp;&nbsp;
                        <br><br>
                        <label for="HospitalID">HOSPITAL ID :</label>
                    <input type="text"
                       
                        placeholder="Enter Hospital ID" name="HospitalID"> 
                        <br><br>
                        <label for="HospitalPassword">HOSPITAL PASSWORD:</label>
                        <input type="password"
                       
                        placeholder="Enter Hospital Password" name="HospitalPassword" oninput="validatePasswordStrength(this)"> &nbsp;&nbsp;&nbsp;
						<span id="passwordStrengthIcon" class="password-strength-icon"></span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
						<br><br>
						<label for="HospitalMobile">HOSPITAL CONTACT:</label>
                        <input type="text"
                        
                        placeholder="Enter Hospital Contact" name="HospitalMobile" oninput="validateMobileNumber(this)">
                        <br><br>
                        <label for="HospitalCountry">HOSPITAL COUNTRY :</label>
                    <input type="text"
                       
                        placeholder="Enter Hospital Country" name="HospitalCountry">&nbsp;&nbsp;&nbsp;
						<br><br>
						<label for="HospitalCity">HOSPITAL CITY NAME :</label>
                        <input type="text"
                       
                        placeholder="Enter Hospital City" name="HospitalCity">
						<br><br>
						<label for="HospitalAddress">HOSPITAL ADDRESS :</label>
                        <input type="text"
                       
                        placeholder="Enter Hospital Address" name="HospitalAddress"> &nbsp;&nbsp;&nbsp;
                        <br><br>
                        <label for="HospitalPincode">HOSPITAL PINCODE :</label>
                        <input type="text"
                       
                        placeholder="Enter Hospital Pincode" name="HospitalPincode" oninput="validatePincode(this)"> 
                        <br><br>
                    <input type="submit" 
                         placeholder="Register"/>
                                                 </div>
                </form>
                
        </div>
        </div>
    </section>

  </main><!-- End #main -->
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>BlockChain Health Record</h3>
              <p>
                A108 Adam Street <br>
                NY 535022, USA<br><br>
                <strong>Phone:</strong> +1 5589 55488 55<br>
                <strong>Email:</strong> info@example.com<br>
              </p>
              <div class="social-links mt-3">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

         

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>BLOCKCHAIN</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medicio-free-bootstrap-theme/ -->
        Designed by <a href=###>BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
</html>