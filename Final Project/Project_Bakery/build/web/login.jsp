
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <!--bootstrap-->
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
                            <h3 class="pt-3 font-weight-bold">Login</h3>
                        </div>
                        <div class="panel-body p-3">
                            <form action="login" method="POST">
                                <div class="form-group py-2">
                                    UserName
                                    <div class="input-field">
                                        <span class="far fa-user p-2"></span>
                                        <input type="text" name="username" id="login-name" placeholder="Username or Email" required>
                                    </div>
                                </div>
                                <div class="form-group py-1 pb-2">
                                    Password
                                    <div class="input-field">
                                        <span class="fas fa-lock px-2"></span>
                                        <input type="password" name="password" id="login-password" placeholder="Enter your Password" required>
                                        <button class="btn bg-white text-muted">
                                            <span class="far fa-eye-slash"></span>
                                        </button>
                                    </div>
                                </div>
                                <div class="form-inline">
                                    <input type="checkbox" name="remember" id="remember">
                                    <label for="remember" class="text-muted">Remember me</label>
                                    <a href="#" id="forgot" class="font-weight-bold">Forgot password?</a>
                                </div>
                                <p class="text-center pt-4 " style="color: red; text-decoration: none"> ${error}<p>
                                <div>
                                    <input type="submit" class="btn btn-primary btn-block mt-3" value="Log In">
                                </div>
                                <div class="text-center pt-4 text-muted">You don't have an account? <a href="register.jsp">Register</a>
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
                    <div class="text-center">
                        <a style="margin-left: 10px;margin-top: 20px;" href="home" class="btn btn-info"><span>Back To Home</span></a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
