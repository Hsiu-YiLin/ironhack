$(document).ready(function(){
	var color = ["yellow", "blue", "green", "orange"]
	var counter = 0; 

	$('#unicorn-color').on('click', function()  {
		$('.unicorn-mode').toggleClass('unicorn-mode' + color[counter - 1]);
		$('.unicorn-mode').toggleClass('unicorn-mode' + color[counter]);
		counter++;
		if (counter === 4) counter = 0;
		
	});	
});