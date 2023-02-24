import UIKit

class Person {
    let name: String
    var apartment: Apartment?
  
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) deinitialized")
    }
}

class Apartment {
    
    let number: Int
    //Use weak var
    weak var tenant: Person?
    
    init(number: Int) {
        self.number = number
    }
    
    deinit {
        print("Apartment \(number) deinitialized")
    }
}

var nico: Person? = Person(name: "Nicolas")
var apartment: Apartment? = Apartment(number: 1)
 
apartment?.tenant = nico
nico?.apartment = apartment
nico = nil
apartment = nil
