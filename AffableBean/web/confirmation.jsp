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
        <title>*Confirmation*</title>
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

            <div id="confirmationTopDiv">
                <h4>
                    Your order has been successfully processed and will be delivered within 24 hours.
                </h4>
                <p>
                    Please keep a note of your confirmation number: <strong>321886792</strong> <br>
                    If you have a query concerning your order, feel free to <a href="#">contact us</a>.
                </p>
                <p>
                    Thank you for shopping at the Affable Bean Green Grocer!
                </p>
            </div>

            <div id="confirmationBottomDiv">
                <div id="orderSummary">
                    <div id="orderSummaryHeadingDiv"> order summary</div>
                    <div id="itemPrices">
                        <div class="orderSummaryRow">
                            <div><strong>product</strong></div>
                            <div><strong>quantity</strong></div>
                            <div><strong>price</strong></div>
                        </div>
                        <div class="orderSummaryRow">
                            <div>Seedless watermelon</div>
                            <div>1</div>
                            <div>&euro; 1.49</div>
                        </div>
                    </div>  

                    <hr>

                    <div class="payments">
                        <div class="confirmationLabels">delivery surcharge: </div>
                        <div class="confirmationCharges">&euro; 3.00</div>
                    </div>
                    <div class="payments">
                        <div class="confirmationLabels">total: </div>
                        <div class="confirmationCharges">&euro; 4.49</div>
                    </div>

                    <hr>

                    <div id="dateProcessed">
                        <strong>date processed: </strong> 8/10/10 7:48 PM
                    </div>
                </div>
                <div id="deliveryAddress">
                    <div id="deliveryAddressHeadingDiv"> delivery address</div>
                    <div class="address">
                        Jin-Soo Kwon<br>
                        Ve Stresovickach 49<br>
                        Prague 6
                    </div>
                    
                    <hr>
                    
                    <div  class="address">
                        <strong>email: </strong> jin.kwon@hotmail.kr
                    </div>                           
                    <div  class="address">
                        <strong>phone: </strong> 606338909
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