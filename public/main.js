function initMap() {
	var lat = parseFloat(document.getElementById("lat").innerHTML);
	var long = parseFloat(document.getElementById("long").innerHTML);
  var uluru = {lat: lat, lng: long};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: uluru
 	});
  var marker = new google.maps.Marker({
    position: uluru,
    map: map
  });
}

