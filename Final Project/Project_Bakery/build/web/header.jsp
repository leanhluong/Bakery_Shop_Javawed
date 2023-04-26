

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="mainmenu-area">
    <div class="container">
        <div class="row">
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav " >
                    <li> <a style="padding:  0px;" href="home.jsp"><img  style="width: 80px" src="img/logo.png" alt="alt"/></a></li>
                    <li> <a class="bi bi-house-fill" href="home">Home</a></li>
                    <li><a href="productlist">Menu Cakes</a> </li>
                        <c:if  test="${sessionScope.account.role == 1}">
                        <li><a  href="manage">Manage product</a>

                        </li>
                    </c:if>  
                    <li>
                        <form action="productlist"  class="d-flex mx-auto flex-item " style="margin-top: 14px">
                            <div class="col-md-8">
                                <input  type="text" name="search" class="form-control" value="${search}"
                                        style="width: 200px;" placeholder="Search By Name" />
                            </div>

                            <div class="col-md-4">
                                <button class="btn btn-danger">Search</button>
                            </div>
                        </form>
                    </li>
                    <c:if  test="${sessionScope.carts.size()==null}">
                        <li><a class="bi bi-cart-plus-fill" " href="carts">Cart</a> 
                        </li>
                    </c:if>  
                    <c:if  test="${sessionScope.carts.size()!=null}">
                        <li><a class="bi badgee bi-cart-plus-fill" value =' ${sessionScope.carts.size()}' " href="carts">Cart </a> 

                        </c:if>  
                    </li>
                    <c:if test="${sessionScope.account != null}">

                        <li><a class="bi bi-person-fill" href="profile?username=${sessionScope.account.username}">${sessionScope.account.displayName}</a></li>
                        <li><a href="logout">Logout</a></li>
                        </c:if>
                        <c:if test="${sessionScope.account == null}">
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="register.jsp">Sign Up</a></li>
                        </c:if>
                </ul>
            </div>  
        </div>
    </div>
</div> <!-- End mainmenu area -->
