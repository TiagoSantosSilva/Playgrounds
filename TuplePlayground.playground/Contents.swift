//: Playground - noun: a place where people can play

import UIKit

let person = ("Billy", "Bob", "Johnson")
print(person.0, person.1, person.2)

let p = (firstName: "Billy", middleName: "Bob", lastName: "Johnson")
print(p.firstName, p.middleName, p.lastName)

func divide(x: Int, y: Int) -> (Int, Int) {
    let quotient = x / y
    let remainder = x % y
    return (quotient, remainder)
}

let result = divide(x: 6, y: 2)
result.0
result.1

// Use optionals inside of tuples

func topTwoLongestNames(names: [String]) -> (String?, String?) {
   
    if names.isEmpty {
        return (nil, nil)
    }
    
    let sortedList = names.sorted { (x, y) -> Bool in
        return x.count > y.count
    }
    
    print(sortedList)
    
    if sortedList.count == 1 {
        return (sortedList[0], nil)
    }
    
    return (sortedList[0], sortedList[1])
}

let returnValues = topTwoLongestNames(names: ["Mike", "Bill", "Steve", "Samantha"])
returnValues.0
returnValues.1

let returnValuesSeconNil = topTwoLongestNames(names: ["Mike"])
let returnValuesBothNil = topTwoLongestNames(names: [])
