 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:  Choose whether your card will be higher or lower.
// Goals:  Win 5x in a row to win the game.
// Characters: you, and the deck
// Objects:  your card, and the deck's card
// Functions:  Guess whether the next card will be higher or lower, if you guess right, your card replaces the shown card.
//  If you guess wrong, you lose and it displays what level you reached.

// Pseudocode
//initialize an array of values, 2 thru A. initialize a variable called counter
//initialize a new variable called deck, and have it pick a random value
//prompt a menu that allows you to pick "higher" or "lower"
//intialize a new variable called player, and have it pick a random value
//if you guess correctly, deck is now equal to player card, and your win counter goes up by 1
//repeat this process till win counter is equal to 5, at which point, display a win message.
//if you lose, display a lose message with how many levels you beat.

// Initial Code
// J = 11;
// Q = 12;
// K = 13;
// A = 14;
var values = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"];

var deck = {
	initialcard : rand;
}

var player = {
	initialcard : rand;
}

function randomcard() {
	var rand = values[Math.floor(Math.random() * values.length)];
	return rand;
}

function checkyourguess(guess) {

}

function highorlow() {
	if 
}

// Class Card *********************************************************
function Card(suit, value) {
    this.suit = suit;
    this.value = value;
    this.isShowing = false;
}
Card.suits = ["Clubs", "Diamonds", "Hearts", "Spades"];
Card.values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"];
Card.blackJackValues = {
    2: 2, 3: 3, 4: 4, 5: 5, 6: 6, 7: 7, 8: 8, 9: 9, 10: 10, Jack: 10, Queen: 10, King: 10
};

Card.bjValue = function (card) {
    return Card.blackJackValues[card.value];
};
Card.prototype.to_s = function () {
    return (this.value + '_' + this.suit);
};
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