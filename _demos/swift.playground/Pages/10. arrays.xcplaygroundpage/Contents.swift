/*:
 # Arrays and collections
 ---
 Swift knows about arrays and collections... We cannot have jagged arrays but do have multidimensional arrays. 
 Arrays support a range of handy functions.. We also have collections like Set and Dictionaries.. Here some examples...
 
 */
// declare an array with repeatedValues
var words:[String] = [String](count:3, repeatedValue:"")
//: we can append using +=
words += ["two","more"]
//: we can insert ranges...
words[1...2] = ["hello","world"]
words
//:
// or replace more with two
words[1...4] = ["hello", "world"]
words
//: We can use two dimensional arrays
var field:[[Int]] = [[1,2],[3,4],[5,6]]
field[0]
field[0][0]
//: We can create and use sets, and note that we use the array notation assignment
//: No two elements in the set can contain the same value...
var myset:Set<String> = []
//: We use sets to do logic on them like
//: Note how there is only one B in the collection
var setA: Set<String> = ["A", "B", "B", "C"]
var setB: Set<String> = ["D", "B", "E"]
setA.intersect(setB)
setA.exclusiveOr(setB)
setA.union(setB)
setA.subtract(setB)
//: Dictionaries are key value pairs
var httpStatus:[Int:String] = [:] // empty dictionary
httpStatus[200] = "OK"
httpStatus[404] = "Not Found"
//: We can update values, but remember that it returns an optional, because it can be non existent in the dictionary
if let old = httpStatus.updateValue("PageNotFound", forKey: 404){ /* */ }
//: We can list the values
for (code, message) in httpStatus {
    print("\(code): \(message)")
}
//:---
//: Next up [ranges](@next)
