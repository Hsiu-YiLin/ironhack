var exampleArray = [2, -5, 10, 5, 4, -10, 0];

var results = process(exampleArray);

function process(input) {
	var two=0;
	var string = [];
	for (var i=0;i<7;i+=1){
		while(two<7) {

			// if (input[two] + input[i] == 0)
			if (input[i] + input[two] == 0){
				// if (string[i] == (two+","+i)) {
					string.push (i+","+two);
				}

			// }
		two+=1;
		}
		two=0;
	}
	return string;
}
console.log(results);