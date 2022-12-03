
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Contact</title>
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
<!-- Map Begin -->
<div class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.484300945954!2d106.76973361471904!3d10.850721392271097!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752763f23816ab%3A0x282f711441b6916f!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgcGjhuqFtIEvhu7kgdGh14bqtdCBUcC4gSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2s!4v1664013233596!5m2!1svi!2s" height="500" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</div>
<!-- Map End -->

<!-- Contact Section Begin -->
<section class="contact spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="contact__text">
                    <div class="section-title">
                        <span>Information</span>
                        <h2>Contact Us</h2>
                        <p>Nguyễn Việt Hoàng - 20110130</p>
                    </div>
                    <ul>
                        <li>
                            <h4>Việt Nam</h4>
                            <p>91/5/3 Đường số 8, phường Linh Trung, thành phố Thủ Đức<br />0703-508-176</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="contact__form">
                    <form action="#">
                        <div class="row">
                            <div class="col-lg-6">
                                <input type="text" placeholder="Name">
                            </div>
                            <div class="col-lg-6">
                                <input type="text" placeholder="Email">
                            </div>
                            <div class="col-lg-12">
                                <textarea placeholder="Message"></textarea>
                                <button type="submit" class="site-btn">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact Section End -->

<!-- Footer Section Begin -->
<jsp:include page="../partials/Footer.jsp"/>
<!-- Footer Section End -->

<%--<!-- Search Begin -->--%>
<%--<div class="search-model">--%>
<%--    <div class="h-100 d-flex align-items-center justify-content-center">--%>
<%--        <div class="search-close-switch">+</div>--%>
<%--        <form class="search-model-form">--%>
<%--            <input type="text" id="search-input" placeholder="Search here.....">--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<!-- Search End -->--%>

<!-- Js Plugins -->
<jsp:include page="../partials/js.jsp"/>
</body>

</html>
