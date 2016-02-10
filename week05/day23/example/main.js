var $color_button = $(".color-changer");

function changeColor(event){
	var color = $(event.target).data("color");
	$("body").css("background-color", color);
	window.localStorage.setItem("bg-color",color);
};

function loadDefaultColor(){
	if (window.localStorage.getItem("bg-color")){
		var savedColor = window.localStorage.getItem("bg-color");
		$("body").css("background-color", savedColor);
	}
};

loadDefaultColor();
$color_button.on("click", changeColor);