/*:
# Area Example - Rectangle
 
 Say that we wanted to calculate the area of a rectangle. Mathematically:
 
 ![areaRectangle](rectangle_area.png)

 In an earlier lesson, you learned to define a function that computes the area of a rectangle:
 
 */

/// Finds the area of a rectangle
/// - Parameter length: length of rectangle
/// - Parameter width: width of rectangle
/// - Returns: area of the rectangle
func areaOfRectangle(length: Double, width: Double) -> Double {
    
    return length * width
    
}

/*:
 
 The function is invoked, or used, as follows:
 
 */

// Invoke the function... to find the area of a rectangle that is 10 units long and 5 units wide
let result = areaOfRectangle(length: 10, width: 5)

// Report the results
print("The area of that rectangle was \(result) square units.")

 
/*:
 
 An alternative is to define a *structure* that describes a rectangle... then use computed properties to provide information about the rectangle.
 
 */

// Define a rectangle
struct Rectangle {
    
    // MARK: Properties
    var length: Double
    var width: Double
    
    // Computed property to return the raw area
    var area: Double {
        return length * width
    }
    
    // Computed property to return a description of the area
    var areaDescription: String {
        return "The area of the rectangle is " + String(format: "%.1f", area) + " square units."
    }
    
}

// Create a rectangle instance
var someRectangle = Rectangle(length: 10, width: 4)

// What is the area?
someRectangle.area

// Report on the area?
print(someRectangle.areaDescription)

/*:
 
 [Previous: Simplest Example](@previous) | Page 4 | [Next: Authoring Structures](@next)

*/


