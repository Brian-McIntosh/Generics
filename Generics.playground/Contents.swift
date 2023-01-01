import Cocoa

// BENEFITS:
// Save a lot of time
// Increase code reusability

// e.g.
func highestNumber(a: Int, b: Int) {
    if a > b {
        print("a is the higher number.")
    }else{
        print("b is the higher number.")
    }
}

// THE PROBLEM:
//highestNumber(a: 12.1, b: 20)
//                   ^^

// ERROR: cannot convert value of type 'Double' to expected argument type 'Int'
// (btw, Double is more precise than Float; Double.pi vs Float.pi)

// REFACTOR:
func highestNumber2<T: Comparable>(a: T, b: T) {
    if a > b {
        print("a is the higher number.")
    }else{
        print("b is the higher number.")
    }
}
//highestNumber2(a: 12.1, b: 20)


// Another example:
func whatTypeIsIt<T>(input: T) -> String {
    print("The type you entered is \(type(of: input))")
    return "Ok"
}
whatTypeIsIt(input: "Text") //The type you entered is String
whatTypeIsIt(input: ["hi", 32, false]) //The type you entered is Array<Any>
whatTypeIsIt(input: 32.0) //The type you entered is Double

// So, we don't have to duplicate the same functionality for each data types


