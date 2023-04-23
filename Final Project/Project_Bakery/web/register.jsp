<%-- 
    Document   : login
    Created on : Feb 12, 2023, 12:54:42 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clothes Shop</title>
        <!--bootstrap 53113123123--> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"/>
        <link rel="stylesheet" href="css/login.css">

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="offset-md-2 col-lg-5 col-md-7 offset-lg-4 offset-md-3">
                    <div class="panel border bg-white">
                        <div class="panel-heading">
                            <h3 class="pt-3 font-weight-bold">Register</h3>
                        </div>
                        <div class="panel-body p-3">
                            <form action="register" method="POST">
                                <div class="form-group py-2">
                                    UserName
                                    <div class="input-field" style="margin-top: 10px">
                                        <span class="far fa-user p-2"></span>
                                        <input type="text" name="username" id="user-name" placeholder="Username or Email" required>
                                    </div>
                                </div>
                                <div class="form-group py-2">
                                    Display Name
                                    <div class="input-field" style="margin-top: 10px">
                                        <span class="far fa-user p-2"></span>
                                        <input type="text" name="DisplayName" id="DisplayName" placeholder="Enter your DisplayName" required>
                                    </div>
                                </div>
                                <div class="form-group py-1 pb-2">
                                    Password
                                    <div class="input-field" style="margin-top: 10px">
                                        <span class="fas fa-lock px-2"></span>
                                        <input type="password" name="password" id="user-password" placeholder="Enter your Password" >
                                        <button class="btn bg-white text-muted">
                                            <span class="far fa-eye-slash"></span>
                                        </button>
                                    </div>
                                </div>

                                <div class="form-group py-1 pb-2">
                                    Re-Password
                                    <div class="input-field" style="margin-top: 10px">
                                        <span class="fas fa-lock px-2"></span>
                                        <input type="password" name="repassword" id="user-repassword" placeholder="Enter  Re-Password" >
                                        <button class="btn bg-white text-muted">
                                            <span class="far fa-eye-slash"></span>
                                        </button>
                                    </div>
                                </div>  
                                <p class="text-center pt-4 " style="color: red; text-decoration: none"> ${SignUpError}<p>
                                <p class="text-center pt-4 " style="color: red; text-decoration: none"> ${UserNameError}<p>
                                <div>
                                    <input type="submit"  class="btn btn-primary btn-block mt-3" value="Register">
                                </div>
                                <div class="text-center pt-4 text-muted">You have an account? <a href="login">Log In</a>
                                </div>
                            </form>
                        </div>
                        <div class="mx-3 my-2 py-2 bordert">
                            <div class="text-center py-3">
                                <a href="https://wwww.facebook.com" target="_blank" class="px-2">
                                    <img src="https://www.dpreview.com/files/p/articles/4698742202/facebook.jpeg" alt="">
                                </a>
                                <a href="https://www.google.com" target="_blank" class="px-2">
                                    <img src="https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png"
                                         alt="">
                                </a>

                                <a href="https://www.github.com" target="_blank" class="px-2">
                                    <img src="https://www.freepnglogos.com/uploads/512x512-logo-png/512x512-logo-github-icon-35.png"
                                         alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
