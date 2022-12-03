<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<!--Header Section Begin -->
<header class="header fixed-top">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-3 col-md-3">
        <div class="header__logo">
          <a href="${pageContext.request.contextPath}/Home/Index"><img src="${pageContext.request.contextPath}/img/logo.png" alt="logo"></a>
        </div>
      </div>
      <div class="col-lg-7 col-md-7">
        <nav class="header__menu mobile-menu">
          <ul>
            <li><a href="${pageContext.request.contextPath}/Home/Index">Home</a></li>
              <li ><a href="${pageContext.request.contextPath}/Shop">Shop</a></li>
            <li><a href="${pageContext.request.contextPath}/Home/Blog">Blog</a></li>
            <li><a href="${pageContext.request.contextPath}/Home/About" >About us</a></li>
            <li><a href="${pageContext.request.contextPath}/Home/Contact">Contacts</a></li>
              <c:if test="${sessionScope.acc.isAdmin == 1}">
                  <li><a href="/Manager">Manager</a></li>
              </c:if>
              <c:if test="${sessionScope.acc != null}">
                  <li class="nav-item">
                      <a class="nav-link" href="#">Hello ${sessionScope.acc.username}</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a>
                  </li>
              </c:if>
              <c:if test="${sessionScope.acc == null}">
                  <li class="nav-item">
                      <a class="nav-link" href="${pageContext.request.contextPath}/Login.jsp">Login</a>
                  </li>
              </c:if>
          </ul>
        </nav>
      </div>
      <div class="col-lg-1 col-md-1">
        <div class="header__nav__option">
          <a href="../user/Shopping-cart.jsp" ><img src="${pageContext.request.contextPath}/img/icon/cart.png" alt=""> <span>0</span></a>
        </div>
      </div>
    </div>
    <div class="canvas__open"><i class="fa fa-bars"></i></div>
  </div>
</header>
<!-- Header Section End -->
</body>
</html>
