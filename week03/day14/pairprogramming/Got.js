var fs = require('fs');

fs.readFile("./gameofthrones.json", 'utf8', fileActions);

function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    else {
    var episodes_old = JSON.parse(file);
    	var episodes_sorted = episodes_old.sort(function (a, b) { 
    		return a.episode_number-b.episode_number
    	});

		function isBelow(episodes) {
    			return episodes.rating > 8.5
		}
    
    	var episodes = episodes_sorted.filter(isBelow);
        var searchFor = function(episode){
    
        episode.indexOf("Jon Snow");
        }

		// puts stars with accordance to the ratings
    	var starMaker = function(stars) {
    		var stars = parseFloat (stars); 
    		var returnStars = '';
    			var starRatings = 0;
    				while (starRatings <  stars ) {
    					 returnStars = returnStars.concat('*');
    						starRatings++;
                    } return returnStars
    	}
    	// prints out the movies with all the attributes
    	for (var num = 0 ; num < episodes.length ; num++) {
    		console.log('Title: ' + episodes[num].title + '#: ' + episodes[num].episode_number);
    		console.log(episodes[num].description + '\n' + 'Rating: ' + episodes[num].rating + ' ' + starMaker(episodes[num].rating) + '\n');
    	};
    }
}

