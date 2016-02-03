var blastoff = function(number) {
	var numtest = number;
	
	var printthis = function(numtest2){
		var num = numtest2; 
		if (num>0) 
			console.log(num);
			numtest --; 
		else 
			console.log("Blast Off!");
	}
	
	setTimeout(printthis(numtest), 1000);
	
	// for(var i = number; i>=0; i--) {
		
	// 	if (i>0)
	// 		setTimeout(printthis(i), 5000);
	// 	else 
	// 		console.log("Blast Off!");
blastoff(5);