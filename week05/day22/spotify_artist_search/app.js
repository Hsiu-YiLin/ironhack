$(document).on("ready", function() {
$('.js-character-form-submit').on('click', onSubmit);
});

function onSubmit (event) {

	event.preventDefault();
	console.debug('SUBMITTED');

	var artistsearch = $("#artist").val();
	
	$.ajax({
		url: "https://api.spotify.com/v1/search?type=artist&query="+artistsearch,
		success: function (response) {
		  console.log(response);
		 },
		error: function () {
		  alert("You broke Spotify.");
		}
	});
}