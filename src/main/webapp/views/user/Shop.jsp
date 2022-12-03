<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Shop</title>
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
                    <h4>Shop</h4>
                    <div class="breadcrumb__links" style="margin-top: 10px">
                        <a href="/Home/Index">Home</a>
                        <span style="font-weight: lighter">Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="shop__sidebar">
                    <div class="shop__sidebar__search">
                        <form action="search" method="get">
                            <input name="txt" type="text" placeholder="Search...">
                            <button type="submit"><span><i class="fa fa-search" aria-hidden="true"></i></span></button>
                        </form>
                    </div>
                    <div class="shop__sidebar__accordion">
                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                                </div>
                                <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__categories">
                                            <ul class="nice-scroll">
                                                <c:forEach items="${listC}" var="c">
                                                    <li><a href="category?CatID=${c.catID}">${c.catName}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="row">
                    <c:forEach items="${listP}" var="o">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg ="${o.image}"  title="${o.proName}" alt="${o.proName}">
<%--                                    <span class="label">Sale</span>--%>
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath}/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="detail?proID=${o.proID}"><img src="${pageContext.request.contextPath}/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>${o.proName}</h6>
                                    <a href="#" class="add-cart">+ Add To Cart</a>
                                    <h5><fmt:formatNumber value="${o.price}" type="number" /></h5>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

</section>
<!-- Shop Section End -->
<!-- Footer Section Begin -->
<jsp:include page="../partials/Footer.jsp"/>
<!-- Footer Section End -->

<!-- Js Plugins -->
<jsp:include page="../partials/js.jsp"/>
</body>

</html>
