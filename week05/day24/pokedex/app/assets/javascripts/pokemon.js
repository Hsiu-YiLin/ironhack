// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on("ready",function(){
	$(".js-show-pokemon").on("click",function(event){
		var $button= $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	}); 
});

PokemonApp.Pokemon = function (pokemonUri) {
	this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
};

PokemonApp.Pokemon.prototype.render = function(){
	console.log("Rendering pokemon: #" + this.id);

	$.ajax({
		url: '/api/pokemon/'+ this.id,
		success: function(response){
			console.log("Pokemon info:");
			console.log(response);
			self.info = response;

			var type ="";
			(self.info.types).forEach(function(onetype){
				type = type + onetype.name + " ";
				// console.log(onetype);
				// console.log(onetype.name);
			});
			
			$(".js-pkmn-name").text(self.info.name);
			$(".js-pkmn-number").text(self.info.pkdx_id);
			$(".js-pkmn-type").text(type);
			$(".js-pkmn-hp").text(self.info.hp);
			$(".js-pkmn-attack").text(self.info.attack);
			$(".js-pkmn-defense").text(self.info.defense);
			$(".js-pkmn-spattack").text(self.info.sp_atk);
			$(".js-pkmn-spdef").text(self.info.sp_def);
			$(".js-pkmn-speed").text(self.info.speed);

			$(".js-pkmn-height").text(self.info.height);
			$(".js-pkmn-weight").text(self.info.weight);
			$(".js-pokemon-modal").modal("show");
		},
		error: function(){
			alert("What!");
		}
	});
	// Add sprite to header to left
	$.ajax({
		url: '/api/pokemon/'+this.id,
		success: function(response){
			self.info = response,
			imghtml=`<img src="http://pokeapi.co/media/img/${self.info.pkdx_id}.png">`,
			$(".js-pkmn-image").html(imghtml)
		},
		error: function(){
			alert("Image failed!");
		
		}
	});

	// Add pokemon description to body float right
	$.ajax({
		url: 'description/'+this.id,
		success: function(response){
			self.info = response
			// descriptionarraylength = self.info.descriptions.length,
			// console.log(descriptionarraylength),
			// $(".js-pkmn-description").text(self.info.weight);
		},
		error: function(){
			alert("Description failed!");
		}
	});

};

PokemonApp.Pokemon.idFromUri = function(pokemonUri){
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length-2;
	return uriSegments[secondLast];
};

PokemonApp.PokemonEvolutions = function(id,info) {
	this.id = id;
	this.info = info;
};

PokemonApp.PokemonEvolutions.prototype.render = function(){
	console.log("Rendering evolutions for: #"+ this.id);
	this.info.evolutions.forEach(function (ev){
		$.ajax({
			url: ev.resource_uri,
			success: function(response){
				console.log("Got evolution", ev.to);
				console.log(response);
			}
		});

	});
};


$(document).on("ready", function(){
	$(".js-evolutions").on("click", function(event)){
		var $button = $(event.currentTarget);
		var pokemonId = $button.data("pkmn-id");

		$.ajax({
			url: '/api/pokemon/${pokemonId}',
			success: function(response){
				var evolutions = new 
			}
		})
	}

});