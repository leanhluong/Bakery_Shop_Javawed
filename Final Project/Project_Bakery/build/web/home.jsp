<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Luong Anh Bakery</title>

        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"/>

    </head>
    <body>


        <jsp:include page="header.jsp"/>


        <div class="slider-area">
            <!-- Slider -->
            <div class="block-slider block-slider4">
                <ul class="" id="bxslider-home4">
                    <li>
                        <img src="img/1.png" alt="Slide">

                    </li>
                    <li><img src="img/cake4.jpg" alt="Slide">

                    </li>
                    <li><img src="img/cake5.jpg" alt="Slide">
                    </li>
                    <li><img src="img/7.jpeg" alt="Slide">
                    </li>
                </ul>
            </div>
            <!-- ./Slider -->
        </div> <!-- End slider area -->

        <div class="promo-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo1">
                            <i class="fa fa-refresh"></i>
                            <p>30 Days return</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo2">
                            <i class="fa fa-truck"></i>
                            <p>Free shipping</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo3">
                            <i class="fa fa-lock"></i>
                            <p>Secure payments</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo4">
                            <i class="fa fa-gift"></i>
                            <p>New products</p>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End promo area -->

        <div class="maincontent-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="latest-product">
                            <h2 class="section-title">Mẫu Bánh Mới</h2>
                            <div class="product-carousel">

                                <c:forEach items="${proList}" var="c">
                                    <div class="single-product">
                                        <div class="product-f-image">
                                            <img style="height: 250px;widows: 150px;" src="${c.imageUrl}" alt="">
                                            <div class="product-hover">
                                                <a href="add_to_cart?productId=${c.id}" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                <a href="productdetail?id=${c.id}" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                            </div>
                                        </div>

                                        <h2><a href="productdetail?id=${c.id}">${c.name}</a></h2>

                                        <div class="product-carousel-price">
                                            <ins>${c.price}đ</ins> 
                                        </div> 
                                    </div>
                                </c:forEach>



                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End main content area -->



        <div class="product-widget-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="latest-product">
                                <h2 class="section-title">Bánh Kem</h2>
                                <div class="product-carousel">

                                    <c:forEach items="${proList1}" var="c">
                                        <div class="single-product">
                                            <div class="product-f-image">
                                                <img style="height: 250px;widows: 150px;" src="${c.imageUrl}" alt="">
                                                <div class="product-hover">
                                                    <a href="add_to_cart?productId=${c.id}" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                    <a href="productdetail?id=${c.id}" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                                </div>
                                            </div>

                                            <h2><a href="productdetail?id=${c.id}">${c.name}</a></h2>

                                            <div class="product-carousel-price">
                                                <ins>${c.price}đ</ins>
                                            </div> 
                                        </div>
                                    </c:forEach>



                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End product widget area -->
        
                <div class="product-widget-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="latest-product">
                                <h2 class="section-title">Bánh Ngọt</h2>
                                <div class="product-carousel">

                                    <c:forEach items="${proList2}" var="c">
                                        <div class="single-product">
                                            <div class="product-f-image">
                                                <img style="height: 250px;widows: 150px;" src="${c.imageUrl}" alt="">
                                                <div class="product-hover">
                                                    <a href="add_to_cart?productId=${c.id}" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                    <a href="productdetail?id=${c.id}" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                                </div>
                                            </div>

                                            <h2><a href="productdetail?id=${c.id}">${c.name}</a></h2>

                                            <div class="product-carousel-price">
                                                <ins>${c.price}đ</ins> 
                                            </div> 
                                        </div>
                                    </c:forEach>



                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End product widget area -->
        <jsp:include page="footer.jsp"/>


        <!-- Latest jQuery form server -->
        <script src="https://code.jquery.com/jquery.min.js"></script>

        <!-- Bootstrap JS form CDN -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <!-- jQuery sticky menu -->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>

        <!-- jQuery easing -->
        <script src="js/jquery.easing.1.3.min.js"></script>

        <!-- Main Script -->
        <script src="js/main.js"></script>

        <!-- Slider -->
        <script type="text/javascript" src="js/bxslider.min.js"></script>
        <script type="text/javascript" src="js/script.slider.js"></script>
    </body>
</html>