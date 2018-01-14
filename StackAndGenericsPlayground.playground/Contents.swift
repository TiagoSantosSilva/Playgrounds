//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Node<T> {
    let value: T
    var next: Node<T>?
    
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    
    var top: Node<T>?
    
    func push(_ value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peek() -> T {
        return (top?.value)!
    }
}

struct Pokemon {
    let dexNumber: Int
    let name: String
}

let bulbasaur = Pokemon(dexNumber: 001, name: "Bulbasaur")
let charmander = Pokemon(dexNumber: 004, name: "Charmander")

let pokeStack = Stack<Pokemon>()
pokeStack.push(bulbasaur)
pokeStack.push(charmander)

pokeStack.peek()

let firstPokePop = pokeStack.pop()
let secondPokePop = pokeStack.pop()

let intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)
intStack.push(3)

intStack.peek()

let firstIntPop = intStack.pop()
let secondIntPop = intStack.pop()
let thirdIntPop = intStack.pop()
let finalIntPop = intStack.pop()

//for _ in 1...Int.max {
//    guard let stackPop = stack.pop() else { break }
//    print(stackPop)
//}

