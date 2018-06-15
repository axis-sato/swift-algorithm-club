//: Playground - noun: a place where people can play

import UIKit

public struct Stack<T> {
    fileprivate var array = [T]()
    
    var count: Int {
        return array.count
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
    
    var top: T? {
        return array.last
    }
}

var stackOfName = Stack(array: ["Pippo", "Kaka", "Nesta", "Maldini"])
stackOfName.count

stackOfName.push("Pirlo")
print(stackOfName.array)

stackOfName.pop()

stackOfName.top
