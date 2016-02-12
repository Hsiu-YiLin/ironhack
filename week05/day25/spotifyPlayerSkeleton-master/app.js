$(document).on("ready", function() {
	$('.js-track-form-submit').on("click", tracksubmit);

});

function tracksubmit(event){
	// Prevent form from redirecting.
	event.preventDefault();
	
	console.log(event);
	var track = $("#track").val();
	console.log(track);
	$.ajax({
		url: "https://api.spotify.com/v1/search?type=track&q="+track,
		success: function(response){
			console.log(response);

		},
		error: function(){
			console.log("Error track");
		}
	});
};