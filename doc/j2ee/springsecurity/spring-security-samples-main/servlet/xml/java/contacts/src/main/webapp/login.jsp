<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>

<html>
  <head>
    <title>Login</title>
  </head>

  <body onload="document.f.username.focus();">
    <h1>Login</h1>

    <p>Valid users:
    <p>
    <p>username <b>rod</b>, password <b>koala</b>
    <p>username <b>dianne</b>, password <b>emu</b>
    <p>username <b>scott</b>, password <b>wombat</b>
    <p>username <b>peter</b>, password <b>opal</b> (user disabled)
    <p>username <b>bill</b>, password <b>wombat</b>
    <p>username <b>bob</b>, password <b>wombat</b>
    <p>username <b>jane</b>, password <b>wombat</b>
    <p>

    <p>Locale is: <%= request.getLocale() %></p>
    <%-- this form-login-page form is also used as the
         form-error-page to ask for a login again.
         --%>
    <c:if test="${not empty param.login_error}">
      <font color="red">
        Your login attempt was not successful, try again.<br/><br/>
        Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
      </font>
    </c:if>

    <form name="f" action="<c:url value='login'/>" method="POST">
      <table>
        <tr><td>User:</td><td><input type='text' name='username' value='<c:if test="${not empty param.login_error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>'/></td></tr>
        <tr><td>Password:</td><td><input type='password' name='password'></td></tr>
        <tr><td><input type="checkbox" name="remember-me"></td><td>Don't ask for my password for two weeks</td></tr>

        <tr><td colspan='2'><input name="submit" type="submit"></td></tr>
        <tr><td colspan='2'><input name="reset" type="reset"></td></tr>
      </table>
      <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>" value="<c:out value="${_csrf.token}"/>"/>
    </form>

  </body>
</html>
