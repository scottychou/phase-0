 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up

var test = [person]
var person = {
  name: "Jackie Chan",
  event: "Chinatown",
  win: ""
}

function addWin(person){
  for(i = 0; i < person.length; i++){
    person[i].win = person[i].name + " won at " + person[i].event + "!";
  }
  console.log(person.win);


// Jumble your words

function reverser(wordstring){
  var i = wordstring.length-1;
  var newword = "";
  while (i >= 0){
    newword += wordstring.charAt(i)
    i--; 
}
  console.log(newword);
}  
reverser("this is a test");


// 2,4,6,8

function isEven(numarray){
  var even = [];
  for(var i=0; i < numarray.length; i++) {
    if( numarray[i] % 2 == 0){
      even.push(numarray[i]);
    }
  }
  console.log(even);
}
var testthis = [1,2,3,4,5,6,7,7,7,7,8]
isEven(testthis);


// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection


    //What JavaScript knowledge did you solidify in this challenge?
    //-I was able to get used to constructor functions, which are comparable to instance variables.  I was also able to get a good amount of practice in on the general syntax.


    //What are constructor functions?
    //-Constructor functions are basically the equivalent to instance variables.  By setting them, you can call them on new instances that you initialize.


    //How are constructors different from Ruby classes (in your research)?
    //-So far to me, they seem to just have a lot of similarities.  For how they are different, I didn't conduct much research that showed they were different.
    //-For my assignment, they seemed to serve the same purpose as a class.
