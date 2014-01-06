<%--
    Document   : index
    Created on : Dec 25, 2013, 7:35:55 PM
    Author     : Patrick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="../../assets/ico/favicon.png">

        <title>repMiami</title>

        <!-- Bootstrap core CSS -->
        <link href="./libs/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href ="./stylesheets/home.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro|News+Cycle|Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="../../assets/js/html5shiv.js"></script>
          <script src="../../assets/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <header>
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                <form class="" method="post" action="home" >

                    <ul class="nav navbar-nav navbar-left">
                        <li class="brand"><a href="http://www.codeformiami.org"><span class="c4mred">Code</span> <span class="c4mblue">For Miami</span></a></li>
                        <li class="active"><a href="">Home</a></li> 
                        <li><a href="../rep305/about">About</a></li>
                        <li class="dropdown" id="menu1">
                            <a href="#menu1" class="dropdown-toggle" data-toggle="dropdown">
                                Resources
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="https://www.miamidade.gov">
                                         Miami-Dade County</a>
                                </li>
                                <li>
                                    <a href="http://www.sunlightfoundation.com">
                                        Sunlight Foundation</a>
                                </li>
                                <li>
                                    <a href="https://github.com/patr7/rep-miami">
                                        GitHub</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <li class="divider-vertical"></li>
                        <li>
                            <a href="http://es.codeformiami.org">
                                Español
                            </a>
                        </li>

                    </ul>

                </form>
            </nav>    
        </header>
        <div class="container-full">
            <div class="row">
                <div class="col-lg-12 text-center v-center"><br><br>
                    <img class="profile-img" src="images/repMiamiLogo.png" />
                    <h1><p class="lead">
                            The source for all your Miami-Dade voter needs.</p><br></h1>
                </div>
            </div>
            <div class="row"

                 <div class="col-lg-12 text-center">
                    <form class="col-lg-12 text-center form-inline" method="post" action="RepsViewController" role="form">
                        <div class="form-group" style="width:280px;text-align:center;margin:0 auto;">
                            <label class="sr-only" for="inputStreet">Street Address</label>
                            <input type="text" class="form-control drop" id="inputAddress" name ="inputAddress" value="" placeholder="Enter street address">

                        </div>
                        <div class="form-group" style="width:210px;text-align: center; margin:0 auto;">
                            <label class="sr-only" for="dropdownCity">City</label>
                            <select class="form-control drop" id="dropdownCity" name="dropdownCity">
                                <option>Weston</option><option>Aventura</option>
                                <option>Bal Harbour</option><option>Bay Harbor Islands</option><option>Biscayne Park</option>
                                <option>Coral Gables</option><option>Doral</option><option>El Portal</option>
                                <option>Florida City</option><option>Golden Beach</option><option>Homestead</option>
                                <option>Key Biscayne</option><option>Medley</option><option>Miami</option>
                                <option>Miami Beach</option><option>Miami Gardens</option><option>Miami Shores Village</option>
                                <option>Miami Springs</option><option>North Bay Village</option><option>North Miami</option>
                                <option>North Miami Beach</option><option>Opa-Locka</option><option>Pinecrest </option>
                                <option>South Miami</option><option>Sunny Isles Beach</option><option>Surfside</option>
                                <option>Sweetwater</option><option>Virginia Gardens</option>
                            </select>
                        </div>
                        <button name="searchButton" id="searchButton" class="btn btn-primary1 btn-lg"><span class="glyphicon glyphicon-search"></span></button>
                        <br><br><p class ="lead"> or </p>
                        <div class="form-group" style="width:240px;text-align:center;margin:0 auto;">
                            <input type="hidden" id="inputCurrentLocation" name="inputCurrentLocation">
                            <button class="btn btn-primary1 drop" type="button">Use current location <span class="glyphicon glyphicon-map-marker"></span></button></div>   
                    </form>
                </div></div>
            <br><br><br><br><br>
        </div> 
        <!--  <div class="container">
  
              <div class="row">
  
                  <div class="col-lg-12">
                      <h1 class="page-header1">What is repMiami?<small></small></h1>
                      <p>about</p>
                      <p>about</p>
                  </div>
  
              </div>
          </div> 
          <div class="container">
              <hr>
              <div class="row">       
                  <div class="col-md-4">
                      <img class="img-rounded img-responsive" src="images/c4mlogo-trans.png">
                  </div>
                  <div class="col-md-4">
                      <img class="img-rounded img-responsive " src="images/Miami-Dade-County.png">
                  </div>
                  <div class="col-md-4">
                      <img class="img-rounded img-responsive" src="images/GoogleDevs-Logo.png">
                  </div>
              </div>   
          </div> 
        -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-4 col-md-offset-4"> 
                        <br>
                        <p class="text-center text-muted"> &copy; Code For Miami</p>
                        <p class="text-center text-muted"></p>
                    </div>
                </div>
            </div> <!-- /container -->
        </section>


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="./libs/jquery/jquery-2.0.3.min.js"></script>
        <script src="./libs/bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>
