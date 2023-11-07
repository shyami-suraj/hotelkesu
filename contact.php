<?php
include_once "navbar.php"
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">



        
<footer class="noto-font-family">
            <div class="overlay"  style="background-color:black;">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-12">
                           <div style="margin-top:-250px; margin-left:-30px" >
                            <video width="370" height="900" controls loop autoplay muted><source src="imgs/hotel.mp4" type="video/mp4" ></video>
</div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <h3>Find us</h3>
                            <p>
                                Phone: 01-4390320<br>
                                Telephone: 01-5908608<br>
                                Email: info@hotelkesuhome.com<br>
                                Address: Khusibu, Nayabazar,<br>
                                Kathmandu, Nepal
                                
                            </p>                                  
                        </div>
                        <div class="col-lg-4 col-md-6 col-12 form">
                           
                            <img src="imgs/logo.PNG" alt="#" />
                            <ul>
                                
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        
        <div class="copyright noto-font-family">
        </div>
        
        <script src="js1/jquery-3.3.1.min.js"></script>
        <script src="js1/bootstrap.min.js"></script>
        <script>
            $(function () {
                
                'use strict';
                
                var winH = $(window).height();
                
                $('header').height(winH);
                
                $('.navbar ul.navbar-nav li a').on('click', function (e) {
                    
                    var getAttr = $(this).attr('href');
                    
                    e.preventDefault();
                    $('html').animate({scrollTop: $(getAttr).offset().top}, 1000);
                });
            });
        </script>
    </body>
</html>

</body>
</html>
