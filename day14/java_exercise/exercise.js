var Car = function(model, noise) {
	this.model = model;
	this.noise = noise;
	this.wheels = 4;
};

Car.prototype.printthis = function(){
	console.log("This "+ this.model+" makes this noise: "+this.noise+ "." 
		+ " It also has this number of wheels:"+this.wheels);
};

var car1 = new Car("MAZDA","Vroom Vroom");

car1.printthis();
