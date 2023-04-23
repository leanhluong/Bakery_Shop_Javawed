

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
        <title>Cart Page</title>

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

        <div class="product-big-title-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="product-bit-title text-center">
                            <h2>Shopping Cart</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End Page title area -->


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
                    <c:choose>
                        <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0}">
                            <h2 style="color:olivedrab; text-align: center">List Cart</h2>
                            <h3 style="color:red; text-align: center">There are currently no items in the cart!!!</h3>
                        </c:when>
                        <c:otherwise>
                            <div class="col-md-8">
                                <div class="card mb-4">
                                    <div class="card-header py-3">
                                        <h5 class="mb-0">Currently has ${sessionScope.carts.size()} products </h5>
                                    </div>
                                    <c:forEach items="${carts}" var="u">
                                        <div class="card-body">
                                            <!-- Single item -->
                                            <form action="update-quantity">
                                                <input type="hidden" name="id" value="${u.value.product.id}">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                                                        <!-- Image -->
                                                        <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">

                                                            <a href="productdetail?id=${u.value.product.id}"><img  
                                                                    src="${u.value.product.imageUrl}"
                                                                    class="w-100" alt="Blue Jeans Jacket"    
                                                                    width="100"/>
                                                            </a>
                                                        </div>
                                                        <!-- Image -->
                                                    </div>

                                                    <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">

                                                        <!-- Data -->
                                                        <p><strong>${u.value.product.name}</strong></p>
                                                        <a href="delete-cart?id=${u.value.product.id}"  
                                                           style="color: red; text-decoration: none;border: 2px solid red;border-radius: 5px;padding: 5px; ">
                                                            <i class="bi bi-trash"></i>
                                                            Delete
                                                        </a>
                                                        <!-- Data -->
                                                    </div>

                                                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                                                        <!-- Quantity -->
                                                        <div class="d-flex mb-4" style="max-width: 50px">
                                                            <div class="form-outline">
                                                                <label class="form-label" for="form1">Quantity</label>
                                                                <input  onchange="this.form.submit()" id="form1" name="quantity" value="${u.value.quantity}" min="1"  type="number" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <!-- Quantity -->

                                                        <!-- Price -->

                                                        <div class="product-carousel-price">
                                                            <ins>Price:$${u.value.product.price}</ins> 

                                                        </div>
                                                        <p class="product-carousel-price">
                                                            <ins>Total Prices:$${u.value.product.price*u.value.quantity}</ins>
                                                        </p>
                                                        <!-- Price -->
                                                    </div>
                                                </div>
                                                <!-- Single item -->
                                                <hr class="my-4" />
                                            </form>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="card mb-4">
                                    <input type="submit" value="Total: $${totalMoney}" name="update_cart" class="button">
                                </div>
                                <hr class="my-4" />
                                <div class="card mb-4 mb-lg-0">
                                    <c:if test="${sessionScope.account == null}">
                                        <form method="get" action="checkout" class="shipping_calculator">
                                            <h2 style="text-align: center"><a style="border-radius: 5px" class="shipping-calculator-button" data-toggle="collapse" href="#calcalute-shipping-wrap" aria-expanded="false" aria-controls="calcalute-shipping-wrap">
                                                    <input type="submit" value="Check Oder" name="update_cart" class="button">
                                                </a>
                                            </h2>
                                            <section id="calcalute-shipping-wrap" class="shipping-calculator-form collapse">

                                                <p class="form-row form-row-wide text-center">
                                                    Customer Name<input type="text" id="calc_shipping_postcode" name="username" placeholder="Name" " class="input-text"  > 
                                                </p>

                                                <p class="form-row form-row-wide text-center">
                                                    Address<input type="text" id="calc_shipping_postcode" name="address" placeholder="Address"  class="input-text"></p>

                                                <p class="form-row form-row-wide text-center">
                                                    Phone<input type="text" id="calc_shipping_postcode" name="phone" placeholder="Phone" class="input-text"></p>

                                                <p class="form-row form-row-wide text-center">
                                                    Note<textarea class="form-control" id="note" name="note" rows="3"></textarea>
                                                </p>
                                                <input type="hidden" name="total" value="${totalMoney}">
                                                <p><button class="button" value="1" name="calc_shipping" type="submit">Order</button></p>

                                            </section>
                                        </form>

                                    </c:if>
                                    <c:if test="${sessionScope.account != null}">
                                        <form method="get" action="checkout" class="shipping_calculator">
                                            <h2 style="text-align: center"><a style="border-radius: 5px"class="shipping-calculator-button" data-toggle="collapse" href="#calcalute-shipping-wrap" aria-expanded="false" aria-controls="calcalute-shipping-wrap">
                                                    <input type="submit" value="Check Oder" name="update_cart" class="button">
                                                </a>
                                            </h2>
                                            <section id="calcalute-shipping-wrap" class="shipping-calculator-form collapse">

                                                <p class="form-row form-row-wide text-center">
                                                    Customer Name<input type="text" id="calc_shipping_state" name="username" placeholder="Name" value="${sessionScope.account.username}" class="input-text"  readonly> 
                                                </p>

                                                <p class="form-row form-row-wide text-center">
                                                    Address<input type="text" id="calc_shipping_postcode" name="address" placeholder="Address" value="${sessionScope.account.address}" class="input-text"></p>

                                                <p class="form-row form-row-wide text-center">
                                                    Phone<input type="text" id="calc_shipping_postcode" name="phone" placeholder="Phone" value="${sessionScope.account.phone}" class="input-text"></p>
                                                <p class="form-row form-row-wide text-center">
                                                    Note<textarea class="form-control" id="note" name="note" rows="3"></textarea>
                                                </p>

                                                <input type="hidden" name="total" value="${total}">
                                                <p><button class="button" value="1" name="calc_shipping" type="submit">Order</button></p>

                                            </section>
                                        </form>
                                    </c:if>    
                                </div>
                            </div>

                        </c:otherwise>
                    </c:choose>
                    <div class="text-center"><a href="productlist">
                            <button style="height:42px;width:135px;" value="Buy more" class="checkout-button button alt wc-forward btn-danger">Continue Buy</button>
                        </a>                  
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
