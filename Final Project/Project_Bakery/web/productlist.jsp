

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Menu Cakes</title>

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

        <div >
            <img src="img/1.png" alt="Slide">
        </div>
        <div class="row" style="margin-top:50px;float: right;">
            <form action="productlist"  class="row col-md-7">
                <div class="col-md-7">
                    <select class="form-control" name="category" style=" width: 170px;">
                        <option value="-1">All</option>
                        <c:forEach items="${catList}" var="u">
                            <option value="${u.id}" ${category == u.id?'selected':''}>${u.name}</option>
                        </c:forEach>


                    </select>
                </div>
                <div class="col-md-1">
                    <button class="btn btn-danger">Filter</button>
                </div>
            </form>


            <form action="productlist" class="row col-md-6">
                <div class="col-md-8">
                    <input  type="text" name="search" class="form-control" value="${search}"
                            style="width: 170px;" placeholder="Search By Name" />
                </div>

                <div class="col-md-1">
                    <button class="btn btn-danger">Search</button>
                </div>
            </form>

        </div>
        <div style="clear: both"></div>
        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <c:forEach items="${proList}" var="c">
                        <div class="col-md-3 col-sm-6">
                            <div class="single-shop-product">
                                <div class="product-upper">
                                    <a href="productdetail?id=${c.id}"><img style="height: 300px;width: 300px;" src="${c.imageUrl}" alt=""></a>
                                </div>
                                <h2><a href="productdetail?id=${c.id}">${c.name}</a></h2>
                                <div class="product-carousel-price">
                                    <ins>${c.price}đ</ins> 
                                </div>  

                                <div class="product-option-shop">
                                    <a class="add_to_cart_button" data-quantity="1"
                                       data-product_sku="" data-product_id="70" rel="nofollow"
                                       style="border-radius: 10px"
                                       href="add_to_cart?productId=${c.id}">Add to cart</a>
                                    <a class="add_to_cart_button" data-quantity="1" 
                                       data-product_sku="" data-product_id="70" rel="nofollow"
                                       style="border-radius: 10px"
                                       href="add_to_cart?productId=${c.id}">Buy Now</a>
                                </div>                       
                            </div>
                        </div>
                    </c:forEach>


                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="product-pagination text-center">
                            <nav>
                                <ul class="pagination">
                                    <li>
                                        <a href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <c:forEach begin="1" end="${total}" var="c">
                                        <li class="${page == c ? "active":""}"><a href="productlist?page=${c}&category=${category}&search=${search}" >${c}</a></li>
                                        </c:forEach>


                                    <li>
                                        <a href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>                        
                        </div>
                    </div>
                </div>
            </div>
        </div>


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
    </body>
</html>
