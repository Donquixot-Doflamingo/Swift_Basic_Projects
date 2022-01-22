// using if else statements
let  upperBond : Int = 100
var num : Int
//for num  in lowerBond...upperBond{
//    //by if/else statement
//    if (num % 3 == 0 && num % 5 == 0) {
//        print("fizzbuzz")
//    }
//    else if (num % 5 == 0) {
//        print("buzz")
//    }
//    else if(num % 3 == 0)  {
//        print("fizz")
//    }
//    else if (num % 2 != 0 && num % 7 != 0) {
//        print("Prime")
//    }
//    else{
//        print(num)
//    }
//}
repeat {
    num = 1
    num += num
    if (num % 3 == 0 && num % 5 == 0) {
            print("fizzbuzz")
        }
        else if (num % 5 == 0) {
            print("buzz")
        }
        else if(num % 3 == 0)  {
            print("fizz")
        }
        else if (num % 2 != 0 && num % 7 != 0) {
            print("Prime")
        }
        else{
            print(num)
        }
}while(num < 100)



