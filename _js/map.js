/************************* ARRAYS *********************************************/

//Array pou periexei ta stoixeia twn rampwn
var elements =[];

var ramps= [];

//Array pou periexei tis suntetagmenes twn rampwn pou dialekse o xrhsths
var waypts = [];

//Array pou periexei tous markers twn rampwn
var r_markers = [];

//Array pou periexei tous markers twn xrwmatistwn rampwn(KALH - METRIA - KAKH)
var color_ramps=[];
/************************* VARIABLES *********************************************/
//Metavlhth pou krataei thn trexousa topo8esia tou xrhsth, otan autos pathsei 'geolocate'
var pos;

//Metavlhth pou kratei ton xarth (google map)
var map;

//Metavlhtes pou kratane to geografiko platos kai mhkos twn shmeiwn pou epelekse
//o xrhsths panw ston xarth 
var maplat;
var maplng;

//Metavlhth pou krataei ta stoixeia tou kentrikou marker(kentro: Thessalonikh)
var centerMarker;
//Metavlhth pou krataei tis suntetagmenes tou kentrikou shmeiou
var centerLatLng;
//Metavlhtes pou kratane ta antistoixa stoixeia apo to Directions api
var directions,directionsDisplay;
var directionsService = new google.maps.DirectionsService();

//Metavlhth pou krataei to default mode epiloghs tropou metakinhshs(gia to Directions api)
var selectedMode = "WALKING";


//Metavlhth pou krataei ta stoixeia apo to Geocoding api
var geocoder;

//Metavlhth pou krataei to plh8os twn rampwn pou epelekse o xrhsths
var ramp_counter;

//O megistos ari8mos rampwn pou mporei na epileksei o xrhsths
//Sth free ekdosh einai 8, sth bussiness ekdosh einai 23
var RAMP_MAX = 8;


//To id tou input text pou exei epileksei o xrhsths
var input_id;
//Metavlhth epiloghs rampwn (xwris rampes =0, me rampes=1)
var c_route = 0;

var rampsFlag=0;
/************************* jQuery FUNCTIONS *********************************************/
//Sunarthsh pou kaleitai otan o xthsths kanei 'focus' sto pedio Ekkinhsh
$(function(){
	$("#start").focus(function(){
		input_id = $('#start').attr('id');
		autocomplete('start');
		});
});
//Sunarthsh pou kaleitai otan o xthsths kanei 'focus' sto pedio Proorismos
$(function(){
	$("#end").focus(function() {
		input_id = $('#end').attr('id');
		autocomplete('end');
	});
});
//sunarthsh pou kaleitai otan pathsei o xthsths thn epilogh 'Xwris Rampes'
$(function(){
  $('#wor').click(function(){
	c_route=0;
	ramps.length=0;
	waypts.length=0;
  });
});
//sunarthsh pou kaleitai otan pathsei o xthsths thn epilogh 'Me Rampes'
$(function(){
  $('#wr').click(function(){
	c_route=1;
	if(rampsFlag==1){
		rampsFlag=0;
		ramps.length=0;
		waypts.length=0;
		deleteOverlays(r_markers);
		drop();
	}
  });
});

//Sunarthsh pou kaleitai otan o xrhsths kanei 'hover' sto geolocate icon ston xarth
$(function(){
  $('#geolocate1').hover(function(){
	$(this).css("background-color", "#3cb371");
	$(this).css("cursor", "pointer");
  }, function(){
	$(this).css("background-color", "white");
  });
});



/************************* FUNCTIONS *********************************************/


//Sunarthsh pou arxikopoiei ton xarth
function initialize() {
	
	detectBrowser();
	
	//Initialize Directions
	var renderOptions = {
		draggable:true,
		suppressMarkers:true
	};		
	directionsDisplay = new google.maps.DirectionsRenderer(renderOptions);
	
	//var centerLatLng = new google.maps.LatLng(40.639342,22.944621);
	centerLatLng = new google.maps.LatLng(40.632666,22.952839);
	var mapOptions = {
		zoom: 16,
		center: centerLatLng
	};
  
	map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
	  
	map.controls[google.maps.ControlPosition.TOP_LEFT].push(document.getElementById('geolocate1'));
  
  
	centerMarker = new google.maps.Marker({
		position: centerLatLng,
		map: map,
		icon: '_css/my_location.png',
		animation: google.maps.Animation.DROP
	  });
  
   
  
	
  
   /******************EVENT LISTENERS ******************************************/
   //google.maps.event.addListener(centerMarker, 'click', function() {
	//	alert();
	//});
  
   google.maps.event.addListener(map, "click", function(event) {
    
		centerMarker.setVisible(false);
		
		maplat = event.latLng.lat();
		maplng = event.latLng.lng();
		
		$("#start").blur();
		$("#end").blur();
		
		
		geocode_now(event.latLng);
		
		centerMarker.setPosition(event.latLng);
		centerMarker.setVisible(true);
    
	});
     drop();
}


//Sunarthsh ekteleshs autocomplete, otan o xrhsths dinei dieu8unsh mesw plhktrologiou
function autocomplete(id){
	
	var iconM;
	var place;
	var input = /** @type {HTMLInputElement} */(
      document.getElementById(id));


	var autocomplete = new google.maps.places.Autocomplete(input);
	autocomplete.bindTo('bounds', map);
	
	if(id=='start'){
		iconM = '_css/start.png';
	}else{
		iconM = '_css/finish.png';
	}
	
	
	var marker = new google.maps.Marker({
		map: map,
		icon: iconM
	});
	
	/******************EVENT LISTENERS ******************************************/
	google.maps.event.addListener(autocomplete, 'place_changed', function() {
    
	
		marker.setVisible(false);
	
		place = autocomplete.getPlace();
		if (!place.geometry) {
		  return;
		}
		
		map.setCenter(place.geometry.location);
		map.setZoom(16); 
		   
		
		marker.setPosition(place.geometry.location);
		marker.setVisible(true);

	});
	
}




//Sunarthsh ekteleshs geocoding
function geocode_now(coords){
	
	geocoder = new google.maps.Geocoder();
	
	var geocoderOptions = {
		location: coords
	};
	
	geocoder.geocode(geocoderOptions, function(results,status){
		
		if(status == google.maps.GeocoderStatus.OK){
			if (status != google.maps.GeocoderStatus.ZERO_RESULTS) {
				
				$('#'+input_id).val(results[0].formatted_address);
				
				
			}else{
				alert("No results found");
			}
		}else {
          alert("Geocode was not successful for the following reason: " + status);
        }
		
	});
}


//Sunarthsh pou kalei thn drop1 kai arxikopoei tous markers
function drop(){
	drop1(elements);
}

//Sunarthsh pou 'rixnei(drops)' tous markers ston xarth
function drop1(array1) {

  for (var i = 0; i < array1.length; i++) {
      addMarker(i,array1);
  }
  
}

var marker;
var infowindow1;

//Sunarthsh pros8hkhs tou ka8e marker ksexwrista ston xarth  
function addMarker(iterator,array1) {
  
  var badge = document.getElementById('badge1');
  ramp_counter = 0;
  badge.innerHTML= ramp_counter+'/8';
  
 
  infowindow1 = new google.maps.InfoWindow();
  var ll = new google.maps.LatLng(array1[iterator][1],array1[iterator][2]);
	
  marker = new google.maps.Marker({
    position: ll,
    map: map,
	icon: '_css/'+array1[iterator][8]+'.png',
    draggable: false,
    animation: google.maps.Animation.DROP
  });
  
  r_markers.push(marker);
  var stars = '';
  
  switch(array1[iterator][3]){
	case 'ΚΑΛΗ':
		stars= '_css/3stars.png';
		break;
	case 'ΜΕΤΡΙΑ':
		stars= '_css/2stars.png';
		break;
	case 'ΚΑΚΗ':
		stars= '_css/1star.png';
		break;
  }
  
  var stars2 = '';
  switch(array1[iterator][6]){
	case 'ΚΑΛΗ':
		stars2= '_css/3stars.png';
		break;
	case 'ΜΕΤΡΙΑ':
		stars2= '_css/2stars.png';
		break;
	case 'ΚΑΚΗ':
		stars2= '_css/1star.png';
		break;
  }
  
  
  var contentString = [
'<div class="row">'+
		'<div class="col-md-4">'+
			'<img src="_css/ramp_photo/'+array1[iterator][0]+'.jpg" alt="No Image" class="img-thumbnail" onclick="modal_on('+array1[iterator][0]+');">'+
		'</div>'+
	'<div class="col-md-8">'+	
	  '<div class="table-responsive">'+
		'<table class="table">'+
			'<tr>'+
				'<th>1. Αξιολόγηση διακίνησης (Ασφάλεια και Άνεση)</th>'+
				'<td><img src="'+stars+'" title="'+array1[iterator][3]+'"></td>'+
			'</tr>'+
			'<tr>'+
				'<th>2. Σχήμα ράμπας</th>'+
				'<td>'+array1[iterator][4]+'</td>'+
			'</tr>'+
			'<tr>'+
				'<th>3. Είδος & Χρώμα </th>'+
				'<td><div style="width:100%; height:50px; overflow-y:scroll">'+array1[iterator][5]+'</div></td>'+
			'</tr>'+
			'<tr>'+
			'<th>4. Κατάσταση Δαπέδου</th>'+
				'<td><img src="'+stars2+'" title="'+array1[iterator][6]+'"></td>'+
			'</tr>'+
			'<tr>'+
				'<th>5. Πιθανό εμπόδιο σταθμευμένου οχήματος</th>'+
				'<td>'+array1[iterator][7]+'</td>'+
			'</tr>'+
		'</table>'+
	   '</div>'+
	'</div>'+
'</div>'
	];
	
	

	/******************EVENT LISTENERS ******************************************/
	google.maps.event.addListener(r_markers[iterator], 'click', function() {
	  //An o xrhsths epileksei diadromh 'Xwris Rampes'
	  if(c_route==0){
		infowindow1.setContent(contentString[0]);
		infowindow1.open(map,r_markers[iterator]);
	  }
	  else{//An o xrhsths epileksei diadromh 'Me Rampes'
			
				
		if (r_markers[iterator].getAnimation() != null) {
				
			r_markers[iterator].setAnimation(null);
				
				
			remove(waypts, r_markers[iterator].position);
				
			remove1(ramps,array1[iterator]);
				
			ramp_counter--;
			badge.innerHTML= ramp_counter+'/8';
					
		} else {
				
			if(ramp_counter < RAMP_MAX){
		
				 r_markers[iterator].setAnimation(google.maps.Animation.BOUNCE);
				
				
				waypts.push({
						location:r_markers[iterator].position
				});
				
				ramps.push(array1[iterator]);
				
				ramp_counter++;
				
				badge.innerHTML= ramp_counter+'/8';
			}else{
				$('#myRampMaxModal').modal();
			}
					
		}
	}
			
	});
   
}
//Sunarthsh pou afairei ton marker pou apoepelekse o xrhsths apo ton array 'waypts'
function remove(arr, item) {
	for(var i = arr.length; i--;) {
		if(arr[i].location === item) {
			arr.splice(i, 1);
		}
	}
}
//Sunarthsh pou afairei ton marker pou apoepelekse o xrhsths apo ton array 'ramps'
function remove1(arr, item) {
	for(var i = arr.length; i--;) {
		if(arr[i] === item) {
			arr.splice(i, 1);
		}
	}
}
//Sunarthsh pou kalei to modal otan o xrhsths pathsei panw sthn eikona sto infowindow
function modal_on(image_id){

  var mod=
	'<div class="modal fade" id="myImageModal" tabindex="-1" role="dialog" aria-hidden="true">'+
		  '<div class="modal-dialog">'+
			'<div class="modal-content">'+
			  '<div class="modal-body">'+
				'<img src="_css/ramp_photo/'+image_id+'.jpg" alt="no image" class="img-thumbnail">'+
			  '</div>'+
			  '<div class="modal-footer">'+
				'<button type="button" class="btn btn-default" data-dismiss="modal">Κλείσιμο</button>'+
			  '</div>'+
			'</div>'+
		  '</div>'+
		'</div>';
	$(mod).modal();

}


var startMarker;
var finishMarker;
var myroute;
//Sunarthsh pou upologizei tis odhgies kai sxediazei thn diadromh pou epelekse o xrhsths, xrhsimopoiontas to Directions api
function calcRoute(){
	
	deleteOverlays(r_markers);
	centerMarker.setVisible(false);
	$('#search_first').hide();
	rampsFlag=1;
	if(ramps.length>0) drop1(ramps);
	
	var start = document.getElementById("start").value;
	var end = document.getElementById("end").value;
  
	
	var request = {
		origin: start,
		destination: end,
		waypoints: waypts,
		optimizeWaypoints: true,
		travelMode: google.maps.TravelMode[selectedMode]
	};
  
	directionsService.route(request, function(result, status){
	
		if(status== google.maps.DirectionsStatus.OK){
	 
			directionsDisplay.setDirections(result);
			myroute = result.routes[0];
		
			//alert("overview path= "+myroute.overview_path.length);
			//alert("legs="+myroute.legs.length);
       
			startMarker = new google.maps.Marker({
				map: map,
				position: myroute.legs[0].start_location, 
				icon: '_css/start.png'
			}); 
		  
		 
			finishMarker = new google.maps.Marker({
				map: map,
				position:myroute.legs[myroute.legs.length-1].end_location,
				icon: '_css/finish.png'
			}); 
			
			
		
		}else{
			$('#myModal').modal();
		}
	});
	
	c_route=0;
	$('#w_wo_ramps a:first').tab('show');
	$('#myTab1 a:last').tab('show');
  
	//Set returned directions in map
	directionsDisplay.setMap(map);
	directionsDisplay.setPanel(document.getElementById('map_directions'));
  
	startMarker.setMap(null);
	finishMarker.setMap(null);
	
	
}



//Metavlhth pou elegxei an o xrhsths exei pathsei to 'geolocate' h' oxi
var geoflag=0;


//Sunarthsh upologismou twn suntetagmenwn ths twrinhs topo8esias tou xrhsth
function geolocate(){
  // Try HTML5 geolocation
  if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
	
      pos = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

      var infowindow = new google.maps.InfoWindow({
        map: map,
        position: pos,
        content: 'You are here!'
      });
	  
	  var  mymarker = new google.maps.Marker({
		position: pos,
		map: map,
		icon: '_css/my_location.png',
		draggable: false,
		animation: google.maps.Animation.DROP
	  });
      
	  map.setCenter(pos);
	  
	  
	  if(geoflag==1) geocode_now(pos);
    }, function() {
      handleNoGeolocation(true);
    });
  } else {
    // Browser doesn't support Geolocation
    handleNoGeolocation(false);
  }
}

//Sunarthsh pou kaleitai otan o xrhsths pathsei ws shmeio ekkinhshs thn 'topo8esia' tou
function selectGeo(){
	if(typeof pos != 'undefined'){
		geocode_now(pos);
	
	}else{
		geoflag=1;
		geolocate();
		
		
	}
}

//Sunarthsh upologismou sfalmatwn apo geolocation
function handleNoGeolocation(errorFlag) {
  if (errorFlag) {
    var content = 'Σφάλμα! Η τοποθεσία σας δεν βρέθηκε.';
  } else {
    var content = 'Σφάλμα! Ο browser που χρησιμοποιείται δεν υποστηρίζει την λειτουργία geolocation';
  }

  var options = {
    map: map,
    position: new google.maps.LatLng(40.639505,22.944955),
    content: content
  };

  var infowindow = new google.maps.InfoWindow(options);
  map.setCenter(options.position);
}





//Sunarthsh pou diagrafei tous markers apo enan array, afairontas tis anafores se auta 
function deleteOverlays(array2) {
    
	if (array2) {
        
		for (i in array2) {
            array2[i].setMap(null);
        }
        
		array2.length = 0;
    }
}

//Sunarthsh pou kaleitai molis o xrhsths pathsei thn epilogh kapoiou xrwmatos, kai deixnei
//ston xarth tous markers me to antistoixo xrwma
function selectColor(ramp_color){
	rampsFlag=0;
	color_ramps.length=0;
	waypts.length =0;
	ramps.length=0;
	deleteOverlays(r_markers);
	
	for(var i=0;i<elements.length;i++){
		
		if(ramp_color==elements[i][8]){
			color_ramps.push(elements[i]);
		}else if(ramp_color=='all'){
			color_ramps.push(elements[i]);
		}
	
	}
	
	drop1(color_ramps);
}
//Sunarthsh pou kaleitai otan o xrhsths pathsei Nea Anazhthsh
function newSearch(){

	if(typeof myroute!='undefined') {
		directionsDisplay.setMap();
		directionsDisplay.setPanel();
		startMarker.setMap(null);
		finishMarker.setMap(null);
		
		$('#search_first').show();
		$('#start').val('');
		$('#end').val('');
	}
	map.setZoom(16);
    map.setCenter(centerLatLng);
	centerMarker.setPosition(centerLatLng);
	centerMarker.setVisible(true);
	rampsFlag=0;
	color_ramps.length=0;
	waypts.length =0;
	ramps.length=0;
	deleteOverlays(r_markers);
	
	drop();

}
//Sunarthsh pou elegxei an o xrhsths exei eisagei shmeia
//sthn 'Ekkinhsh' kai 'Termatismo' wste na upologisei thn diadromh
function searchRoute(){

	var startAddress = document.getElementById("start").value;
	var endAddress = document.getElementById("end").value;
	
	if(startAddress=='' || endAddress==''){
		$('#myModal4').modal();
		return false;
	}else{
		calcRoute();
	}

}
//Sunarthsh pou elegxei ton browser pou kaleitai to arxeio
function detectBrowser() {
  var useragent = navigator.userAgent;
  var mapdiv = document.getElementById("map-canvas");

  if (useragent.indexOf('iPhone') != -1 || useragent.indexOf('Android') != -1 ) {
    mapdiv.style.width = '100%';
    mapdiv.style.height = '650px';
  } else {
    mapdiv.style.width = '100%';
    mapdiv.style.height = '650px';
  }
}

function exchange_input(input1,input2){
	$('#start').val(input2);
	$('#end').val(input1);

}
function exchange(){
	var startAddress = $('#start').val();
	var endAddress = $('#end').val();
	if(startAddress=='' || endAddress==''){
		$('#myModal4').modal();
		return false;
	}else{
		exchange_input(startAddress,endAddress);
	}

}

var routeCoords =[
		[//Proteinomenh Diadromh 1
		new google.maps.LatLng(40.633788, 22.948053),
		new google.maps.LatLng(40.634026, 22.947562),
		new google.maps.LatLng(40.634034, 22.947527),
		new google.maps.LatLng(40.634328, 22.946928),
		new google.maps.LatLng(40.634209, 22.946822),
		new google.maps.LatLng(40.633881, 22.946498),
		new google.maps.LatLng(40.633537, 22.946198),
		new google.maps.LatLng(40.633532, 22.946193),
		new google.maps.LatLng(40.633299, 22.946021),
		new google.maps.LatLng(40.633226, 22.945942),
		new google.maps.LatLng(40.633207, 22.945849),
		new google.maps.LatLng(40.633208, 22.945841),
		new google.maps.LatLng(40.633236, 22.945784),
		new google.maps.LatLng(40.632742, 22.945387),
		new google.maps.LatLng(40.632272, 22.944951),
		new google.maps.LatLng(40.631803, 22.944435)
		],
		[//Proteinomenh Diadromh 2
		new google.maps.LatLng(40.631803, 22.944435),
		new google.maps.LatLng(40.631112, 22.945489),
		new google.maps.LatLng(40.630944, 22.945727),
		new google.maps.LatLng(40.630939, 22.945735),
		new google.maps.LatLng(40.630497, 22.946411),
		new google.maps.LatLng(40.630466, 22.946457),
		new google.maps.LatLng(40.630038, 22.947058),
		new google.maps.LatLng(40.629879, 22.947324),
		new google.maps.LatLng(40.629792, 22.947457),
		new google.maps.LatLng(40.629787, 22.947465),
		new google.maps.LatLng(40.629640, 22.947725),
		new google.maps.LatLng(40.629633, 22.947735),
		new google.maps.LatLng(40.629510, 22.947954),
		new google.maps.LatLng(40.629506, 22.947963),
		new google.maps.LatLng(40.629079, 22.948714),
		new google.maps.LatLng(40.628986, 22.948875),
		new google.maps.LatLng(40.628669, 22.949402),
		new google.maps.LatLng(40.628663, 22.949410),
		new google.maps.LatLng(40.628413, 22.949813),
		new google.maps.LatLng(40.628252, 22.950079),
		new google.maps.LatLng(40.627975, 22.950516)
		],
		[//Proteinomenh Diadromh 3
		new google.maps.LatLng(40.627975, 22.950516),
		new google.maps.LatLng(40.628651, 22.951115),
		new google.maps.LatLng(40.628656, 22.951119),
		new google.maps.LatLng(40.629582, 22.951978),
		new google.maps.LatLng(40.629855, 22.952228),
		new google.maps.LatLng(40.629861, 22.952232),
		new google.maps.LatLng(40.630056, 22.952417),
		new google.maps.LatLng(40.630291, 22.952624),
		new google.maps.LatLng(40.630796, 22.953055),
		new google.maps.LatLng(40.631000, 22.952996),
		new google.maps.LatLng(40.631096, 22.952954),
		new google.maps.LatLng(40.631215, 22.952877)
		],
		[//Proteinomenh Diadromh 4
		new google.maps.LatLng(40.631280, 22.952757),
		new google.maps.LatLng(40.631469, 22.952403),
		new google.maps.LatLng(40.631561, 22.952355),
		new google.maps.LatLng(40.631661, 22.952164),
		new google.maps.LatLng(40.631666, 22.952157),
		new google.maps.LatLng(40.631938, 22.951627),
		new google.maps.LatLng(40.631990, 22.951522),
		new google.maps.LatLng(40.632316, 22.950878),
		new google.maps.LatLng(40.632320, 22.950870),
		new google.maps.LatLng(40.632876, 22.949804),
		new google.maps.LatLng(40.632880, 22.949797),
		new google.maps.LatLng(40.632978, 22.949591),
		new google.maps.LatLng(40.632994, 22.949527),
		new google.maps.LatLng(40.633493, 22.948660)
		],
		[//Proteinomenh Diadromh 5
		new google.maps.LatLng(40.633537, 22.946198),
		new google.maps.LatLng(40.633465, 22.946360),
		new google.maps.LatLng(40.633186, 22.946803),
		new google.maps.LatLng(40.633181, 22.946811),
		new google.maps.LatLng(40.632914, 22.947320),
		new google.maps.LatLng(40.632909, 22.947327),
		new google.maps.LatLng(40.632802, 22.947501),
		new google.maps.LatLng(40.632771, 22.947533),
		new google.maps.LatLng(40.632735, 22.947557),
		new google.maps.LatLng(40.632680, 22.947569),
		new google.maps.LatLng(40.632575, 22.947573),
		new google.maps.LatLng(40.632564, 22.947574),
		new google.maps.LatLng(40.632425, 22.947588),
		new google.maps.LatLng(40.632086, 22.948203),
		new google.maps.LatLng(40.632080, 22.948210),
		new google.maps.LatLng(40.631731, 22.948791),
		new google.maps.LatLng(40.631692, 22.948858),
		new google.maps.LatLng(40.631686, 22.948869),
		new google.maps.LatLng(40.631567, 22.949116),
		new google.maps.LatLng(40.631562, 22.949127),
		new google.maps.LatLng(40.630839, 22.950420),
		new google.maps.LatLng(40.630756, 22.950581),
		new google.maps.LatLng(40.630387, 22.951239),
		new google.maps.LatLng(40.630360, 22.951285),
		new google.maps.LatLng(40.630333, 22.951333),
		new google.maps.LatLng(40.630081, 22.951799),
		new google.maps.LatLng(40.630075, 22.951806),
		new google.maps.LatLng(40.629861, 22.952232)
		],
		[//Proteinomenh Diadromh 6
		new google.maps.LatLng(40.631989, 22.951523),
		new google.maps.LatLng(40.631351, 22.950932),
		new google.maps.LatLng(40.631345, 22.950927),
		new google.maps.LatLng(40.630839, 22.950420),
		new google.maps.LatLng(40.630833, 22.950414),
		new google.maps.LatLng(40.630749, 22.950576),
		new google.maps.LatLng(40.630241, 22.950089),
		new google.maps.LatLng(40.629704, 22.949591),
		new google.maps.LatLng(40.629310, 22.949188),
		new google.maps.LatLng(40.628985, 22.948876)
		],
		[//Proteinomenh Diadromh 7
		new google.maps.LatLng(40.631802, 22.944438),
		new google.maps.LatLng(40.630945, 22.945727),
		new google.maps.LatLng(40.631328, 22.947309),
		new google.maps.LatLng(40.631330, 22.947318),
		new google.maps.LatLng(40.631626, 22.948559),
		new google.maps.LatLng(40.631751, 22.948613),
		new google.maps.LatLng(40.631816, 22.948624),
		new google.maps.LatLng(40.631823, 22.948628),
		new google.maps.LatLng(40.631731, 22.948792),
		new google.maps.LatLng(40.631708, 22.948830),
		new google.maps.LatLng(40.631686, 22.948869),
		new google.maps.LatLng(40.631939, 22.949878),
		new google.maps.LatLng(40.631345, 22.950927),
		new google.maps.LatLng(40.631989, 22.951523)
		],
		[//Proteinomenh Diadromh 8
		new google.maps.LatLng(40.632875, 22.949804),
		new google.maps.LatLng(40.632260, 22.949243),
		new google.maps.LatLng(40.631815, 22.948881),
		new google.maps.LatLng(40.631809, 22.948875),
		new google.maps.LatLng(40.631725, 22.948799),
		new google.maps.LatLng(40.631823, 22.948627),
		new google.maps.LatLng(40.631816, 22.948624),
		new google.maps.LatLng(40.631752, 22.948614),
		new google.maps.LatLng(40.631626, 22.948559),
		new google.maps.LatLng(40.631336, 22.947321),
		new google.maps.LatLng(40.631328, 22.947309),
		new google.maps.LatLng(40.630944, 22.945728)
		],
		[//Proteinomenh Diadromh 9
		new google.maps.LatLng(40.633208, 22.945850),
		new google.maps.LatLng(40.633171, 22.945856),
		new google.maps.LatLng(40.633088, 22.945914),
		new google.maps.LatLng(40.633039, 22.945958),
		new google.maps.LatLng(40.632916, 22.946111),
		new google.maps.LatLng(40.632814, 22.946267),
		new google.maps.LatLng(40.632524, 22.946711),
		new google.maps.LatLng(40.632330, 22.947067),
		new google.maps.LatLng(40.632257, 22.947093),
		new google.maps.LatLng(40.632183, 22.947110),
		new google.maps.LatLng(40.632316, 22.947443),
		new google.maps.LatLng(40.632418, 22.947584),
		new google.maps.LatLng(40.631816, 22.948622),
		new google.maps.LatLng(40.631683, 22.948855),
		new google.maps.LatLng(40.631250, 22.949669),
		new google.maps.LatLng(40.630832, 22.950414),
		new google.maps.LatLng(40.630327, 22.951327),
		new google.maps.LatLng(40.630073, 22.951792),
		new google.maps.LatLng(40.629855, 22.952227)
		],
		[//Proteinomenh Diadromh 10
		new google.maps.LatLng(40.631553, 22.952336),
		new google.maps.LatLng(40.631989, 22.951523),
		new google.maps.LatLng(40.631351, 22.950932),
		new google.maps.LatLng(40.631345, 22.950927),
		new google.maps.LatLng(40.630839, 22.950420),
		new google.maps.LatLng(40.630833, 22.950414),
		new google.maps.LatLng(40.630318, 22.949941),
		new google.maps.LatLng(40.630734, 22.949176),
		new google.maps.LatLng(40.630385, 22.948531),
		new google.maps.LatLng(40.630310, 22.948525),
		new google.maps.LatLng(40.630247, 22.948514),
		new google.maps.LatLng(40.630217, 22.948495),
		new google.maps.LatLng(40.629865, 22.948136),
		new google.maps.LatLng(40.629710, 22.947988),
		new google.maps.LatLng(40.629505, 22.947963)
		],
		[//Proteinomenh Diadromh 11
		new google.maps.LatLng(40.628702, 22.951097),
		new google.maps.LatLng(40.629211, 22.950169),
		new google.maps.LatLng(40.629812, 22.950799),
		new google.maps.LatLng(40.629851, 22.950732),
		new google.maps.LatLng(40.629889, 22.950678),
		new google.maps.LatLng(40.630240, 22.950086),
		new google.maps.LatLng(40.630732, 22.949192),
		new google.maps.LatLng(40.631245, 22.949678),
		new google.maps.LatLng(40.631556, 22.949119),
		new google.maps.LatLng(40.631690, 22.948843),
		new google.maps.LatLng(40.631816, 22.948623),
		new google.maps.LatLng(40.632076, 22.948201),
		new google.maps.LatLng(40.632418, 22.947584),
		new google.maps.LatLng(40.632425, 22.947589),
		new google.maps.LatLng(40.632682, 22.947569),
		new google.maps.LatLng(40.632735, 22.947558),
		new google.maps.LatLng(40.632770, 22.947536),
		new google.maps.LatLng(40.632802, 22.947504),
		new google.maps.LatLng(40.632914, 22.947320),
		new google.maps.LatLng(40.633186, 22.946803),
		new google.maps.LatLng(40.633466, 22.946362),
		new google.maps.LatLng(40.633539, 22.946199)
		],
		[//Proteinomenh Diadromh 12
		new google.maps.LatLng(40.631803, 22.944436),
		new google.maps.LatLng(40.631111, 22.945488),
		new google.maps.LatLng(40.632517, 22.946705),
		new google.maps.LatLng(40.632323, 22.947059),
		new google.maps.LatLng(40.632189, 22.947096),
		new google.maps.LatLng(40.632187, 22.947108),
		new google.maps.LatLng(40.632218, 22.947217),
		new google.maps.LatLng(40.632316, 22.947444),
		new google.maps.LatLng(40.632418, 22.947584),
		new google.maps.LatLng(40.632426, 22.947589),
		new google.maps.LatLng(40.632082, 22.948219),
		new google.maps.LatLng(40.632688, 22.948781),
		new google.maps.LatLng(40.632783, 22.948808),
		new google.maps.LatLng(40.632878, 22.948789),
		new google.maps.LatLng(40.632973, 22.949589)
		],
		[//Proteinomenh Diadromh 13
		new google.maps.LatLng(40.631275, 22.952766),
		new google.maps.LatLng(40.630959, 22.952268),
		new google.maps.LatLng(40.630074, 22.952411),
		new google.maps.LatLng(40.629855, 22.952226),
		new google.maps.LatLng(40.630067, 22.951801),
		new google.maps.LatLng(40.628888, 22.950701),
		new google.maps.LatLng(40.629209, 22.950136),
		new google.maps.LatLng(40.629197, 22.950123),
		new google.maps.LatLng(40.629251, 22.950021),
		new google.maps.LatLng(40.629061, 22.949793),
		new google.maps.LatLng(40.628666, 22.949417)
		]
	];

	
	
	var routePolys = [ 
		new google.maps.Polyline({
			path: routeCoords[0],
			strokeColor: '#FF0000',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[1],
			strokeColor: '#00FF00',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[2],
			strokeColor: '#0000FF',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[3],
			strokeColor: '#22FF33',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[4],
			strokeColor: '#124233',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[5],
			strokeColor: '#FF0000',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[6],
			strokeColor: '#a020f0',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[7],
			strokeColor: '#ff69b4',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[8],
			strokeColor: '#ffa500',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[9],
			strokeColor: '#4682b4',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[10],
			strokeColor: '#8b8b83',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[11],
			strokeColor: '#ffd700',
			strokeOpacity: 1.0,
			strokeWeight: 2
		}),
		new google.maps.Polyline({
			path: routeCoords[12],
			geodesic: true,
			strokeColor: '#fa8072',
			strokeOpacity: 1.0,
			strokeWeight: 2
		})
	];

var flag=0;
//Sunarthsh pou emfanizei kai apokruptei tis proteinomenes diadromes
function showRoutes(){

  if(flag==0){
	for(var i=0; i<routePolys.length;i++){
			routePolys[i].setMap(map);
			
			//google.maps.event.addListener(routePolys[i], 'click', function() { 
						//routePolys[i].setMap(null);
						//alert();
			//});
			
	}
	flag=1;
	
 }else{
	for(var i=0; i<routePolys.length;i++){
			routePolys[i].setMap(null);
	
	}
	flag=0;
 }
}	

	
google.maps.event.addDomListener(window, 'load', initialize);

