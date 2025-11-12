package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  @Override
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!doctype html>\n");
      out.write("<html class=\"no-js\" lang=\"zxx\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("    <title>wemeet</title>\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("    <!-- <link rel=\"manifest\" href=\"site.webmanifest\"> -->\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"img/favicon.png\">\n");
      out.write("    <!-- Place favicon.ico in the root directory -->\n");
      out.write("\n");
      out.write("    <!-- CSS here -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/themify-icons.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/nice-select.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/flaticon.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/slicknav.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    <!-- <link rel=\"stylesheet\" href=\"css/responsive.css\"> -->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!--[if lte IE 9]>\n");
      out.write("            <p class=\"browserupgrade\">You are using an <strong>outdated</strong> browser. Please <a href=\"https://browsehappy.com/\">upgrade your browser</a> to improve your experience and security.</p>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("    <!-- header-start -->\n");
      out.write("    <header>\n");
      out.write("        <div class=\"header-area \">\n");
      out.write("            <div id=\"sticky-header\" class=\"main-header-area \">\n");
      out.write("                <div class=\"container-fluid p-0\">\n");
      out.write("                    <div class=\"row align-items-center justify-content-between no-gutters\">\n");
      out.write("                        <div class=\"col-xl-2 col-lg-2\">\n");
      out.write("                            <div class=\"logo-img\">\n");
      out.write("                                <h1 style=\"color:white\"><a href=\"AdminLogin.jsp\">TWITTER\n");
      out.write("                                    <!--<img src=\"img/logo.png\" alt=\"\">-->\n");
      out.write("                            \n");
      out.write("                                    </a></h1>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xl-9 col-lg-9\">\n");
      out.write("                            <div class=\"main-menu  d-none d-lg-block\">\n");
      out.write("                                <nav>\n");
      out.write("                                    <ul id=\"navigation\">\n");
      out.write("                                        <li><a class=\"nav-item\" href=\"Admin.jsp\">AdminHome</a></li>\n");
      out.write("                                        \n");
      out.write("                                        <li><a href=\"UserDetails.jsp\">UserDetails</a></li>\n");
      out.write("                                        <li><a href=\"UserTweet.jsp\">UserTweet</a></li>\n");
      out.write("                                        <li><a href=\"Classification.jsp\">Classification</a></li>\n");
      out.write("                                        <li><a href=\"FakeUser.jsp\">FakeUser</a></li>\n");
      out.write("                                        <li><a href=\"index.jsp\">LOGOUT</a></li>\n");
      out.write("                                       \n");
      out.write("                                        \n");
      out.write("                                    \n");
      out.write("                                    </ul>\n");
      out.write("                                </nav>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <div class=\"mobile_menu d-block d-lg-none\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("    <!-- header-end -->\n");
      out.write("\n");
      out.write("    <!-- slider_area_start -->\n");
      out.write("    <div class=\"slider_area slider_bg_1\">\n");
      out.write("        <div class=\"slider_text\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"position_relv\">\n");
      out.write("                    <!--<h1 class=\"opcity_text d-none d-lg-block\">CONFIRENCE</h1>-->\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-xl-10\">\n");
      out.write("                            <div class=\"title_text\">\n");
      out.write("                                <!--<h1 style=\"color: white\">Spammer Detection and Fake User Identification on Social Networks <br></h1>-->\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <!--<div class=\"countDOwn_area\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row align-items-center\">\n");
      out.write("                    <div class=\"col-xl-4 col-md-6 col-lg-4\">\n");
      out.write("                        <div class=\"single_date\">\n");
      out.write("                            <i class=\"ti-location-pin\"></i>\n");
      out.write("                            <span>City Hall, New York City</span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-xl-3 col-md-6 col-lg-3\">\n");
      out.write("                        <div class=\"single_date\">\n");
      out.write("                            <i class=\"ti-alarm-clock\"></i>\n");
      out.write("                            <span>12-15 Sep 2019</span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-xl-5 col-md-12 col-lg-5\">\n");
      out.write("                        <span id=\"clock\"></span>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>-->\n");
      out.write("    </div>\n");
      out.write("    <p class=\"copy_right text-center\">\n");
      out.write("                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\n");
      out.write("  \n");
      out.write("    <!-- JS here -->\n");
      out.write("    <script src=\"js/vendor/modernizr-3.5.0.min.js\"></script>\n");
      out.write("    <script src=\"js/vendor/jquery-1.12.4.min.js\"></script>\n");
      out.write("    <script src=\"js/popper.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"js/isotope.pkgd.min.js\"></script>\n");
      out.write("    <script src=\"js/ajax-form.js\"></script>\n");
      out.write("    <script src=\"js/waypoints.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.counterup.min.js\"></script>\n");
      out.write("    <script src=\"js/imagesloaded.pkgd.min.js\"></script>\n");
      out.write("    <script src=\"js/scrollIt.js\"></script>\n");
      out.write("    <script src=\"js/jquery.scrollUp.min.js\"></script>\n");
      out.write("    <script src=\"js/wow.min.js\"></script>\n");
      out.write("    <script src=\"js/nice-select.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.slicknav.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.countdown.js\"></script>\n");
      out.write("    <script src=\"js/plugins.js\"></script>\n");
      out.write("\n");
      out.write("    <!--contact js-->\n");
      out.write("    <script src=\"js/contact.js\"></script>\n");
      out.write("    <script src=\"js/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.form.js\"></script>\n");
      out.write("    <script src=\"js/jquery.validate.min.js\"></script>\n");
      out.write("    <script src=\"js/mail-script.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
