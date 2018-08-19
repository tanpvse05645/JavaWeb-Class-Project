package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("        <!-- Custom Fonts -->\r\n");
      out.write("        <script defer src=\"font-awesome/js/fontawesome-all.js\"></script>\r\n");
      out.write("        <!-- Bootstrap CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap/bootstrap.min.css\">\r\n");
      out.write("        <!-- Custom CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/form.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        ");

            String message = request.getAttribute("errorMessage") == null ? "&nbsp;" : (String) request.getAttribute("errorMessage");
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div id=\"intro\">\r\n");
      out.write("            <div class=\"middle signin\">\r\n");
      out.write("                <div class=\"login-panel\">\r\n");
      out.write("                    <div class=\"logo text-center\">\r\n");
      out.write("                        <a href=\"index.html\">Shop Online</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <p class=\"notification\"> Notification!!! </p>\r\n");
      out.write("                    <form class=\"js-validation-signin\">\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <input type=\"email\" class=\"form-control\" placeholder=\"Nhập Email\" name=\"txtEmail\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <input type=\"password\" class=\"form-control\" placeholder=\"Nhập mật khẩu\" name=\"txtPassword\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <div class=\"col\">\r\n");
      out.write("                                <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                    <input type=\"checkbox\" class=\"custom-control-input\" id=\"login-remember-me\" name=\"login-remember-me\">\r\n");
      out.write("                                    <span class=\"custom-control-indicator\"></span>\r\n");
      out.write("                                    <span class=\"custom-control-description\">Remember Me</span>\r\n");
      out.write("                                </label>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <div class=\"col\">\r\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-sm\">\r\n");
      out.write("                                    <i class=\"fas fa-sign-in-alt mg-r-5\"></i> Đăng nhập\r\n");
      out.write("                                </button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\" style=\"margin-top: 10px;\">\r\n");
      out.write("                            <div class=\"col\">\r\n");
      out.write("                                <a class=\"link-effect mg-top-10\" href=\"reminder_password.html\">\r\n");
      out.write("                                    <i class=\"fas fa-lock mg-r-5\" aria-hidden=\"true\"></i> Forgot Password?\r\n");
      out.write("                                </a>\r\n");
      out.write("                                <a class=\"link-effect float-right\" href=\"signup.html\">\r\n");
      out.write("                                    <i class=\"fas fa-user-plus mg-r-5\"></i> Register\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <footer>\r\n");
      out.write("            <p>\r\n");
      out.write("                <a href=\"javascript:void(0)\" data-toggle=\"modal\" data-target=\"#modal-terms\">Terms</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © 2018-2019 SunCEX.com All Rights Reserved\r\n");
      out.write("            </p>\r\n");
      out.write("        </footer>\r\n");
      out.write("\r\n");
      out.write("        <!-- jQuery -->\r\n");
      out.write("        <script src=\"js/jquery/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap Core JavaScript -->\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\"></script>\r\n");
      out.write("        <script src=\"js/bootstrap/bootstrap.min.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
