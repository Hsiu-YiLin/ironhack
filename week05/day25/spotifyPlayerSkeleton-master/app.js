$(document).on("ready", function() {
	$('.js-track-form-submit').on("click", tracksubmit);
	// $('.js-player').trigger('pause');
});

function tracksubmit(event){
	// Prevent form from redirecting.
	event.preventDefault();
	
	var track = $("#track").val();

	$.ajax({
		url: "https://api.spotify.com/v1/search?type=track&q="+track,
		success: function(response){
			displayTrack(response.tracks.items[0]);
			
			// Change button from disabled to enabled
			$(".btn-play.disabled").toggleClass("disabled",false);
			
			buttonSwitch();
			
			//Change js-player 	
			$(".js-player").attr("src", response.tracks.items[0].preview_url+".mp3");
		},
		error: function(){
			console.log("Error search");
		}
	});
	// $(".disabled").toggleClass("playing");
};

function displayTrack(trackinfo){
	console.log(trackinfo);
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


function buttonSwitch(){
	$('.btn-play').on("click", function(){

		$(".btn-play").toggleClass("playing",true);
		$('.js-player').trigger('play');
		// $('.js-player').trigger('pause');
	});


}
