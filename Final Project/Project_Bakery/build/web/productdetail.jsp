

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Product Page - Ustora Demo</title>

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
        <!--css -  mới--> 
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
        <link rel="stylesheet" href="css/productdetails.css"/>

    </head>
    <body>

        <jsp:include page="header.jsp"/>

        <div class="product-big-title-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="product-bit-title text-center">
                            <h2>Shop</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">

                        <div class="single-sidebar">
                            <h2 class="sidebar-title">New Products</h2>
                            <c:forEach items="${proList}" var="c">
                                <div class="thubmnail-recent">
                                    <a href="productdetail?id=${c.id}"><img style="height: 80px;width: 80px;" src="${c.imageUrl}" class="recent-thumb" alt=""></a>
                                    <h2><a href="productdetail?id=${c.id}">${c.name}</a></h2>
                                    <div class="product-sidebar-price">
                                        <ins>${c.price}$</ins> 
                                    </div>                             
                                </div>
                            </c:forEach>


                        </div>


                    </div>

                    <div class="col-md-8">
                        <div class="product-content-right">
                            <div class="product-breadcroumb">
                                <a href="home">Home</a>
                                <a href="">${product.name}</a>
                            </div>
                            <div class="container-fliud">
                                <div class="wrapper row">
                                    <div class="preview col-md-6">

                                        <div class="preview-pic tab-content">
                                            <div class="tab-pane active" id="pic-1"><img src="${product.imageUrl}" width="100"/></div>
                                            <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
                                            <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
                                            <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
                                            <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>
                                        </div>


                                    </div>
                                    <div class="details col-md-6">
                                        <h3 class="product-title">${product.name}</h3>
                                        <h3 class="product-title">Code: ${product.code}</h3>
                                        <div class="rating">
                                            <div class="stars">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                            </div>

                                        </div>
                                        <h3 class="product-title">Description</h3>
                                        <p class="product-description">${product.description}</p>
                                        <h4 class="price">
                                            price: 
                                            <span class="product-inner-price">                                 

                                                <ins>${product.price}$</ins> 

                                            </span>
                                        </h4>
                                        <h5 class="sizes">sizes:
                                            <span class="size" data-toggle="tooltip" title="small">s</span>
                                            <span class="size" data-toggle="tooltip" title="medium">m</span>
                                            <span class="size" data-toggle="tooltip" title="large">l</span>
                                            <span class="size" data-toggle="tooltip" title="xtra large">xl</span>

                                        </h5>
                                        <h5 >
                                            Quantity <input type="number" title="Qty" name="quantity" min="1" step="1">
                                        </h5>        
                                                <div>
                                                <a href="add_to_cart?productId=${product.id}" class="add-to-cart btn btn-default" type="submit">add to cart</a>
                                                <a href="add_to_cart?productId=${product.id}" class="add-to-cart btn btn-default" type="submit">Buy Now</a>
                                                </div>
                                        <input type="hidden" name="id" value="${product.id}">
                                    </div>
                                </div>
                            </div>
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
