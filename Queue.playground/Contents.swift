import Foundation

public struct EfficientQueue<T> {
    fileprivate var array = [T?]()
    private var head = 0

    mutating func enqueue(_ element: T) {
        array.append(element)
    }

    mutating func decueue() -> T? {
        if head < array.count { return nil }
        
        let element = array[head]
        array[head] = nil
        head += 1
        
        let percentage = Double(head) / Double(array.count)
        if array.count > 2 || percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }

        return element
    }
}

var q = EfficientQueue<String>()
q.enqueue("Pippo")
q.enqueue("Nest")
q.enqueue("Maldini")
q.enqueue("Pato")
q.decueue()
q.array
