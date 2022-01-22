//arrays
/*
 --> The arrays are the type of collection type which stores the value of same type and in an ordered list.
 --> The same value can appear multiple time in an array at different positions.
 --> we access values by using [0] or [1]
 --> we use these types of data types where it is possible to counter same item but we require in a ordered way ex. - game scores of multiplayer game
 or in a to-do list.
 */

var toDoList = [String]()

toDoList.append("1. learn swift at 11")
toDoList.append("2. Read book at 12")
toDoList += ["3. learn guitar at 13"]
toDoList

// tuples
/*
 --> these are the collection type which can store any type of value not even of same type.
 --> these are useful of temporary vales and not for complex data
 --> here we access value by .1 or .0
 --> when we have to store precisely 1 string or 2 integer or with boolean values we use tuples.
 */
var Marks : (Int)
var nameOfStudent : (String)
var marksOfStudent = ( Marks : 51, nameOfStudent : "pewDiePie")
let name = marksOfStudent.nameOfStudent
// ranges
/*
 --> it a interval of consecutive values like 0 to 9 by 0,1,2.....,9
 --> we can have different type of range like (lowerbound...upperbound) or (lowerbound..<upperbound) or (lowerbound...) or (...upperbound) and diff others
 --> majorly used in for loops where we can't use tuples or arrays as they have different vales but they can't give a range of consecutive interval like
 the Range
 */

for item in  toDoList[...2]{
   print(item)
}


