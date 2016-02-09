// Write your Pizza Builder JavaScript in this file.
$(document).ready(function(){
	
	var total = 10;
	$(".btn-pepperonni.active").on("click", function(){
		$(".pep").toggle();
		$(".btn-pepperonni").toggleClass("active");
		$(".pep-price").toggle();
	});

	$(".btn-mushrooms").on("click", function(){
		$(".mushroom").toggle();
		$(".btn-mushrooms").toggleClass("active");
	});

	$(".btn-green-peppers").on("click", function(){
		$(".green-pepper").toggle();
		$(".btn-green-peppers").toggleClass("active");
	});

	$(".btn-crust").on("click", function(){
		$(".crust").toggleClass("crust-gluten-free");
		$(".btn-crust").toggleClass("active");
	});

	$(".btn-sauce").on("click", function(){
		$(".sauce").toggleClass("sauce-white");
		$(".btn-sauce").toggleClass(" active ");
	});
});