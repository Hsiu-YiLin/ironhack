$(document).on("ready", function() {
	$(".js-show-characters").on("click", function(){
		fetchCharacters();
	});

	$(".js-add-kylo").on("click", function(){
		publishKylo();
	});
});


function fetchCharacters(){
	$.ajax({
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: function(response) {
			console.log("Everthing is a okay");
			displayCharacters(response);
		},
		
		error: function() {
			console.log("Oh no");
		}
	});
}

function displayCharacters (characters) {
	characters.forEach(function (char){
		var html = `
			<li>
				<h2> ${char.name} </h2>
				<p>ID# ${char.id} </p>
				<p>Occupation: ${char.occupation} </p>
				<p>Weapon: ${char.weapon}</p> 
			</li>
			`; 
		$(".js-char-list").append(html);
	});
}

function publishKylo (){
	var newCharacter;
	$.ajax({
		type: "POST",

		url: "https://ironhack-characters.herokuapp.com/characters",

		data: newCharacter,

		success: function(){
			alert("Great");

		},

		error: function(){
			alert("What?");

		}
	});
} 