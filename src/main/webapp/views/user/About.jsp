<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>About</title>
    <jsp:include page="../partials/style.jsp"/>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>
<!--Header Section Begin -->
<jsp:include page="../partials/Header.jsp"/>
<!-- Header Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option" style="margin-top: 100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4>About Us</h4>
                    <div class="breadcrumb__links">
                        <a href="/Home/Index">Home</a>
                        <span>About Us</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Team Section Begin -->
<section class="team spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <span>Our Team</span>
                    <h2>Meet Our Team</h2>
                </div>
            </div>
        </div>
        <div class="align-content-center">
            <div class="col-sm">
                <div class="team__item">
                    <img src="${pageContext.request.contextPath}/img/anhnen.JPEG" alt="">
                    <h4>Nguyễn Việt Hoàng</h4>
                    <span>FE-BE-DATA-UX/UI</span>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Team Section End -->


<!-- Footer Section Begin -->
<jsp:include page="../partials/Footer.jsp"/>
<!-- Footer Section End -->


<!-- Js Plugins -->
<jsp:include page="../partials/js.jsp"/>
</body>

</html>