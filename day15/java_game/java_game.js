var read = require('read');
var fs = require('fs');
var count = 0;

fs.readFile("./questions.json", 'utf8', Questions);

function Questions (err, questionfile) {
    if (err) {
        throw err;
    }
    else {
		var question_list = JSON.parse(questionfile);
		
		if(question_list[count] === undefined) {
	    		console.log("You finished the game!!!");
	    		return;
	   	}
	   	else {
			options = {
			   	prompt: question_list[count].question + "\n>"
			}
		}
		
		function displayAnswer (err, user_answer){
	    	var user = user_answer.toLowerCase();
	    	
	    	if(user == question_list[count].answer) {
	    		console.log("Correct.");
	    		count ++;
	    		fs.readFile("./questions.json", 'utf8', Questions);
			} 
			else {
				console.log("Try again");
				console.log("Hint: "+question_list[count].hint);
				read(options, displayAnswer);
			};
		};

		read(options, displayAnswer);
	};
};