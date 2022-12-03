<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
  <title>Shopping-cart</title>
  <jsp:include page="../partials/style.jsp"/>
</head>

<body>
<!--Header Section Begin -->
<jsp:include page="../partials/Header.jsp"/>
<!-- Header Section End -->


<!-- Shop Details Section Begin -->
<section class="shop-details">
  <div class="product__details__pic">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="product__details__breadcrumb" style="margin-top: 50px">
            <a href="/Home/Index">Home</a>
            <a href="/Shop">Shop</a>
            <span>Product Details</span>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 col-md-3">
        </div>
        <div class="col-lg-6 col-md-9">
          <div class="tab-content">
            <div class="tab-pane active" id="tabs-1" role="tabpanel">
              <div class="product__details__pic__item">
                <img src="${detail.image}" alt="">
              </div>
            </div>
            <div class="tab-pane" id="tabs-2" role="tabpanel">
              <div class="product__details__pic__item">
                <img src="img/shop-details/product-big-3.png" alt="">
              </div>
            </div>
            <div class="tab-pane" id="tabs-3" role="tabpanel">
              <div class="product__details__pic__item">
                <img src="img/shop-details/product-big.png" alt="">
              </div>
            </div>
            <div class="tab-pane" id="tabs-4" role="tabpanel">
              <div class="product__details__pic__item">
                <img src="img/shop-details/product-big-4.png" alt="">
                <a href="https://www.youtube.com/watch?v=8PJ3_p7VqHw&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup"><i class="fa fa-play"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="product__details__content">
    <div class="container">
      <div class="row d-flex justify-content-center">
        <div class="col-lg-8">
          <div class="product__details__text">
            <h3><fmt:formatNumber value="${detail.price}" type="number" />vnđ</h3>
            <h4>${detail.proName}</h4>
            </div>
            <div class="product__details__option text-center">
              <div class="product__details__option__size" >
                <span>Size:</span>
                <label for="xxl">xxl
                  <input type="radio" id="xxl">
                </label>
                <label class="active" for="xl">xl
                  <input type="radio" id="xl">
                </label>
                <label for="l">l
                  <input type="radio" id="l">
                </label>
                <label for="sm">s
                  <input type="radio" id="sm">
                </label>
              </div>
            </div>
            <div class="product__details__cart__option text-center">
              <div class="quantity">
                <div class="pro-qty">
                  <input type="text" value="1">
                </div>
              </div>
              <a href="#" class="primary-btn">add to cart</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="product__details__tab">
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item align-items-center" >
                <a class="nav-link active" data-toggle="tab" href="#tabs-5"
                   role="tab">Description</a>
              </li>
            </ul>
            <div class="tab-content container">
              <div class="tab-pane active" id="tabs-5" role="tabpanel">
                <div class="product__details__tab__content">
                  <p class="note">${detail.tinyDes}</p>
                  <div class="product__details__tab__content__item">
                    <h5>Products Infomation</h5>
                    <p>${detail.fullDes}</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Shop Details Section End -->

<!-- Footer Section Begin -->
<jsp:include page="../partials/Footer.jsp"/>
<!-- Footer Section End -->


<!-- Js Plugins -->
<jsp:include page="../partials/js.jsp"/>
</body>

</html>