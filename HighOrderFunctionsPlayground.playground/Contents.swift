//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let numbers = [1, 2, 3, 4, 3, 3]
let oneToFour = [1, 2, 3, 4]

// 1. Filter into [3, 3, 3], then filter into [2, 4] (even numbers).

let filteredByThree = numbers.filter({ return $0 == 3})
let filteredByEvenNumbers = numbers.filter({ return $0 % 2 == 0 })

// 2. Transform [1, 2, 3, 4] -> [2, 4, 6, 8] using map.

// 👍
let transformed = oneToFour.map({ return $0 * 2})
transformed

// 👎
var transformedArray = [Int]()
for number in oneToFour {
    transformedArray.append(number * 2)
}
transformedArray

// 3. Sum [1, 2, 3, 4] -> 10 using reduce


// 👍
let sum = oneToFour.reduce(0, {sum, number in sum + number})
sum

// 👎
var sumElements = 0
for number in oneToFour {
    sumElements += number
}
sumElements
