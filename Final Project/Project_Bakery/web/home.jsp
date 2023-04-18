<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
        ustora by freshdesignweb.com
        Twitter: https://twitter.com/freshdesignweb
        URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Clothes Shop</title>

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

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>


        <jsp:include page="header.jsp"/>


        <div class="slider-area">
            <!-- Slider -->
            <div class="block-slider block-slider4">
                <ul class="" id="bxslider-home4">
                    <li>
                        <img src="https://img1.junaroad.com//assets/images/mobileNotif/img-1646740764121.jpg?page_id=2390025&crsl_pos=1" alt="Slide">

                    </li>
                    <li><img src="https://ae01.alicdn.com/kf/HTB1Sdk2QFXXXXa1XpXXq6xXFXXXV/223140999/HTB1Sdk2QFXXXXa1XpXXq6xXFXXXV.jpg" alt="Slide">

                    </li>
                    <li><img src="https://fastsole.co.uk/wp-content/uploads/2017/12/Nike-Air-Max-1-Obsidian-30th-Anniversary-908375-104-Release-Date-Sneakers-Trainers-FOR-Man-Women-in-United-Kingdom-UK-Europe-EU-Germany-DE-07.jpg" alt="Slide">
                        <div class="caption-group">
                            <h2 class="caption title">
                                Nike <span class="primary">Store <strong>Ipod</strong></span>
                            </h2>
                            <h4 class="caption subtitle">Select Item</h4>

                        </div>
                    </li>
                    <li><img src="https://fastsole.co.uk/wp-content/uploads/2018/02/Nike-Air-Max-98-Gym-Red-Release-Date-AH6799-101-02.jpg" alt="Slide">
                        <div class="caption-group">
                            <h2 class="caption title">
                                Strong <span class="primary">Style <strong>Hiphop</strong></span>
                            </h2>
                            <h4 class="caption subtitle">& Jordan</h4>

                        </div>
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
                            <h2 class="section-title">New Products</h2>
                            <div class="product-carousel">

                                <c:forEach items="${proList}" var="c">
                                    <div class="single-product">
                                        <div class="product-f-image">
                                            <img style="height: 250px;widows: 150px;" src="${c.image}" alt="">
                                            <div class="product-hover">
                                                <a href="add_to_cart?productId=${c.id}" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                <a href="productdetail?id=${c.id}" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                            </div>
                                        </div>

                                        <h2><a href="productdetail?id=${c.id}">${c.name}</a></h2>

                                        <div class="product-carousel-price">
                                            <ins>${c.sale_price}$</ins> <del>${c.price}$</del>
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
                                <h2 class="section-title">Sale Products</h2>
                                <div class="product-carousel">

                                    <c:forEach items="${proList2}" var="c">
                                        <div class="single-product">
                                            <div class="product-f-image">
                                                <img style="height: 250px;widows: 150px;" src="${c.image}" alt="">
                                                <div class="product-hover">
                                                    <a href="add_to_cart?productId=${c.id}" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                    <a href="productdetail?id=${c.id}" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                                </div>
                                            </div>

                                            <h2><a href="productdetail?id=${c.id}">${c.name}</a></h2>

                                            <div class="product-carousel-price">
                                                <ins>${c.sale_price}$</ins> <del>${c.price}$</del>
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
                                <h2 class="section-title">Best Saler Products</h2>
                                <div class="product-carousel">

                                    <c:forEach items="${proList2}" var="c">
                                        <div class="single-product">
                                            <div class="product-f-image">
                                                <img style="height: 250px;widows: 150px;" src="${c.image}" alt="">
                                                <div class="product-hover">
                                                    <a href="add_to_cart?productId=${c.id}" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                    <a href="productdetail?id=${c.id}" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                                </div>
                                            </div>

                                            <h2><a href="productdetail?id=${c.id}">${c.name}</a></h2>

                                            <div class="product-carousel-price">
                                                <ins>${c.sale_price}$</ins> <del>${c.price}$</del>
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