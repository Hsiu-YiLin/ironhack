if("geolocation" in navigator) {
	var button = $('#where-am-i');
	button.on('click', getUserLocation());
}

else {
	alert("You are good at hiding");
}

var options ={

};

function getUserLocation(){
	navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
};

function successCallback (position) {
	console.log("SUCCESS!!");
	console.log(position);

	$(".js-lat-value").text(position.coords.latitude);
	$(".js-lng-value").text(position.coords.longitude);

	var img = `<img src="https://maps.googleapis.com/maps/api/staticmap?center=${position.coords.latitude},${position.coords.longitude}&zoom=13&size=300x300&sensor=false">`;
    
    $(".google-map").append(img);
};

function errorCallback (error) {
	console.log("Error", error);
};



