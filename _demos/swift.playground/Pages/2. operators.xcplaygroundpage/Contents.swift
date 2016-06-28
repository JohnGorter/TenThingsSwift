/*: operators
 # Operators
 ---
 Swift operators are globally the same as operators in other languages, however
 the assign operator (=) has to be surrounded with spaces. If you were to write 
 y=-x, or y= -1, which is mostly acceptable in the other languages, the Swift 
 compiler will tell you that there is no postfix assign operator in Swift. 
 
 Swift does know about operator overloading
 We can overload or create our own operators. Let's make some..  
 Here are examples of operator use..
 
 */
// Here is an example of the requirement for spaces in the = operator
let x = 10
var y = 0

// y=-x     // ERROR
// y= -x    // ERROR
// y =- x   // ERROR
y = -x
/*:
 The equals sign does not produce a value so 
 `if a = b == 0 {  }` fails
 Even so does
 `a = b = c`
 Check this:
 */
var a:Int, b:Int, c:Int
c = 20
// a = b = c  // ERRORS
/*:
 And what about the & operator, this allows for arithmatic overflow
 */
var d = Int.max / 2
var e:Int = d * 2
// var h:Int = d &/ 2 ERROR -> unresolved operator
// var f:Int = d * 3 ERROR -> overlfow...
var g:Int = d &* 3
/*:
 There is a new inrange operator, which is used on ranges...
 */
var k = 5; if 1...9 ~= k{ print ("k is in range") }

//: This forms a half-open interval from `Int.min` to `upperBound`
prefix operator ..< {}
prefix func ..< (upperBound: Int) -> HalfOpenInterval<Int> { return Int.min..<upperBound }
..<20

postfix operator ...{}
postfix func ... (value:Int) -> String { return String(value*2) }
30...

// do not ever
infix operator +{}
func +(a:Int, b:Int) -> Int{ return a - b ; }
10 + 2

//: ---
//: Next up [strings](@next)
