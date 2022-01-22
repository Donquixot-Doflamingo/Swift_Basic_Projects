//Create a class called "Vehicle" and add methods that allow you to set the "Make", "Model", "Year,", and "Weight".
//The class should also contain a "NeedsMaintenance" boolean that defaults to False, and and "TripsSinceMaintenance" Integer that defaults to 0.
//Next create a subclass that inherits the properties of Vehicle class. Call this new subclass "Cars".
//The Cars class should contain a method called "Drive" that sets the state of a boolean isDriving to True.  It should have another method called "Stop" that sets the value of isDriving to false.
//Switching isDriving from true to false should increment the "TripsSinceMaintenance" counter. And when TripsSinceMaintenance exceeds 100, then the NeedsMaintenance boolean should be set to true.
//Add a "Repair" method to either class that resets the TripsSinceMaintenance to zero, and NeedsMaintenance to false.
//Create 3 different cars, using your Cars class, and drive them all a different number of times. Then print out their values for Make, Model, Year, Weight, NeedsMaintenance, and TripsSinceMaintenance
//Extra Credit:
//Create a Planes class that is also a subclass of Vehicle. Add methods to the Planes class for Flying and Landing (similar to Driving and Stopping), but different in one respect: Once the NeedsMaintenance boolean gets set to true, any attempt at flight should be rejected (return false), and an error message should be printed saying that the plane can't fly until it's repaired.
//working good

import UIKit

class Vehical{
    var make : String
    var model : String
    var year : Int
    var weight : Int
    var NeedsMaintenance : Bool = false
    var TripsSinceMaintenance : Int = 0
    
    init(_make : String, _model : String, _year : Int, _weight : Int) {
        self.make = _make
        self.model = _model
        self.year = _year
        self.weight = _weight
    }
    
    func repair() {
        TripsSinceMaintenance = 0
        NeedsMaintenance = false
    }
}

//It can be implemented simply just put condition on stop that until drive is not running you can't run stop. When the stop is running increment the value of timesincemaintaince
//Then put a condition that if tsmaintaince is shown 100 times the sevice is required. Simple!!

class cars : Vehical {
    
    var  isDriving : Bool = false
    
    func drive() {
        if self.TripsSinceMaintenance == 101 {
            print("connot drive until repair")
            print(" \(self.TripsSinceMaintenance) trips since maintanince")
        }
        else{
            print("driving car")
            isDriving = true
        }
    }
    
    func stop() {
        if isDriving == true {
            self.TripsSinceMaintenance += 1
            print("car stopped")
            isDriving = false
        }
        else{
            print("first start the damn car")
        }
    }
    
    
}

class plane : Vehical{

    var isflying : Bool = false
    var check : Int = 0
    

    func takeOff() {
        if (self.TripsSinceMaintenance == 1 && isflying == false) {
            print("connot take off until repair or the plane haven't landed yet")
        }
        else if (isflying == true && check == 1){
            print("already took off")
        }
        else{
            print("plane took off")
            isflying = true
            check += 1
        }
    }
    
    func landing() {
        if isflying == true {
            self.TripsSinceMaintenance += 1
            print("plane landed")
            isflying = false
            check -= 1
        }
        else{
            print("let the plane took off")
        }
    }

}

