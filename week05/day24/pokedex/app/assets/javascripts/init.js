if (window.PokemonApp === undefined){
	window.PokemonApp = {};
}

PokemonApp.init = function(){
	console.log("Pokemon App ONLINE!");
};

$(document).on("ready", function(){
	PokemonApp.init();
});