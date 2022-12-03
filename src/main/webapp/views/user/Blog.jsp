c:forEach=""
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <title>Blog</title>
  <jsp:include page="../partials/style.jsp"/>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
  <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<<jsp:include page="../partials/Header.jsp"/>
<!-- Header Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-blog set-bg" data-setbg="${pageContext.request.contextPath}/img/breadcrumb-bg.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h2>Our Blog</h2>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Blog Section Begin -->
<section class="blog spad">
  <div class="container">
    <div class="row">
      <c:forEach begin="1" end="9" var="o">
        <div class="col-lg-4 col-md-6 col-sm-6">
          <div class="blog__item">
            <div class="blog__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/img/blog/blog-1.jpg"></div>
            <div class="blog__item__text">
              <span><img src="${pageContext.request.contextPath}/img/icon/calendar.png" alt=""> 16 February 2020</span>
              <h5>What Curling Irons Are The Best Ones</h5>
              <a href="#">Read More</a>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</section>
<!-- Blog Section End -->

<!-- Footer Section Begin -->
<jsp:include page="../partials/Footer.jsp"/>
<!-- Footer Section End -->

<!-- Js Plugins -->
<jsp:include page="../partials/js.jsp"/>
</body>

</html>