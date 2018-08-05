//: Playground - noun: a place where people can play

import UIKit


class MyClass {
    
}

extension MyClass{
    
}

extension String {
    //to reverse the contents of a string
    func reverse() -> String {
        var characterArray = [Character]()
        for character in self {
            characterArray.insert(character, at: 0) //new elements push old ones to higher array index
        }
        return String(characterArray) //making the contents of characterArray a String
    }
}

var name = "Marty McFly"
name.reverse() //can call extension function, as name is a String


//Extending Integer sub-class
extension Int{
    func square() -> Int {
        return self * self
    }
}

var value = 9
value.square()

print(value)

extension Double {
    mutating func calculateArea() { //mutating functions allow to modify value of variable called upon
        let pi = 3.1415
        self = pi * (self * self)
    }
}

class Circle {
    var radius: Double
    init(radius: Double) {
        self.radius = radius
    }
}

var circle = Circle(radius: 3.3)
print(circle.radius)
circle.radius.calculateArea()
print(circle.radius) //changed value of radius
