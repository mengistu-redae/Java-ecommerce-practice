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
        <title>*Checkout*</title>
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

            <div id="checkoutTopDiv">
                <h1>checkout</h1>
                In order to purchase the items in your shopping cart, please provide us the following information:
            </div>
            <div id="checkoutBottomDiv">
                <div id="customerInfo">
                    <form name="customerInfo" action="confirmation.jsp" method="POST">
                        name: <input type="text" name="customerName" value="your full name" size="25" /> <br>
                        email: <input type="text" name="customerEmail" value="youremail@example.com" size="25" /> <br>
                        phone: <input type="text" name="customerPhone" value="+2519000095" size="25" /> <br>
                        address: <input type="text" name="customerAddress" value="your address" size="25" /> <br>
                        prague: <select id="pragueOption" name="prague">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                        </select> <br>
                        credit card number: <input type="text" name="creditCardNumber" value="" size="25" /> <br>
                        <input id="submitPurchase" type="submit" value="submit purchase" name="submitPurchase" /> <br>
                    </form>
                </div>
                <div id="billingInfo">
                    <div id="deliveryInfo">
                        <ul>
                            <li>Next-day delivery is guaranteed</li>
                            <li>A &euro; 3.00 delivery surcharge is applied to all purchase orders</li>
                        </ul>
                    </div>
                    <div id="chargeSummary">   
                        <div id="checkoutSubtotal">
                            <div id="subtotalLabel">subtotal: </div>
                            <div id="subtotalCharge">&euro; 9.83</div>
                        </div>
                        <div id="deliverySurcharge">
                            <div id="deliveryLabel">delivery surcharge: </div>
                            <div id="deliveryCharge">&euro; 3.00</div>
                        </div>
                        <div id="chargeSummaryHr">
                            <hr>
                        </div>
                        <div id="checkoutTotal">
                            <div id="totalLabel">total: </div>
                            <div id="totalCharge">&euro; 12.83</div>
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