'use strict';
var sys = require('sys');

function Car(plate, owner) {
  this._plate = plate;
  this._owner = owner;
}
Car.prototype.details = function() {
  console.log('plate: ', this._plate, ', Owner:', this._owner);
};
function Toyota(model, owner) {
  Car.call(this, 'no plate!', owner); 
  this._model = model;
}
Toyota.prototype = Object.create(Car.prototype); 
Toyota.prototype.recall = function() {
  console.log(this._plate, 'is getting recalled');
};
function Corolla() {
  Toyota.call(this, 'Corolla', 'Bob');
}
Corolla.prototype = Object.create(Toyota.prototype);
Corolla.prototype.insurance = function() {
  console.log('this car is not ensured!');
};

var myCorolla = new Corolla();

console.log("Corolla's prototype", sys.inspect(Corolla.prototype, true), "\n");
console.log("Corolla's prototype's prototype", sys.inspect(Object.getPrototypeOf(Corolla.prototype), true), "\n");
console.log("Corolla's prototype's prototype", sys.inspect(Object.getPrototypeOf(Object.getPrototypeOf(Corolla.prototype)), true), "\n");
