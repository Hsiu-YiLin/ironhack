var map;

var retrievedLocations = localStorage.getItem("saved_locations");
  console.log(JSON.parse(retrievedLocations));


if ("geolocation" in navigator){
  navigator.geolocation.getCurrentPosition(onLocation, onError);
}

function onLocation(position){
  // We can't just directly feed the position into our google map
  // The objects are formatted differently, google maps is looking for
  // an object with "lat" and "lng" keys.
  var myPosition = {
    lat: position.coords.latitude,
    lng: position.coords.longitude
  };

  createMap(myPosition);
  setupAutocomplete();
  //loadMarkersfromlocalStorage
}

function onError(err){
  console.log("What are you using, IE 7??", err);
}

function createMap(position){
  map = new google.maps.Map($('#map')[0], {
    center: position,
    zoom: 15
  });
  createMarker(position);
}

function createMarker(position){
  var marker = new google.maps.Marker({
    position: position,
    map: map
    });
  // window.localStorage.setItem("saved_locations", JSON.stringify(position));
}

function setupAutocomplete(){
  var input = $("#get-places")[0];
  var autocomplete = new google.maps.places.Autocomplete(input);
  autocomplete.addListener("place_changed", function(){
    var place = autocomplete.getPlace();
    if (place.geometry.location) {
      map.setCenter(place.geometry.location);
      map.setZoom(18);
      createMarker(place.geometry.location);      
    } else {
      alert("Uhhh...where is this place?")
    }
    
  });
}

