var phrases = {
	"Hello there";
}

var randomPhrase;
var random0to4 = Math.random()*4;
var randomInt = Math.round(random0to4);
var randomPhrase = phrases(randomInt);

$(document.on("ready",function(){ 
	$(".js-phrase-heading").text(randomPhrase);
});