// create a function that takes a string as a parameter
// and reverses the string.

// reverse("hello")
// create a string variable
// get the length of the string
// for each chracter in the string take that character index position and subract it from the index length and that number becomes the new index position for that letter.
// end after iterations = str length.
// print the output "hello" should become "olleh"

// I'm unsure if we were allowed to use the methods in the MDN literature. https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array

// The directions where not clear to me it said they didn't exist but they do in fact exist. The instructions did not say we couldn't use them. so I wrote a reverse2 function.

// I wrote a similar function that prints each letter in its index position in reverse but "unjoined", reverse1

// if we're not allowed to use the built in methods i wrote reverse3


var str = "hello";

function reverse1() {
  for (var i = str.length; i > -1; i--){
    var str_reverse = str[i]
    console.log(str_reverse);
  }
}

function reverse2() {
  var strReverse = str.split('').reverse().join('');
  if (str == strReverse) {
    console.log("This is a pallindrome")
  }
  else {
  console.log(strReverse);
  }
}

function reverse3() {
  var reverse_str = '';
  for (var i = str.length - 1; i >= 0; i--)
    reverse_str += str[i];
  console.log(reverse_str)
}

reverse1()
reverse2()
reverse3()