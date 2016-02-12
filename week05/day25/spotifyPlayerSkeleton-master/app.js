$(document).on("ready", function() {
	$('.js-track-form-submit').on("click", tracksubmit);

});

function tracksubmit(event){
	// Prevent form from redirecting.
	event.preventDefault();
	
	// console.log(event);
	var track = $("#track").val();
	// console.log(track);


	$.ajax({
		url: "https://api.spotify.com/v1/search?type=track&q="+track,
		success: function(response){
			displayTrack(response.tracks.items[0]);
		},
		error: function(){
			console.log("Error search");
		}
	});
};

function displayTrack(trackinfo){
	// console.log(trackinfo);
	$(".js-title").text(trackinfo.name);
	
	makeArtist(trackinfo.artists);	
	displayAlbum(trackinfo);
	console.log(trackinfo);
};

function makeArtist(artistarray){
	var artistnew = "";
	(artistarray).forEach(function(artist){
		artistnew=artistnew + artist.name + "/";
	});
	$(".js-artist").text(artistnew);
};

function displayAlbum(trackinfo){
	var htmlart=`<img src="${trackinfo.album.images[0].url}">`;
	$(".cover").html(htmlart);
};
