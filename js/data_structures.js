// array of four colors
var colors = ["blue", "silver", "white", "orange"];
// array of four names
var names = ["ed", "jack", "dancer", "prancer"];
// declare horse hash
// add horse name as key and color as value
var horses = {};
for ( var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses)

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
