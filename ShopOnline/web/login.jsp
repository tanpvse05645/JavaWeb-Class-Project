<%-- 
    Document   : login.jsp
    Created on : Aug 13, 2018, 1:32:22 AM
    Author     : Shado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>JSP Page</title>
        <!-- Custom Fonts -->
        <script defer src="font-awesome/js/fontawesome-all.js"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="css/form.css">
    </head>
    <body>

        <%
            String message = request.getAttribute("errorMessage") == null ? "&nbsp;" : (String) request.getAttribute("errorMessage");
        %>

        <div id="intro">
            <div class="middle signin">
                <div class="login-panel">
                    <div class="logo text-center">
                        <a href="index.html">Shop Online</a>
                    </div>
                    <p class="notification"> <%=message%> </p>
                    <form class="js-validation-signin">
                        <div class="form-group">
                            <label>
                                <i class="far fa-envelope"></i>
                            </label>
                            <input type="email" class="form-control" placeholder="Nhập Email" name="txtEmail">
                        </div>
                        <div class="form-group">
                            <label>
                                <i class="fas fa-key"></i>
                            </label>
                            <input type="password" class="form-control" placeholder="Nhập mật khẩu" name="txtPassword">
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <label class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="login-remember-me" name="login-remember-me">
                                    <span class="custom-control-indicator"></span>
                                    <span class="custom-control-description">Remember Me</span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <button type="submit" class="btn btn-sm">
                                    <i class="fas fa-sign-in-alt mg-r-5"></i> Đăng nhập
                                </button>
                            </div>
                        </div>
                        <div class="form-group" style="margin-top: 10px;">
                            <div class="col">
                                <a class="link-effect mg-top-5" href="reminder_password.html">
                                    <i class="fas fa-lock mg-r-5" aria-hidden="true"></i> Forgot Password?
                                </a>
                                <a class="link-effect mg-top-5 float-right" href="signup.html">
                                    <i class="fas fa-user-plus mg-r-5"></i> Register
                                </a>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <footer>
            <p>
                <a href="javascript:void(0)" data-toggle="modal" data-target="#modal-terms">Terms</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © 2018-2019 SunCEX.com All Rights Reserved
            </p>
        </footer>

        <!-- jQuery -->
        <script src="js/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
    </body>
</html>
