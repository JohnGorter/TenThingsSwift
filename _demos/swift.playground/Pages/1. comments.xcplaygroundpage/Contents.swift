/*: Markdown comments
 # 1. Comments
 ---
 Swift supports single an multiline comments. 
 Swift supports nesting multiline comments, jeej!
 Swift lets you annotate functions, types and classes with comments, just like in Java and C#
 However, markdown is fully supported. An example below:
*/
//: --- 
//: Here is an example of some inline multiline comment
/* Here is some comment /* with some comment inline in it */ but that does not matter for swift at all! */
//: ---
//: Here is an example of annotating a type with documentation
//: Hover and alt+click to see the annotation with the type...
/**
Person class
 The personclass holds **person** data
 - author: John Gorter
 - example: *Creating a new person*\
 This example shows how to create an instance of a new person.\
 \
 `let john = Person()`
 */
class Person{ private var name:String?; }
 
/**
Another description
    
- important: Make sure you read this
- returns: a Llama spotter rating between 0 and 1 as a Float
- parameter totalLlamas: The number of Llamas spotted on the trip

More description
 1. It supports *strong* markdown syntax!
*/

func addTenToTen(a:Int, b:Int)->Int{ return a + b; }
/*:
 ---
  Next up [operators](@next)
 */

