/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.60
 * Generated at: 2021-01-08 04:40:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class accomm_002djoinus_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/C:/WEB_CODES/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Petopia/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1607397061812L));
    _jspx_dependants.put("jar:file:/C:/WEB_CODES/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Petopia/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=\"UTF-8\">\r\n");
      out.write("<title>호텔회원가입</title>\r\n");
      out.write("<style></style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var regexpEmpty = /\\s/g; //모든 공백 체크 정규식\r\n");
      out.write("var regexpId = /^[a-z0-9][a-z0-9_\\-]{3,12}$/; // 아이디 정규식\r\n");
      out.write("var regexpPassword = /^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$/; // 비밀번호 정규식\r\n");
      out.write("var regexpName = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\\s[a-zA-Z]{2,10}$/; // 이름 정규식\r\n");
      out.write("var regexpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[@]{1}[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[.]{1}[a-zA-Z]{2,3}$/i; // 이메일 주소 정규식\r\n");
      out.write("\r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write("\tvar arrInvalid = new Array(9).fill(false); // 유효성 검사\r\n");
      out.write("\t\r\n");
      out.write(" \t/* id 중복 검사 & 정규식 */\r\n");
      out.write("\t$('#id').blur(function() {\r\n");
      out.write("\t\tif($('#id').val() == '') {\r\n");
      out.write("\t\t\t$('#id_check').text('아이디를 입력하세요.');\r\n");
      out.write("\t\t\t$('#id_check').css('color', 'red');\r\n");
      out.write("\t\t\tarrInvalid[0] = false;\r\n");
      out.write("\t\t\tconsole.log(arrInvalid[0]);\r\n");
      out.write("\t\t} else if(!regexpId.test($('#id').val())) {\r\n");
      out.write("\t\t\t$('#id_check').text('4~12자의 영문 또는 숫자만 사용 가능합니다.');\r\n");
      out.write("\t\t\t$('#id_check').css('color', 'red');\r\n");
      out.write("\t\t\tarrInvalid[0] = false;\r\n");
      out.write("\t\t\tconsole.log(arrInvalid[0]);\r\n");
      out.write("\t\t} else if($('#id').val() != '') {\r\n");
      out.write("\t\t\tvar id = $('#id').val();\r\n");
      out.write("\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\ttype : 'post',\r\n");
      out.write("\t\t\t\turl : 'member/idcheck/',\r\n");
      out.write("\t\t\t\theaders : {\r\n");
      out.write("\t\t\t\t\t'Content-Type' : 'application/json',\r\n");
      out.write("\t\t\t\t\t'X-HTTP-Method-Override' : 'POST'\r\n");
      out.write("\t\t\t\t},\r\n");
      out.write("\t\t\t\tdata : id,\r\n");
      out.write("\t\t\t\tsuccess : function(data) {\r\n");
      out.write("\t\t\t\t\tconsole.log(\"중복 id 수 = \" + data + \"개\");\r\n");
      out.write("\t\t\t\t\tif(data > 0) {\r\n");
      out.write("\t\t\t\t\t\t$('#id_check').text('중복된 아이디입니다.');\r\n");
      out.write("\t\t\t\t\t\t$('#id_check').css('color', 'red');\r\n");
      out.write("\t\t\t\t\t\tarrInvalid[0] = false;\r\n");
      out.write("\t\t\t\t\t\tconsole.log(arrInvalid[0]);\r\n");
      out.write("\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\t$('#id_check').text('사용 가능한 아이디입니다.');\r\n");
      out.write("\t\t\t\t\t\t$('#id_check').css('color', 'blue');\r\n");
      out.write("\t\t\t\t\t\tarrInvalid[0] = true;\r\n");
      out.write("\t\t\t\t\t\tconsole.log(arrInvalid[0]);\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t}\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\t/* password 정규식 */\r\n");
      out.write("\t$('#password1').blur(function() {\r\n");
      out.write("\t\tif($('#password1').val() == '') {\r\n");
      out.write("\t\t\t$('#password1_check').text('비밀번호를 입력하세요.');\r\n");
      out.write("\t\t\t$('#password1_check').css('color', 'red');\r\n");
      out.write("\t\t} else if(!regexpPassword.test($('#password1').val())) {\r\n");
      out.write("\t\t\t$('#password1_check').text('최소 8자의 영문과 숫자 조합으로 사용 가능합니다.');\r\n");
      out.write("\t\t\t$('#password1_check').css('color', 'red');\r\n");
      out.write("\t\t} else {\r\n");
      out.write("\t\t\t$('#password1_check').text('사용 가능한 비밀번호입니다.');\r\n");
      out.write("\t\t\t$('#password1_check').css('color', 'blue');\r\n");
      out.write("\t\t}\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\t/* password 체크 */\r\n");
      out.write("\t$('#password2').blur(function() {\r\n");
      out.write("\t\tif($('#password2').val() == $('#password1').val()) {\r\n");
      out.write("\t\t\t$('#password2_check').text(' ');\r\n");
      out.write("\t\t\tarrInvalid[1] = true;\r\n");
      out.write("\t\t\tconsole.log(arrInvalid[1]);\r\n");
      out.write("\t\t} else {\r\n");
      out.write("\t\t\t$('#password2_check').text('입력한 비밀번호가 일치하지 않습니다.');\r\n");
      out.write("\t\t\t$('#password2_check').css('color', 'red');\r\n");
      out.write("\t\t\tarrInvalid[1] = false;\r\n");
      out.write("\t\t\tconsole.log(arrInvalid[1]);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\t/* 이름 체크 */\r\n");
      out.write("\t$('#name').blur(function() {\r\n");
      out.write("\t\tif($('#name').val() == '') {\r\n");
      out.write("\t\t\t$('#name_check').text('이름을 입력하세요.');\r\n");
      out.write("\t\t\t$('#name_check').css('color', 'red');\r\n");
      out.write("\t\t\tarrInvalid[2] = false;\r\n");
      out.write("\t\t\tconsole.log(arrInvalid[2]);\r\n");
      out.write("\t\t} else if(!regexpName.test($('#name').val())) {\r\n");
      out.write("\t\t\t$('#name_check').text('특수문자는 사용 불가능합니다.');\r\n");
      out.write("\t\t\t$('#name_check').css('color', 'red');\r\n");
      out.write("\t\t\tarrInvalid[2] = false;\r\n");
      out.write("\t\t\tconsole.log(arrInvalid[2]);\r\n");
      out.write("\t\t} else {\r\n");
      out.write("\t\t\t$('#name_check').text(' ');\r\n");
      out.write("\t\t\tarrInvalid[2] = true;\r\n");
      out.write("\t\t\tconsole.log(arrInvalid[2]);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\t/* email 정규식 */\r\n");
      out.write("\t$('#email').blur(function() {\r\n");
      out.write("\t\tif($('#email').val() == '') {\r\n");
      out.write("\t\t\t$('#email_check').text('이메일 주소를 입력하세요.');\r\n");
      out.write("\t\t\t$('#email_check').css('color', 'red');\r\n");
      out.write("\t\t\tarrInvalid[4] = false;\r\n");
      out.write("\t\t\tconsole.log(arrInvalid[3]);\r\n");
      out.write("\t\t} else if(!regexpEmail.test($('#email').val())) {\r\n");
      out.write("\t\t\t$('#email_check').text('유효한 이메일 주소를 입력하세요.');\r\n");
      out.write("\t\t\t$('#email_check').css('color', 'red');\r\n");
      out.write("\t\t\tarrInvalid[4] = false;\r\n");
      out.write("\t\t\tconsole.log(arrInvalid[3]);\r\n");
      out.write("\t\t} else {\r\n");
      out.write("\t\t\t$('#email_check').text(' ');\r\n");
      out.write("\t\t\tarrInvalid[4] = true;\r\n");
      out.write("\t\t\tconsole.log(arrInvalid[3]);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("\t/* 전화 번호 자동 하이픈 */\r\n");
      out.write("\tvar autoHypenMobile = function(num) {\r\n");
      out.write("\t      num = num.replace(/[^0-9]/g, '');\r\n");
      out.write("\t      var tmp = '';\r\n");
      out.write("\t      if(num.length < 4) {\r\n");
      out.write("\t          return num;\r\n");
      out.write("\t      } else if(num.length < 7) {\r\n");
      out.write("\t          tmp += num.substr(0, 3);\r\n");
      out.write("\t          tmp += '-';\r\n");
      out.write("\t          tmp += num.substr(3);\r\n");
      out.write("\t          return tmp;\r\n");
      out.write("\t      } else if(num.length < 11) {\r\n");
      out.write("\t          tmp += num.substr(0, 3);\r\n");
      out.write("\t          tmp += '-';\r\n");
      out.write("\t          tmp += num.substr(3, 3);\r\n");
      out.write("\t          tmp += '-';\r\n");
      out.write("\t          tmp += num.substr(6);\r\n");
      out.write("\t          return tmp;\r\n");
      out.write("\t      } else {              \r\n");
      out.write("\t          tmp += num.substr(0, 3);\r\n");
      out.write("\t          tmp += '-';\r\n");
      out.write("\t          tmp += num.substr(3, 4);\r\n");
      out.write("\t          tmp += '-';\r\n");
      out.write("\t          tmp += num.substr(7);\r\n");
      out.write("\t          return tmp;\r\n");
      out.write("\t      }\r\n");
      out.write("\t      return num;\r\n");
      out.write("\t}\r\n");
      out.write("\tvar mobileNum = document.getElementById('mobile');\r\n");
      out.write("\tmobileNum.onkeyup = function() {\r\n");
      out.write("\t\tconsole.log(this.value);\r\n");
      out.write("\t\tthis.value = autoHypenMobile(this.value);  \r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* 기타 반려동물 텍스트 박스 활성화*/\r\n");
      out.write("\t$(\"#animal3\").click(function() {\r\n");
      out.write("\t\tif(this.checked) {\r\n");
      out.write("\t\t\t$(\"#animal4\").attr(\"disabled\", false);\r\n");
      out.write("\t\t} else {\r\n");
      out.write("\t\t\t$(\"#animal4\").attr(\"disabled\", true);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t/* 전체 반려동물 */\r\n");
      out.write("\t$(\"#userJoin\").click(function() {\r\n");
      out.write("\t\tvar totalAnimals = [];\r\n");
      out.write("\t\t$('input:checkbox[name=\"animal\"]').each(function() {\r\n");
      out.write("\t\t\tif(this.checked) {\r\n");
      out.write("\t\t\t\tif (this.id == \"animal3\") {\r\n");
      out.write("\t\t\t\t\ttotalAnimals.push($('#animal4').val());\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\telse {\r\n");
      out.write("\t\t\t\t\ttotalAnimals.push(this.value);\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t$('#totalAnimals').val('');\r\n");
      out.write("\t\t$('#totalAnimals').val(totalAnimals + '');\r\n");
      out.write("\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t/* 유효성 검사 */\r\n");
      out.write("\tfunction invalidAll() {\r\n");
      out.write("\t\tvar invalidAll = false;\r\n");
      out.write("        if (arrInvalid[0]) {\r\n");
      out.write("        \tconsole.log(\"id = \" + $('#id').val());\r\n");
      out.write("        \talert(\"아이디를 확인해주세요.\");\r\n");
      out.write("            return false;\r\n");
      out.write("        } else if (arrInvalid[1]) {\r\n");
      out.write("        \tconsole.log(\"password1 = \" + document.getElementById('password1').value);\r\n");
      out.write("        \tconsole.log(\"password2 = \" + document.getElementById('password2').value);\r\n");
      out.write("        \talert(\"비밀번호를 확인해주세요.\");\r\n");
      out.write("            return false;\r\n");
      out.write("        } else if (arrInvalid[2]) {\r\n");
      out.write("        \tconsole.log(\"name = \" + document.getElementById('name').value);\r\n");
      out.write("        \talert(\"호텔명을 확인해주세요.\");\r\n");
      out.write("            return false;\r\n");
      out.write("        } else if (arrInvalid[3]) {\r\n");
      out.write("        \tconsole.log(\"email = \" + document.getElementById('email').value);\r\n");
      out.write("        \talert(\"이메일 주소를 확인해주세요.\");\r\n");
      out.write("            return false;\r\n");
      out.write("        } else if (document.getElementById('mobile').value == '') {\r\n");
      out.write("        \tconsole.log(\"mobile = \" + document.getElementById('mobile').value);\r\n");
      out.write("            return false;\r\n");
      out.write("        } else if (document.getElementsValuesById('animals').value == '') {\r\n");
      out.write("        \tarrInvalid[4] = true;\r\n");
      out.write("            return false;\r\n");
      out.write("        } else if (document.getElementsValuesById('zipNo').value == '') { \r\n");
      out.write("        \tarrInvalid[5] = true;\r\n");
      out.write("            return false;\r\n");
      out.write("        } else if (document.getElementsValuesById('roadAddrPart1').value == '') { \r\n");
      out.write("        \tarrInvalid[6] = true;\r\n");
      out.write("            return false;\r\n");
      out.write("        } else if (document.getElementsValuesById('addrDetail').value == '') { \r\n");
      out.write("        \tarrInvalid[7] = true;\r\n");
      out.write("            return false;\r\n");
      out.write("        } else {\r\n");
      out.write("        \tarrInvalid[8] = true;\r\n");
      out.write("        \tfor(var i = 0; i < arrInvalid.length; i++) {\r\n");
      out.write("        \t\tif (arrInvalid[i]) {\r\n");
      out.write("        \t\t\tinvalidAll = true;\r\n");
      out.write("        \t\t}\r\n");
      out.write("        \t}\r\n");
      out.write("        \tif (invalidAll) {\r\n");
      out.write("\t        \treturn true;\r\n");
      out.write("        \t} else {\r\n");
      out.write("        \t\treturn false;\t\r\n");
      out.write("        \t}\r\n");
      out.write("        }\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* 도로명주소 API 팝업창 */\r\n");
      out.write(" \t$(\"#btnFindAddress\").click(function(event){\r\n");
      out.write("\t\tvar url = \"member/postcode\";\r\n");
      out.write("        var name = \"popUpPostCode\";\r\n");
      out.write("        var option = \"width = 570, height = 420, scrollbars=yes, resizable=yes\"\r\n");
      out.write("\t\twindow.open(url, name, option);\r\n");
      out.write("\t});\r\n");
      out.write("\t\t\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("document.domain = \"localhost\";\r\n");
      out.write("\r\n");
      out.write("/* 도로명주소 API Callback */\r\n");
      out.write("function jusoCallBack(\r\n");
      out.write("\t\troadFullAddr,\r\n");
      out.write("\t\troadAddrPart1,\r\n");
      out.write("\t\taddrDetail,\r\n");
      out.write("\t\troadAddrPart2,\r\n");
      out.write("\t\tengAddr,\r\n");
      out.write("\t\tjibunAddr,\r\n");
      out.write("\t\tzipNo,\r\n");
      out.write("\t\tadmCd,\r\n");
      out.write("\t\trnMgtSn,\r\n");
      out.write("\t\tbdMgtSn,\r\n");
      out.write("\t\tdetBdNmList,\r\n");
      out.write("\t\tbdNm,\r\n");
      out.write("\t\tbdKdcd,\r\n");
      out.write("\t\tsiNm,\r\n");
      out.write("\t\tsggNm,\r\n");
      out.write("\t\temdNm,\r\n");
      out.write("\t\tliNm,\r\n");
      out.write("\t\trn,\r\n");
      out.write("\t\tudrtYn,\r\n");
      out.write("\t\tbuldMnnm,\r\n");
      out.write("\t\tbuldSlno,\r\n");
      out.write("\t\tmtYn,\r\n");
      out.write("\t\tlnbrMnnm,\r\n");
      out.write("\t\tlnbrSlno,\r\n");
      out.write("\t\temdNo\r\n");
      out.write("\t\t) {\r\n");
      out.write("\t// 팝업페이지에서 주소입력한 정보를 받아서 현 페이지에 정보를 등록\r\n");
      out.write("\t// document.getElementById('roadFullAddr').value = roadFullAddr; // 전체 도로명주소\r\n");
      out.write("\tdocument.getElementById('roadAddrPart1').value = roadAddrPart1; // 도로명주소(참고항목 제외)\r\n");
      out.write("\tdocument.getElementById('roadAddrPart2').value = roadAddrPart2; // 도로명주소 참고항목\r\n");
      out.write("\tdocument.getElementById('addrDetail').value = addrDetail; // 고객 입력 상세 주소\r\n");
      out.write("\t// document.getElementById('engAddr').value = engAddr; // 도로명주소(영문)\r\n");
      out.write("\t// document.getElementById('jibunAddr').value = jibunAddr; // 지번 정보\r\n");
      out.write("\tdocument.getElementById('zipNo').value = zipNo; // 우편번호\r\n");
      out.write("\t// document.getElementById('admCd').value = admCd; // 행정구역코드\r\n");
      out.write("\t// document.getElementById('rnMgtSn').value = rnMgtSn; // 도로명코드\r\n");
      out.write("\t// document.getElementById('bdMgtSn').value = bdMgtSn; // 건물관리번호\r\n");
      out.write("\t// document.getElementById('detBdNmList').value = detBdNmList; // 상세건물명\r\n");
      out.write("\t// document.getElementById('bdNm').value = bdNm; // 건물명\r\n");
      out.write("\t// document.getElementById('bdKdcd').value = bdKdcd; // 공동주택여부(1:공동주택, 0: 비공동주택)\r\n");
      out.write("\t// document.getElementById('siNm').value = siNm; // 시도명\r\n");
      out.write("\t// document.getElementById('sggNm').value = sggNm; // 시군구명\r\n");
      out.write("\t// document.getElementById('emdNm').value = emdNm; // 읍면동명\r\n");
      out.write("\t// document.getElementById('liNm').value = liNm; // 법정리명\r\n");
      out.write("\t// document.getElementById('rn').value = rn; // 도로명\r\n");
      out.write("\t// document.getElementById('udrtYn').value = udrtYn; // 지하여부(0:지상, 1:지하)\r\n");
      out.write("\t// document.getElementById('buldMnnm').value = buldMnnm; // 건물본번\r\n");
      out.write("\t// document.getElementById('buldSlno').value = buldSlno; // 건물부번(부번이 없는 경우 0)\r\n");
      out.write("\t// document.getElementById('mtYn').value = mtYn; // 산여부(0:대지, 1:산)\r\n");
      out.write("\t// document.getElementById('lnbrMnnm').value = lnbrMnnm; // 지번본번(번지)\r\n");
      out.write("\t// document.getElementById('lnbrSlno').value = lnbrSlno; // 지번부번(호)(부번이 없는 경우 0)\r\n");
      out.write("\t// document.getElementById('emdNo').value = emdNo; // 읍면동일련번호\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"header\">\r\n");
      out.write("\t\t\t<h3>회원가입</h3>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"main\">\r\n");
      out.write("\t\t\t<form action=\"member/join\" method=\"post\" id=\"userInfo\" name=\"userInfo\" onsubmit=\"return invalidAll()\"> <!-- 회원가입 버튼 클릭 이벤트 : 유효성 검사 -->\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<label>아이디</label>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" id=\"id\" name=\"id\" placeholder=\"ID\" required>\r\n");
      out.write("\t\t\t\t\t<div id=\"id_check\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<label>비밀번호</label>\r\n");
      out.write("\t\t\t\t\t<input type=\"password\" id=\"password1\" name=\"password\" placeholder=\"password\" required>\r\n");
      out.write("\t\t\t\t\t<div id=\"password1_check\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<label>비밀번호 확인</label>\r\n");
      out.write("\t\t\t\t\t<input type=\"password\" id=\"password2\" name=\"password2\" placeholder=\"confirm password\" required>\r\n");
      out.write("\t\t\t\t\t<div id=\"password2_check\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<label>호텔명</label>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" id=\"name\" name=\"name\" placeholder=\"name\" required>\r\n");
      out.write("\t\t\t\t\t<div id=\"name_check\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<label>이메일</label>\r\n");
      out.write("\t\t\t\t\t<input type=\"email\" id=\"email\" name=\"email\" placeholder=\"email\" required>\r\n");
      out.write("\t\t\t\t\t<div id=\"email_check\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<label>연락처</label>\r\n");
      out.write("\t\t\t\t\t<input type=\"tel\" id=\"mobile\" name=\"contact\" placeholder=\"phone number\">\r\n");
      out.write("\t\t\t\t\t<div id=\"mobile_check\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<fieldset>\r\n");
      out.write("\t\t\t\t\t\t<legend>주소</legend>\r\n");
      out.write("\t\t\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t\t\t<tbody>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>우편번호</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"zipNo\" name=\"zipcode\" value=\"\" readonly>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"button\" id=\"btnFindAddress\" value=\"검색\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>도로명주소</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"roadAddrPart1\" name=\"address\" value=\"\" readonly>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"roadAddrPart2\" value=\"\" readonly>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<th>상세주소</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"addrDetail\" name=\"detailaddress\" value=\"\" readonly>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<fieldset>\r\n");
      out.write("\t\t\t\t\t\t<legend>취급 반려동물</legend>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"checkbox\" id=\"animal1\" name=\"animal\" value=\"개\">개\r\n");
      out.write("\t\t\t\t\t\t<input type=\"checkbox\" id=\"animal2\" name=\"animal\" value=\"고양이\">고양이\r\n");
      out.write("\t\t\t\t\t\t<input type=\"checkbox\" id=\"animal3\" name=\"animal\">기타\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" id=\"animal4\" name=\"animal4\" disabled>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" id=\"totalAnimals\" name=\"animals\">\r\n");
      out.write("\t\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<label>비고</label>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" id=\"note\" name=\"note\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" id=\"point\" name=\"point\" value=\"0\"> <!-- 기본 0포인트 -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" id=\"authority\" name=\"authority\" value=\"3\"> <!-- 3 : 업체회원 -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write(" \t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<input type=\"submit\" id=\"userJoin\" value=\"회원가입\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
