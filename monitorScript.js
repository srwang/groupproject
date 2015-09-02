window.onload = function(){

	if (navigator.geolocation){
		navigator.geolocation.watchPosition(function(position){
        document.getElementById('currentLat').innerHTML = position.coords.latitude;
  		document.getElementById('currentLon').innerHTML = position.coords.longitude;
			showmap(lat, lon);
		})

	}else{
		document.write('your browser doesnt support geolocation')
	}
}
function showmap(lat, lon){
	var myLatLng = new google.maps.LatLng(lat, lon);
	var mapOptions = {
		zoom : 8,
		center : myLatLng,
	    mapTypeId: google.maps.MapTypeId.ROADMAP
	}
	var map = new google.maps.Map(document.getElementById('map'), mapOptions)

var marker = new google.maps.Marker({
	position : myLatLng,
	map : map,
	title : 'You are Here!'
})
}
