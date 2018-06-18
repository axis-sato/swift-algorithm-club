import Foundation


func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
    if range.lowerBound >= range.upperBound {
        return nil
    }
    
    let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
    
    if a[midIndex] > key {
        return binarySearch(a, key: key, range: range.lowerBound..<midIndex)
    }else if a[midIndex] < key {
        return binarySearch(a, key: key, range: midIndex + 1..<range.upperBound)
    } else {
        return midIndex
    }
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
binarySearch(numbers, key: 43, range: 0..<numbers.count)
