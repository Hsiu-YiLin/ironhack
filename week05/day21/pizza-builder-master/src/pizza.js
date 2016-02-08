// Write your Pizza Builder JavaScript in this file.
$(document).ready(function(){
	$(".btn-pepperonni.active").on("click", function(){
		$(".pep").toggle();
	});

	$(".btn-mushrooms").on("click", function(){
		$(".mushroom").toggle();
	});

	$(".btn-green-peppers").on("click", function(){
		$(".green-pepper").toggle();
	});

	$(".btn-crust").on("click", function(){
		$(".crust").toggleClass("crust-gluten-free");
	});

	$(".btn-sauce").on("click", function(){
		$(".sauce").toggleClass("sauce-white");
	});
	
});