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
		var picture = "public/nopicture.png";
		if (typeof artist.images[0] !== "undefined") {
			picture = artist.images[0].url;
		}
		var html = `
		<li>
		${artist.name}
		<img class="artist-picture" src="${picture}">
		</li>
		`;
		$(".js-artist-display").append(html);
	});
}