 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:  Choose whether your card will be higher or lower.
// Goals:  Win 5x in a row to win the game.
// Characters: you, and the dealer
// Objects:  your card, and the dealer's card
// Functions:  Guess whether the next card will be higher or lower, if you guess right, your card replaces the shown card.
//  If you guess wrong, you lose and it displays what level you reached.

// Pseudocode
//initialize an array of values, 1 thru 10. initialize a variable called counter
//initialize a new variable called deck, and have it pick a random value
//prompt a menu that allows you to pick "higher" or "lower"
//intialize a new variable called player, and have it pick a random value
//if you guess correctly, deck is now equal to player card, and your win counter goes up by 1
//repeat this process till win counter is equal to 5, at which point, display a win message.
//if you lose, display a lose message with how many levels you beat.

// Initial Code
var counter = 0;
var values = [1,2,3,4,5,6,7,8,9,10];
function randomcard() {
	var card = values[Math.floor(Math.random() * values.length)];
	return card;
}
var dealer = {
	card : randomcard()
};
var player = {
	card : randomcard()
};



function guess() {
	console.log("Dealer has: " + dealer.card);
	console.log("Please type in higher or lower");
	var x = prompt("Enter higher or lower","higher");
	if (counter === 3){
	    console.log("YOU WON THE FUCKING GAME");
	}
	else if (x === "higher"  && player.card > dealer.card){
		console.log("You guessed right, hidden card was a " + player.card + " and dealer has a " + dealer.card);
		dealer.card = player.card;
		player.card = randomcard();
		counter++;
		console.log("You are currently at " + counter + "win(s), you need 3 wins to beat the game");
	    
	}
	else if (x === "lower" && player.card < dealer.card){
		console.log("You guessed right, hidden card was a " + player.card + " and dealer has a " + dealer.card);
		dealer.card = player.card;
		player.card = randomcard();
		counter++;
		console.log("You are currently at " + counter + "win(s), you need 3 wins to beat the game");
	}
	else {
		console.log("You guessed wrong, hidden card was a " + player.card + " and dealer has a " + dealer.card);
		dealer.card = player.card;
		player.card = randomcard();
		counter = 0;
		console.log("Sucks to be you, you are back at a 0 win streak, lmao");
}
}
function gamestart(){
	console.log("Win 3 in a row, and beat this game.  Let's start:")
	while (counter < 3){
	guess();
	}
}

gamestart();

// Refactored Code






// Reflection
//
//
//
//
//
//
//
//