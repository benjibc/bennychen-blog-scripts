'use strict';
/**
 * This is the constructor of a class
 */
function Car(plate, owner) {
  // you can assign the property to this
  this._plate = plate;
  this._owner = owner;
}

Car.prototype.details = function() {
  console.log('plate: ', this._plate, ', Owner:', this._owner);
};

var newCar = new Car('Rand', 'BennyChen'); 
newCar.details();
