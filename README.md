<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>GripTV.org Browser Apps Addons</title>

    <!-- Bootstrap core CSS -->
    <link href="libs/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="libs/css/style.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">GripTV.org Browser Apps Addons</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="http://www.griptv.org" target="_blank">Website</a></li>
            <li><a href="mailto:contact@griptv.org">Contact</a></li>
            <!-- <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li> -->
          </ul>
          <!-- <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">Default</a></li>
            <li><a href="../navbar-static-top/">Static top</a></li>
            <li class="active"><a href="./">Fixed top</a></li>
          </ul> -->
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h2><b>Welcome to the GripTV.org Browser Apps Addons</b></h1>
        <p>These are addons to the <a href="http://ir-apps.kutu.ru/" target="_blank">iRacing Browser Apps by Mihail Latyshov</a> and are primarily ment to add more features to the existing overlay for first person streamers.</p>
		<h4><b>Gear & Speed</b></h4>
		<p>Adds an additional blackbox showing the current gear & speed (currently in km/h).</p>
		<h4><b>Pedals & G-Force</b></h4>
		<p>Adds an additional blackbox showing the pedal inputs (throttle, brake, clutch) and a g-force meter.</p>
		
		
		<hr>
		
		
		<h3><b>Installation</b></h3>
		<ul>
		  <li>Install the iRacing Browser Apps by Mihail from <a href="http://ir-apps.kutu.ru/">here</a></li>
		  <li>Start the <code>server.exe</code></li>
		</ul><br>
		
		
		<h4><b>Gear & Speed</b></h4>
		<ol>
		  <li>Copy this link: <code>http://ir-apps.kutu.ru/ir-browserapps-addons/sd_gear-speed/</code></li>
		  <li>In OBS add new a <b>CLR Browser</b> layer and paste the copied link into <b>URL</b></li>
		  <li>Set <b>Dimensions</b> to 300px times 100px</li>
		  <li>Go to the <b>CSS</b> tab and replace all with: 
		<pre>::-webkit-scrollbar {
  visibility: hidden;}

body {
  background: inherit !important;
  margin: 0px auto;}</pre>
          </li>
		</ol>
		
		
		<br>
		
		
		<h4><b>Pedals & G-Force</b></h4>
		<ol>
		  <li>Copy this link: <code>http://ir-apps.kutu.ru/ir-browserapps-addons/sd_pedals-gforce/</code></li>
		  <li>In OBS add new a <b>CLR Browser</b> layer and paste the copied link into <b>URL</b></li>
		  <li>Set <b>Dimensions</b> to 150px times 170px</li>
		  <li>Go to the <b>CSS</b> tab and replace all with:
		
		    <pre>::-webkit-scrollbar {
  visibility: hidden;}

body {
  background: inherit !important;
  margin: 0px auto;}</pre>
		  </li>
		</ol>
		
		<hr>
		
		<h3><b>Release Notes</b></h3>
		
		<p>Feel free to send me your ideas, suggestions & bug reports to: <code>timo@wesendahl.net</code>!
		
		
		

    	<div class="row">
          <div class="col-md-6">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Date</th>
                  <th>Version</th>
                  <th>Notes</th>
              </tr>
              </thead>
              <tbody>
                <tr>
                  <td>31.10.2014</td>
                  <td>v1.0.1</td>
                  <td>Initial Release</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>

		
		
		
		
		
	    <h3><img src="libs/img/Wooow.png"> Enjoy!</h3>
		
      </div>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="libs/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
