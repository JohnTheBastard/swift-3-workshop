//: Playground - noun: a place where people can play

import UIKit

//Constants and Variables

var myVar = 16
myVar = 25
let myConst = 47
let myName = "John"


//Numeric Type

let minValue = UInt8.min
let maxValue = UInt8.max
let aBiggerInt = UInt64.max

let myFloat : Float = 1.234937
let myDouble : Double = 1.234937987231234
let aFloat : Float = 1.234567891
let aDouble : Double = 1.234567891011121314

//String

let someString = "Some string literal value"
var emptyString = ""
var anotherEmptyString = String()
let firstName = "John"
let lastName = "Hearn"
var fullName : String
fullName = firstName + " " + lastName


//Tuple

let tuple = (description: "Unauthorized", code: 401)
let hash = (description: "Not Found", code: 404.123456789101112)
tuple.description
hash.code

var mixedTuple: (myNum: UInt64, mySet: Set) = (1234, [1, 3, 7])
var newSet = mixedTuple.mySet.intersection([3,6,9,7])




//Set

let set: Set = [1, 2, 3, 4, 8.8]
let setB: Set = [1, 9, 8, 4, 2, 8.8]

let result = set.intersection(setB)

set.contains( 8.800000000000001 )  //true
set.contains( 8.799999999999999 )  //false


//Array
let stringsArray = [String]()
var planetArray = ["Pluto", "Jupiter"]
var intArray = [Int](repeating: 0, count: 7)

intArray.append(100)
intArray.append(10)
intArray.insert(1000, at: 0)

var moreInts: Array = [ 8, 7, 12 ]

intArray += moreInts

let removedValue = intArray.remove(at: 6)
intArray


//Dictionary

let dictionaryOne = [String : String]()
var dictionaryTwo = ["name" : "Mars"]
dictionaryTwo["location"] =  "Home"
dictionaryTwo["name"] =  "Earth"
dictionaryTwo


//For-In Loop

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

for value in intArray{
    print(value)
}

for (key, value) in dictionaryTwo{
    print("Key: \(key), Value: \(value)")
}


//While Loop

var counter = 1

while counter <= 100 {
    counter += 2
}

//Repeat While

var repeatCount = 100

repeat {
    print("This will print at least once.")
    repeatCount -= 2
} while repeatCount > 10



//If Statement

var temperatureInFahrenheit = 50
if temperatureInFahrenheit > 20 {
    print("It's not that cold. Wear a t-shirt.")
} else if temperatureInFahrenheit < -50{
    print("It's way too cold! Your eyeballs will freeze!")
} else {
    print("It's very cold. Consider wearing a scarf.")
}



//Switch Statement

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "A", "Z":
    print("We're not worrying about upper-case right now.")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

let approximateCount = 3

let countDescription : String

switch approximateCount {
case 0:
    countDescription = "none"
case 2:
    countDescription = "a couple"
case 1...5:
    countDescription = "a few"
case 5..<12:
    countDescription = "several"
case 12, 24, 36, 48:
    countDescription = "dozens of"
case 100..<1000:
    countDescription = "hundreds of"
default:
    countDescription = "unknown"
}

let somePoint = (x: 1,y: 1)

switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.x), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.y)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.x), \(somePoint.y)) is inside the box")
default:
    print("(\(somePoint.x), \(somePoint.y)) is outside of the box")
}

//Optionals

var surveyAnswer: String?

//surveyAnswer = "This was so much fun!!!"

if surveyAnswer == nil{
    print("SurveyAnswer is nil.")
}

if let surveyAnswer = surveyAnswer{
    print(surveyAnswer)
}

//-----LAB-2-----//


//Classes and Structs

struct ScreenLocation{
    var x: Int
    var y: Int
}

let location = ScreenLocation(x: 0, y: 0)

var location2 = location
location2.x = 10

location2.x
location.x  //value copy


class Person{

    var name: String
    var age: Int

    init(name: String, age: Int = 0) {
        self.name = name
        self.age = age
    }

}

let myPerson = Person(name: "John", age: 36)
let myFriend = Person(name: "Brook")

var otherPerson = myPerson

otherPerson.age = 100
myPerson.age  //reference copy



//Protocols

protocol DogYears{
    var age : Int { set get }

    func ageInDogYears() -> Int
}

extension DogYears {
    func ageInDogYears() -> Int{
        return age * 7
    }
}

class Dog: DogYears{
    internal var age : Int = 1

//    func ageInDogYears() -> Int{
//        return age * 7
//    }
}


//Inheritance

class Student: Person, DogYears{

    var studentID: String?
    var classNumber: Int?

//    func ageInDogYears() -> Int {
//        return age * 7
//    }
}

let student1 = Student(name: "Joe Mama", age: 17)

student1.classNumber = 1337
student1.studentID = "n00bh4xx0r"


//Extensions

extension String{
    func length()-> Int{
        return self.characters.count
    }
}

let myString = "Testing... Testing..."
myString.length()


//Functions

func greet(person: String = "Errbody") -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

greet(person: "Joe Mama")
greet()


func addThese(numbers: Int...)-> Int{
    var total = 0

    for number in numbers{
        total += number
    }
    return total
}


addThese(numbers: 0,1,2,3,4,5)


func changeStuff(number: Int, callback:(Int)->()){

    callback(number * number)

}

//Closures

changeStuff(number: 10) { (results) in

}
