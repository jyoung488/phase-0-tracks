var colors = ["blue", "green", "brown", "black"];
var horseNames = ["Black Beauty", "Ed", "Gus", "Randolph"];

colors.push("purple");
horseNames.push("Cinnamon");

var horses = {}

if (colors.length = horseNames.length) {
  for (var index = 0; index < horseNames.length; index++) {
    horses[horseNames[index]] = colors[index];
  }
}

function Car(make, model, year) {
  this.make = make;
  this.model = model;
  this.year = year;

  this.drive = function() { console.log("driving 100 mph!"); };

  console.log("Here we have a new car!");
}

var newCar = new Car("Toyota", "Prius", 2016);
console.log(newCar);

newCar.drive();

var anotherCar = new Car("Jeep", "Grand Cherokee", 1999);
console.log(anotherCar);
anotherCar.drive();