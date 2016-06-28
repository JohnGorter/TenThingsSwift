/*: [
# Optionals
---
Swift has a typesystem where you can declare optional values, like nullables in C#.
Nullables might or might not contain a value. Other variables can never product nil.
You cannot ever assign an optional variable to a non-optional variables, if you want 
this, you have to force an unwrap! Variables declared using ! are Explicitly unwrapped 
optionals which, upon use, are unwrapped automatically for you.

 Unwrapping can definitly cause runtime BAD EXECUTION errors!
 
 */
import Foundation
//: Swift has the notion of possible and impossible nil values
/// In the case below we declare a possible value of type Int
var possibleNum: Int?
possibleNum = Int("ten")
possibleNum = Int("10")
//: We cannot assign the Int(number) to impossibleNum because it can contain 0
var impossibleNum: Int
// print ("\(impossibleNum)") ERROR => use of uninitalized value
// impossibleNum = Int("ten")
// impossibleNum = Int("10")
//: So we have to unwrap the thing using a !. Unwrapping a nil resolves into a runtime error
/// impossibleNum = Int("ten")!  ERROR-> Bad Instruction
impossibleNum = Int("10")!

/// We can test and use these usind one construct
if let poss = Int("ten"){
    print("\(poss)")
}
if let poss2 = Int("10"){
    print("\(poss2)")
}

///: we even can use conditions inside the if statement, like this:
let poss2 = 40  // change to 10...
if let poss3 = Int("4") where poss3 < poss2{
  print("poss3 is smaller than poss2 \(poss3): \(poss2)")
}

if poss2 > 20,
    let a:Int? = poss2 where poss2 % 2 == 0{
      print("a is even and greater than 20")
}


//: Sometimes we want to have a var which can be nil, but we are sure of that on use, it has a value
//: We know these types of vars as Implicitly Unwrapped Optionals..
//: They need to be nil when the object is created.
//: We can guarantee that they are not nil when we use them.
var anotherNum: Int!
print ("\(anotherNum)") // => allowed
// var mynum:Int = anotherNum
print (anotherNum == nil) // we can test on nil
anotherNum = 10
var bla:Int = anotherNum // we do not have to unwrap them...
print("\(bla)")
//: These types are generated when we use IB and Outlets to UI Controls... They are nil upon creation, but sure
//: to be filled after initialization...
