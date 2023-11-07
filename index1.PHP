<?php
include_once "navbar.php";

?>
        
        <header id="home">
            <div class="small-container">
                
                <div class="row">
                    <div class="col-lg-4 col-12 lobster-font-family d-flex align-items-center">
                        <h2>“Long is the night to him who is awake; long is a mile to him who is tired; long is life to the foolish who do not know the true law.”
― Siddhārtha Gautama Buddha</h2>
                        <button><a href="#">About hotel</a></button>
                    </div>
                </div>
                <div class="h-slider roboto-font-family welcome d-flex align-items-center justify-content-center">
                    <h1 class="text-capitalize">Welcome to <br><span>KESU HOME</span></h1>
                    <div id="headerslider" class="carousel slide" data-ride="carousel">
                      <div class="carousel-inner">
                        <div class="carousel-item carousel-three active"></div>
                        <div class="carousel-item carousel-two"></div>
                        <div class="carousel-item carousel-one"></div>
                      </div>
                      
                    </div>
                </div>
            </div>
            <div class="st-rec"></div>
            <div class="rd-rec"></div>
        </header>
        
        <div class="about lobster-font-family">
            <div class="container">
                <h2 class="text-center text-capitalize">About our hotel</h2>
                <div style="float:right;">
                <video width="620" height="800" controls loop autoplay muted><source src="imgs/hotel.mp4" type="video/mp4"></video>
                </div>
                <div class="row" >
                  
                    <div class="col-12" >
                        <h4>A best place to enjoy your life</h4>
                        <p style="color: white;">We are, Hotel Kesu Home newly established in the hospitality industry.Hotel Kesu Home is located in Nayabazar and offers luxurious accommodations including a rooftop restaurant, private parking, a jacuzzi, and a sauna.
                            The décor and rooms of Hotel Kesu Home are designed to resurrect spectacular Newari architecture, evoking the beauty of old Kathmandu.</p>
                    </div>
                                                        <a><button type="submit" onclick='window.print()' class="btn btn-primary btn-block noPrint"><i class="bi bi-printer-fill"></i></button>

                    
                </div>
                    
                    
            </div>
            
            
            
        </div>
        
        
        
        
      
       
        
        
        <footer class="noto-font-family">
            <div class="overlay">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-12">
                            <h3>Useful links</h3>
                            <ul class="text-capitalize">
                            <li><a href="index1.php">Home</a></li>
                                <li><a href="room.php">Rooms</a></li>
                                <li><a href="Gallery.php">Gallery</a></li>
                                <li><a href="Userindex.php">Book now</a></li>
                            </ul>
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