<!DOCTYPE html>
<html>
  <head>
   
   
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="img/ico.png">

     <title>THESS-ράμπα</title>

    <!-- Bootstrap core CSS -->
   <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<!-- Custom styles for this template -->
    <link href="_css/carousel.css" rel="stylesheet">
	
	<!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true&libraries=places"></script>

	<script type="text/javascript" src="_js/map.js"></script>
	
  
	
	<!-- Custom styles for this template -->
	<link href="_css/justified-nav.css" rel="stylesheet">
	<link rel="stylesheet" href="_css/main.css">
  
	
</head>

<body>	
	<div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="thessrampa.html">THESS-ράμπα</a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="index.html">Αρχική</a></li>
                <li class="active"><a href="map.php">Χάρτης</a></li>
                <li><a href="evaluation.html">Αξιολόγηση</a></li>
                <li><a href="tutorial.html">Λειτουργία</a></li>
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Κοινότητα<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="generalcomments.html">Γενικά Σχόλια</a></li>
                    <li><a href="problemscomments.html">Προβλήματα</a></li>
                    <li><a href="suggestionscomments.html">Προτάσεις</a></li>
                    
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
	<!-- Main jumbotron for a primary marketing message or call to action -->
        
    <div class="contact-box"></div>
    <div class="jumbotron">
      <div class="container">
        <h2>Χάρτης Διαδρομών</h2>
        <p>Παρακάτω είναι ο χάρτης που περιέχει όλες τις πιθανές διαδρομές με τις ράμπες που καταγράψαμε. Μη χάνεις χρόνο,αναζήτησε τη διαδρομή που σε ενδιαφέρει!</p>
      </div>
    </div>
    
    <?php include('mysql_select.php');?>	

	

						
		
			
<div class="container-fluid">
	

	<div class="row">
	<div class="col-sm-4">
			<!-- Nav tabs -->
			<ul id="myTab1" class="nav nav-tabs">
			  <li>
				<a id="sr" href="#search_route" data-toggle="tab">
				  <img id="im1" src="_css/route.png" class="img-responsive" alt="Generic placeholder thumbnail">
				  <h3 style="color:black;"><small>Αναζήτηση</small></h3>
				</a>
			  </li>
			  <li>
				<a id="sd" href="#show_direc" data-toggle="tab">
					<img id="im2" src="_css/directions.png" class="img-responsive" alt="Generic placeholder thumbnail">
					<h3 style="color:black;"><small>Εμφάνιση Οδηγιών</small></h3>
				</a>
			  </li>
			 
			</ul>
			<br/><br/>
			<!-- Tab panes -->
			<div class="tab-content">
			  <div class="tab-pane active" id="search_route">
					<ul id="myTab" class="nav nav-tabs">
					  <li class="active">
						<a id="WALKING" href="#"><img src="_css/nav_wheelchair.png"></a>
					 </li>
					 <li >
						<a id="DRIVING" href="#"><img src="_css/nav_car.png"></a>
					</li>
					</ul>

					
						
					<b>Εκκίνηση:</b>	
					<div class="dropdown">
					  <div class="input-group" data-toggle="dropdown">
						  <span class="input-group-addon"><img src="_css/location.png"></span>
						  <input id="start" type="text" class="form-control" placeholder="Επιλέξτε σημείο εκκίνησης...">
					  </div>
					  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
						<li role="presentation" onclick="selectGeo();" ><a role="menuitem" tabindex="-1" ><img src="_css/geolocation.png">Η τοποθεσία μου</a></li>
						<li role="presentation" ><a role="menuitem" tabindex="-1"><img src="_css/points.png">Σημείο στον χάρτη</a></li>
					  </ul>
					</div>
	
					<br/><br/>
						
					
					<div class="row">
						<div class="col-sm-9 text-right">
							<h5 class="text-muted">Αντιστροφή Εκκίνησης-Προορισμού</h5>
						</div>
						<div class="col-sm-3">
							<img id="im8" src="_css/exchange.png" class="img-responsive" alt="Generic placeholder thumbnail" onclick="exchange();">
						</div>
					</div>
					<br/>
						
					<ul class="nav nav-justified" id="w_wo_ramps">
						<li id="wor" class="active"><a href="#without_ramps" data-toggle="tab">Χωρίς Ράμπες</a></li>
						<li id="wr"><a href="#with_ramps" data-toggle="tab">Με Ράμπες</a></li>
						
					</ul>
						
						
					<div class="tab-content">
						<div class="tab-pane active" id="without_ramps"></div>
						<div class="tab-pane" id="with_ramps">
							<div class="list-group">
								<a href="#map-canvas" class="list-group-item" style="text-align:center;">
									<h4 class="list-group-item-heading">Επιλέξτε Ράμπες</h4>
									<p class="list-group-item-text">Κάντε <b>click</b> πάνω σε πινέζα ράμπας<span id="badge1" class="badge pull-right">0/8</span></p>
								</a>
							</div>
						</div>
					</div>	
					
					<br/><br/>
					
					<b>Προορισμός:</b>
					<div class="input-group" >
						<span class="input-group-addon"><img src="_css/location.png"></span>
						 <input id="end" type="text" class="form-control" placeholder="Επιλέξτε σημείο προορισμού..." >
					</div>
				    <br /><br />
					
					<div class="row">
						<div class="col-sm-6">
							<button type="button" class="btn btn-default btn-lg" onclick="$('#myModal2').modal();" >Νέα Αναζήτηση</button>
						</div>
						<div class="col-sm-6">
							<button type="button" class="btn btn-success btn-lg" onclick="searchRoute();" >Αναζήτηση</button>

						</div>
					</div>
				

			  </div>
			  <div class="tab-pane" id="show_direc">
				
			    <img id="geolocate1" src="_css/geolocation.png" alt="no image" class="img-thumbnail" title="Βρείτε την τοποθεσία σας!" onclick="geolocate();" />
				<br/ ><br />					
				<div id="map_directions">
					
						<h3 id="search_first" class="text-muted text-center">Πρέπει να αναζητήσετε μια διαδρομή πρώτα για να εμφανιστούν οι οδηγίες</h3>
					
			    </div>
			  </div>
			  
			</div>
			
			
			
					
			
		 </div>
		 
		 <div class="col-sm-8">
		
			 <div class="panel panel-default">
			  <div class="panel-heading">
				<h3 class="panel-title"></h3>
			  </div>
			  <div class="panel-body">
				<div id="map-canvas">
					You can see this!
				</div>
			  </div>
			</div>
		</div>	
			
		 
		 
	</div> <!-- row-->

	<div class="row">
	
		 <div class="col-xs-3">
			
				<!--<h2>Διάλεξε</h2>
			<p>εσύ τις ράμπες που θέλεις να εμφανίζονται στον χάρτη</p>
			<p><a class="btn btn-default" role="button" href="evaluation.html">Δες την αξιολόγηση &raquo;</a></p>
			-->
		 </div>
		 
		 <div class="col-xs-9">
			<div class="col-xs-2" >
			</div>
			<div class="col-xs-2" >
              <img src="_css/multiple_routes.png" class="img-responsive select_ramp" onclick="showRoutes();">
              <h4>Διαδρομές</h4>
            </div>
			<div class="col-xs-2" >
              <img src="_css/ramp_all.png" class="img-responsive select_ramp" onclick="selectColor('all');">
              <h4>Όλες</h4>
            </div>
			<div class="col-xs-2" >
              <img src="_css/ramp_green.png" class="img-responsive select_ramp" onclick="selectColor('green');">
              <h4>Μόνο Καλές</h4>
            </div>
			<div class="col-xs-2" >
              <img src="_css/ramp_yellow.png" class="img-responsive select_ramp" onclick="selectColor('yellow');">
              <h4>Μόνο Μέτριες</h4>
            </div>
			<div class="col-xs-2" >
              <img src="_css/ramp_red.png" class="img-responsive select_ramp" onclick="selectColor('red');">
              <h4>Μόνο Κακές</h4>
            </div>
			
		 </div>
	</div> <!-- row-->

    <hr class="featurette-divider">
	
  <!-- ABOUT -->
     
	
	
</div>	<!-- /container-fluid-->

 <footer>
      <div class="contact-box">
          <div class="row">
           <div class="col-sm-9">
              <h4>Εποικοινωνία</h4>
              <h5>Ακολούθησέ μας σε Facebook, Google Plus & Youtube ή στείλτε μήνυμα στο <a href="mailto:thessrampa@gmail.com">THESS-ράμπα</a></h5>
                </div>
                <!-- FACEBOOK BUTTON  -->
                <div class="col-sm-1">
                    <a href="https://www.facebook.com/thessrampa" TARGET="_blank"><img src="img/Facebook.png" title="link" alt="link" width="65px" border="0"/></a><br />
                </div>
                <!-- GOOGLE PLUS BUTTON -->
                <div class="col-sm-1">
                    <a href="https://plus.google.com/100161671499726167289/posts" TARGET="_blank"><img src="img/Google+.png" title="link" alt="link" width="65px" border="0"/></a><br />
                </div>
                <!-- YOUTUBE BUTTON -->
                <div class="col-sm-1">
                    <a href="http://www.youtube.com/channel/UCLsxsIk5SZ0_ewMOyF-30hg" TARGET="_blank"><img src="img/Youtube.png" title="link" alt="link" width="65px" border="0"/></a><br />
                </div>



      <!-- FOOTER -->
      </div>
          <p class="pull-right"><a href="#"><small>Back to top</small></a></p>
          <small> Copyright &copy; 2014 THESS-ράμπα</small>
     </div>
   </footer>


	
							
		
	
			

	
	
		
	

		

		<!--Modal-->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">Google Directions API</h4>
			  </div>
			  <div class="modal-body">
			   Σφάλμα! Παρακαλώ ξαναπροσπαθήστε αργότερα!
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Κλείσιμο</button>
			  </div>
			</div>
		  </div>
		</div>
		
		

		<!-- Modal2 -->
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel2">Αναζήτηση Διαδρομής</h4>
			  </div>
			  <div class="modal-body">
				<h4>Είστε σίγουρος/η οτι θέλετε να κάνετε <b>Νέα Αναζήτηση</b>;</h4>
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" onclick="return false;">Όχι</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="newSearch();">Ναι</button>
			  </div>
			</div>
		  </div>
		</div>
		
		<!--Modal3-->
		<div class="modal fade" id="myRampMaxModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-body">
				Έχετε ξεπεράσει τις 8 ράμπες
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Κλείσιμο</button>
			  </div>
			</div>
		  </div>
		</div>
		
		<!--Modal4-->
		<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-body">
				<h3>Παρακαλώ συμπληρώστε και τα 2 πεδία <b>Εκκίνησης</b> και <b>Προορισμού</b></h3>
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Κλείσιμο</button>
			  </div>
			</div>
		  </div>
		</div>
		
	
	<script>
	
	$('#myTab a').click(function (e) {
		e.preventDefault();
		$(this).tab('show');
		selectedMode = this.id;
	});


  </script>
  <!-- Bootstrap core JavaScript
    ================================================== -->
    

	<!-- Optional theme -->
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

	<!-- Latest compiled and minified JavaScript -->
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	
	
	
</body>
</html>
