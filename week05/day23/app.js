if("geolocation" in navigator) {
	getUserLocation();
}

else {
	console.log("You are good at hiding");
}

var options ={

};

function getUserLocation(){
	navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
};

function successCallback (position) {
	console.log("SUCCESS!!");
	console.log(position);
	console.log("Lat", position.coords.latitude);
	console.log("Long", position.coords.longitude);
};

function errorCallback (error) {
	console.log("Error", error);
};

$(".js-lat-value").text(position.coords.latitude);
$(".js-lng-value").text(postition.coords.longitude);

