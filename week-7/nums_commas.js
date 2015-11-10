// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// define function separateComma() which takes 1 argument (integer)
// convert to string, & split into an array 
//identify length
// for loop..  if array index -4 if % 0 insert a ','
// return it as a string with commas every 3 digits


// Initial Solution
// var separateComma = function(int){
//   var result = "";
//   var newint = int.toString();
//   var length = newint.length;
//   var i = 0;
//   while (length > 0) {
//         result += newint.charAt(i);
//         length -= 1
//         if ((length % 3 == 0) && (length != 0)) {
//           result += ',';
//         };
//     i += 1
//   }  
//   console.log(result)
// } 

// while (condition i > 0) { 
// result += newint.charAt(i);
// i ++ 1;
// }
// var array = string_to_split.split('')


 // def separate_comma(int)
 //   result = ""
 //   newint = int.to_s
 //   length = newint.length
 //   newint.each_char do |c|
 //     result += c
 //     length -=1
 //     if length % 3==0 && length != 0
 //       result += ','
 //     end
 //   end
 //   return result
 // end

// def separate_comma(num)
//   string = num.to_s

//   i = -4
//   if string.length > 3
//     while i * -1 < string.length + 1
//      string.insert(i, ',')
//      i -= 4
//     end
//   end
//   string
// end
 
// Refactored Solution

var separateComma = function(int){
  var result = "";
  var newint = int.toString();
  var length = newint.length;
  var i = 0;
  while (length > 0) {
        result += newint.charAt(i);
        length -= 1
        if ((length % 3 == 0) && (length != 0)) {
          result += ',';
        };
    i += 1
  }  
  console.log(result)
} 



// Your Own Tests (OPTIONAL)
separateComma(1234)
separateComma(1000000)
separateComma(999)



// Reflection


   // What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  //  - it was interesting.  I approached the problem the same way.  I would compare it to saying something in English, and then saying the same thing in Spanish.

  //  What did you learn about iterating over arrays in JavaScript?
  //  -Considering that I didn't use an array, I'd have to say I haven't learned much about array iteration.  I do know that the indexes still start at 0.

   // What was different about solving this problem in JavaScript?
   // -Variable declaration was different, and I had to figure out the new syntax in general.  I also had to find new method names.

  //  What built-in methods did you find to incorporate in your refactored solution?
  //  -charAt was a method that I used instead of each_char in ruby.  I also used console.log() to display results instead of print.  I also used toString(), instead of .to_s.