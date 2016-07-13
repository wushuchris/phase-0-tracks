// Release 0
// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// declare an empty array of words
// pass in an array of words or phrases
// get the length of each word in the array
// return the word or phrase that is longest at that index position

var words = ['gray', 'blue', 'green'];
var evalWordsLength = [];

for ( var i = 0; i < words.length; i++) {
  evalWordsLength.push(words[i].length);
}

var largest = Math.max.apply(Math, evalWordsLength);
for ( var i = 0; i < words.length; i++) {
  if (words[i].length == largest) {
    console.log(words[i]);
  }
}
