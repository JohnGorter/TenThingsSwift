/*:
 # Variables
 ---
  There are six basic types:
 * UInt
 * Int
 * Float
 * Double
 * Bool
 * String
 
 The width of the types (Uint16/32/64) is not specified... 
 They have methods, properties (like max) and can be extended
 */

// you can change a var afterwards
var a = 10
// you cannot change a let afterwards
let b = 10
// b = 30

//: You can use the foundation classes for Int, and therefore specify a width

let c:Int8
var d:Int64

//: There is a typealias to rename types
typealias John = Int
var f:John = 30

//: You cannot add two different types, you need to cast them
var j:Int = 10
var k:Double = 2.5

var l = j + Int(k)
var m = Double(j) + k