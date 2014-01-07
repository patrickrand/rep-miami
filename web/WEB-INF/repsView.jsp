<%--
Document   : repsView
Created on : Dec 30, 2013, 9:22:03 PM
Author     : Patrick
--%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>repMiami</title>
        <!-- Bootstrap core CSS -->
        <link href="./libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro|News+Cycle|Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <!-- Custom styles for this template -->
        <link href ="./stylesheets/reps_stylesheet.css" rel="stylesheet">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                <form class="" method="post" action="home" >
                    <ul class="nav navbar-nav navbar-left">
                        <li class="brand"><a href="http://www.codeformiami.org"><span class="c4mred">Code</span> <span class="c4mblue">For Miami</span></a></li>
                        <li class="active"><a href="./index.jsp">Home</a></li>
                        <li><a href="../rep305/about">About</a></li>
                        <li class="dropdown" id="menu1">
                            <a href="#menu1" class="dropdown-toggle" data-toggle="dropdown">
                                Resources
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="https://www.miamidade.gov">Miami-Dade County</a>
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
                    
                </form>
            </nav>
            <div class="container">
                <input type="hidden" id="apiKey" name="apiKey" value="${apiKey}">
                <input type="hidden" id="inputAddress" name="inputAddress" value="${inputAddress}">
                <script src="scripts/repsView.js"></script>
                <div class="row">
                    <div class="col-lg-12">
                        <div class ="page-header1">Location<div class ="header-small">
                                <div id ="locationDiv"></div>
                                <div id ="sectionDiv"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" panel-group" id="accordion">
                    <div class="rep-panel rep-panel-default">
                        <!-- Default rep-panel contents -->
                        <div class="rep-panel-heading">
                            <a data-toggle="collapse" data-parent="#accordion" href="#Federal_Reps">
                                Federal</a></div>
                        <div id="Federal_Reps" class="panel-collapse collapse in">
                            <ul class="rep-list-group">
                                <div class="federal"></div>
                            </ul></div>
                    </div>
                    <div class="rep-panel rep-panel-default">
                        <!-- Default rep-panel contents -->
                        <div class="rep-panel-heading">
                            <a data-toggle="collapse" data-parent="#accordion" href="#State_Reps">
                                State</a></div>
                        <div id="State_Reps" class="panel-collapse collapse">
                            <ul class="rep-list-group">
                                <div class="state"></div>
                            </ul></div>
                    </div>
                    <div class="rep-panel rep-panel-default">
                        <!-- Default rep-panel contents -->
                        <div class="rep-panel-heading">
                            <a data-toggle="collapse" data-parent="#accordion" href="#County_Reps">
                                County</a></div>
                        <div id="County_Reps" class="panel-collapse collapse">
                            <ul class="rep-list-group">
                                <div class="county"></div>
                            </ul>
                        </div>
                    </div>
                    <div class="rep-panel rep-panel-default">
                        <!-- Default rep-panel contents -->
                        <div class="rep-panel-heading">
                            <a data-toggle="collapse" data-parent="#accordion" href="#City+Other_Reps">
                                City + Other</a></div>
                        <div id="City+Other_Reps" class="panel-collapse collapse">
                            <ul class="rep-list-group">
                                <div class="city+other"></div>
                            </ul>
                        </div>
                    </div>
                </div>
                <hr>
                  <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-4 col-md-offset-4"> 
                        <br>
                        <p class="text-center text-muted"> &copy; Code For Miami</p>
                    </div>
                </div>
            </div> <!-- /container -->
        </section>

            </div> <!-- /container -->
            <!-- JavaScript -->
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
            <script src="./libs/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
