<%-- 
    Document   : index
    Created on : Jul 21, 2022, 2:53:01 PM
    Author     : Silondis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/affablebean.css">
        <title>*Cart*</title>
    </head>
    <body>
        <div id="main">
            <div id="header">
                <div id="widgetBar">
                    <div class="headerWidget">[ language toggle ] </div>
                    <div class="headerWidget">[ shopping cart widget ] </div>
                </div>

                <a href="#"> 
                    <img id="logo" src="#" alt="Affable Bean logo"> 
                </a>
                <img id="logoText" src="#" alt="the affable bean">
            </div>

            <div id="cartMainContent">
                <div id="cartSummary">Your shopping cart contains 7 items.</div>
                <div id="cartActions">
                    <div><strong><a href="#">clear cart</a></strong></div>
                    <div><strong><a href="#">continue shopping</a></strong></div>
                    <div><strong><a href="#">proceed to checkout &rarr;</a></strong></div>
                </div>
                <div id="subtotal">
                    <strong>subtotal: &euro; 9.83</strong>
                </div>
                <div id="cartItemsHead">
                    <div class="cartProductImage">product</div>
                    <div class="productName"> name</div>
                    <div class="cartPrice">price</div>
                    <div class="quantity">quantity</div>
                </div>
                <div id="cartItems">
                    <div class="cartItem">
                        <div class="cartProductImage"> product image</div>
                        <div class="productName"> [ product name ] </div>
                        <div class="cartPrice">
                            <div><strong>&euro; 2.38</strong></div>
                            <div>( &euro; 1.19/unit )</div>
                        </div>
                        <div class="quantity">
                            <input type="text" name="quantity" value="1" size="3" />
                            <input class="updateButton" type="submit" value="update" name="update" />
                        </div>
                    </div>
                    <div class="cartItem">
                        <div class="cartProductImage"> product image</div>
                        <div class="productName"> [ product name ] </div>
                        <div class="cartPrice">
                            <div><strong>&euro; 2.38</strong></div>
                            <div>( &euro; 1.19/unit )</div>
                        </div>
                        <div class="quantity">
                            <input type="text" name="quantity" value="1" size="3" />
                            <input class="updateButton" type="submit" value="update" name="update" />
                        </div>
                    </div>
                    <div class="cartItem">
                        <div class="cartProductImage"> product image</div>
                        <div class="productName"> [ product name ] </div>
                        <div class="cartPrice">
                            <div><strong>&euro; 2.38</strong></div>
                            <div>( &euro; 1.19/unit )</div>
                        </div>
                        <div class="quantity">
                            <input type="text" name="quantity" value="1" size="3" />
                            <input class="updateButton" type="submit" value="update" name="update" />
                        </div>
                    </div>
                    
                </div>
            </div>

            <div id="footer">
                <hr>
                <p id="footerText">[ footer text ]</p>
            </div>
        </div>
    </body>
</html>