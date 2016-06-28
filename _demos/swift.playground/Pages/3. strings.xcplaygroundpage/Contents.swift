/*: Strings
 # Strings
 ---
 In Swift strings are derived from NSString so you can assign a Swift String to a NSString
 but no the other way around. Strings can contain unicode characters and even variable names and
 labels can contain unicode characters (even emoji)..
*/
import Foundation
var test:String = "Hello"
var test2:NSString = "World"
//: We can assign test to test2 but not the other way around...
test2 = test
// test = test2 ERROR
//: You can cast a NSString to a String
test = test2 as String
//: Strings can contain unicode characters, even emoji
//: Even variable names can contain emoji
let hello:String = "💩💩💩💩"
let 😂 = "test"
print (😂)
//: This code prints out all available emoticons in the system..
for i in 0x1F601...0x1F64F {
    var c = String(UnicodeScalar(i))
    print(c)
}
//: ---
//: Next up [optionals](@next)
