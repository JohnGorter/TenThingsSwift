/*: extensions
 # extensions
*/


extension Range where Element : Comparable {
    func contains(element: Element) -> Bool {
        return element >= startIndex && element < endIndex
    }
}

(Int.min..<0).contains(-1) // true
(Int.min..<0).contains(0) // false
(Int.min..<0).contains(1) // false

//: [Next](@next)
