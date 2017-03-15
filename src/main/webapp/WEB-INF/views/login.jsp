<%@include file="/WEB-INF/views/template/header.jsp" %>

 <head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginPage</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <body>
  <style>
  body
{
    background: url('http://www.proedenterprises.com/Portals/0/Images/abstract-music-background-vector-illustration_f1eoZ1U__L.jpg?ver=2016-01-04-233732-493') fixed;
    background-size: cover;
    padding: 0;
    margin: 0;
    }
 </style>

<div class="container-wrapper">
    <div class="login-container">
        <div id="login-box">
         

            <br>
            <font color="white">
            <h2>Login with Username and Password</h2></font>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="form-group">
                    <label for="username"><font color="white">
                   <h4><span class="glyphicon glyphicon-user">Username</span></h4></font></label>
                    <input type="text" id="username" name="username" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="password"><font color="white">
                    <h4><span class="glyphicon glyphicon-lock">Password</span></h4></font></label></label>
                    <input type="password" id="password" name="password" class="form-control" />
                </div>
                  
                <input type="submit" value="Submit"  class="btn btn-default">
                  
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>

        </div>
    </div>
</div>
</body>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
