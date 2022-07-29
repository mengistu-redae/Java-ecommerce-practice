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
        <title>*Category*</title>
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

            <div id="categoryLeftColumn">
                <div class="menu">
                    <a href="#">diary</a> 
                </div>
                <div class="menu">
                    <a href="#">meats</a> 
                </div>
                <div class="menu">
                    <a href="#">bakery</a> 
                </div>
                <div class="menu">
                    <a href="#">fruit &amp; veg</a> 
                </div>
            </div>

            <div id="categoryRightColumn">
                <div id="selectedCategory">
                    <h4>[ Selected Category ]</h4>
                </div>
                <div id="items"> 
                    <div class="item">
                        <div class="productImage"> product image</div>
                        <div class="productNameDescription">
                            <div><strong>[ product name ]</strong></div>
                            <div>[ product description ]</div>
                        </div>
                        <div class="price">[ price ]</div>
                        <div class="purchaseButton"><input type="submit" value="purchase" name="purchase" /></div>
                    </div>
                    <div class="item">
                        <div class="productImage"> product image</div>
                        <div class="productNameDescription">
                            <div><strong>[ product name ]</strong></div>
                            <div>[ product description ]</div>
                        </div>
                        <div class="price">[ price ]</div>
                        <div class="purchaseButton"><input type="submit" value="purchase" name="purchase" /></div>
                    </div>
                    <div class="item">
                        <div class="productImage"> product image</div>
                        <div class="productNameDescription">
                            <div><strong>[ product name ]</strong></div>
                            <div>[ product description ]</div>
                        </div>
                        <div class="price">[ price ]</div>
                        <div class="purchaseButton"><input type="submit" value="purchase" name="purchase" /></div>
                    </div>
                    <div class="item">
                        <div class="productImage"> product image</div>
                        <div class="productNameDescription">
                            <div><strong>[ product name ]</strong></div>
                            <div>[ product description ]</div>
                        </div>
                        <div class="price">[ price ]</div>
                        <div class="purchaseButton"><input type="submit" value="purchase" name="purchase" /></div>
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