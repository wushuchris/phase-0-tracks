// array of four colors
var colors = ["blue", "silver", "white", "orange"];
// array of four names
var names = ["ed", "jack", "dancer", "prancer"];
// declare horse hash
var horse = {};
// add horse name as key and color as value
horse['name'] = "jack";
horse['color'] = "blue";
console.log("The horse's name is " + horse['name']);
console.log(horse['name'] + " is " + horse['color']);

function Horse(name, color) {
  console.log("our new horse:", this);
  this.name = name;
  this.color = color;
  console.log("horse is in the barn");
}

var Horse1 = new Horse('jack', 'silver');
console.log(Horse1);
console.log("----");
//write a constructor function for a car. Give it a few different properties of various data types, including at least one function. Demonstrate that your function works by creating a few cars with it.
function Car(make, model, doors) {
  // In this context, 'this' refers to
  // the individual car we're making
  console.log("Our new car:", this);

  // Therefore, this.make is sort of the Ruby
  // equivalent of @make
  this.make = make;
  this.model = model;
  this.doors = doors;

  this.engine = function() { console.log("vroom!"); };

  console.log("CAR INITIALIZATION COMPLETE");
}

var car1 = new Car('BMW', '5 series', 4);
console.log(car1);
console.log("start the car")
car1.engine();
console.log("----");

var car2 = new Car('Mercedes', 'E550 AMG', 4);
console.log(car2);
console.log("start the car")
car2.engine();
console.log("----");

var car3 = new Car('Acura', 'NSX', 2);
console.log(car3);
console.log("start the car")
car3.engine();
console.log("----");
