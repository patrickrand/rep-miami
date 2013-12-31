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
                        <li class="active"><a href="">Home</a></li> 
                        <li><a href="../rep305/about">About</a></li>

                        <li><a href="repsViewer.jsp">Legislative Process</a></li>
                        <li><a href="repsCarousel.jsp">Code For Miami</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">

                        <li><a href="../rep305/espanol">Espanol</a></li>
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
            <div class="row">
                <div class="col-lg-12 text-center">
                    <form class="col-lg-12 text-center form-inline" method="post" action="repsView.jsp" role="form">
                        <div class="form-group" style="width:280px;text-align:center;margin:0 auto;">
                            <label class="sr-only" for="inputStreet">Street Address</label>
                            <input type="text" class="form-control input-lg" id="inputaddress" placeholder="Enter Street Address">
                        </div>
                        <div class="form-group" style="width:150px;text-align:center;margin:0 auto;">

                            <label class="sr-only" for="dropdownCity">City</label>
                            <select class="form-control input-lg" id="dropdownCity">
                                <option>Miami</option><option>Wynwood</option><option>Miami Beach</option>
                                <option>Hialeah</option><option>Overtown</option><option>Homestead</option>
                            </select>
                        </div>
                        <button name="searchButton" id="searchButton" class="btn btn-primary1 btn-lg"><span class="glyphicon glyphicon-search"></span></button>
                        <br><br><p class ="lead"> or </p>
                        <div class="form-group" style="width:240px;text-align:center;margin:0 auto;">
                            <input type="hidden" id="inputCurrentLocation" name="inputCurrentLocation">
                            <button class="btn btn-lg btn-primary1" type="button">Use current location <span class="glyphicon glyphicon-map-marker"></span></button></div>   
                    </form>
                </div></div>
            <br><br><br><br><br>
        </div> <!-- /container full -->
        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <h1 class="page-header1">What is repMiami?<small></small></h1>
                    <p>This is a great place to start off with a short and sweet description of your company, organization, or whatever purpose your website is serving. Keep it friendly, engaging, but short enough to where you won't lose your reader!</p>
                    <p>If you need a bit more space to describe what is going on, we recommend putting a picture in this section. Use the <code>pull-right</code> class on the image to make it look good!</p>
                </div>

            </div>
        </div>
        <div class="container">
            <hr>
            <div class="row">       
                <div class="col-md-4">
                    <img class="img-rounded img-responsive" src="images/c4mlogo-trans.png">
                     <h3><small></small></h3>
                    <p></p>
                </div>
                <div class="col-md-4">
                    <img class="img-rounded img-responsive " src="images/Miami-Dade-County.png">
                    <h3><small></small></h3>
                    <p></p>
                </div>
                <div class="col-md-4">
                    <img class="img-rounded img-responsive" src="images/GoogleDevs-Logo.png">
                    <h3><small></small></h3>
                    <p></p>
                </div>
            </div>   
        </div> 

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-4 col-md-offset-4"> 
                        <br>
                        <p class="text-center text-muted">Code For Miami &copy; CFA</p>
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
