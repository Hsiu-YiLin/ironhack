$(document).on("ready", function() {

$('.js-character-form-submit').on('click', onSubmit);

});

function onSubmit (event) {
	console.log(event);
	event.preventDefault();
	console.debug('SUBMITTED');

	var artistsearch = $("#artist").val();

	$.ajax({
		url: "https://api.spotify.com/v1/search?type=artist&query="+artistsearch,
		success: function (response) {
		  console.log(response.artists.items);
		  displayArtistImage(response.artists.items);
		 },
		error: function () {
		  alert("You broke Spotify.");
		}
	});
}	

function displayArtistImage (artistresult){
	artistresult.forEach(function(artist){
		console.log(artist.images.);
		var html = `
		<li>
		${artist.name}
		

		</li>
		`;
		$(".artist-display").append(html);
	});
}