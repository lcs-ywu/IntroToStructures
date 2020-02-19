/*:
# Simplest Example
 
 In a prior class we defined [a function that finds the distance between two points](https://ln2.sync.com/dl/91fb53920/jnvp6vqv-mkjg8p5p-q4jifd4a-8ieji2in/view/image/10167346380008):
 
 */

import Foundation

// Define a function to find the distance between two points
func distance(fromX x1: Double, fromY y1: Double, toX x2: Double, toY y2: Double) -> Double {
    
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2))
    
}

// Invoke (call, or use) the function
// NOTE: We are finding the distance between the points (3, 0) and (0, 4) on a Cartesian plane
distance(fromX: 3, fromY: 0, toX: 0, toY: 4)

/*:
 A structure could be used to tie together the x and y values of a point on a Cartesian plane.
 
 This would make the definition of the function to find the distance a bit clearer to write.
 
 In turn, the function becomes clearer to use.
 
 Have a look:
 
 */

// Define a structure that represents a point on a Cartesian plane
// An initializer is automatically created for a structure like this
struct Point {
    var x: Double
    var y: Double
}

// Define a couple of points (notice the parameters to initialize a point are provided automatically
let firstPoint = Point(x: 3, y: 0)
let secondPoint = Point(x: 0, y: 4)

// Now define an alternate version of the distance function
func distance(from: Point, to: Point) -> Double {
    
    return sqrt(pow(to.x - from.x, 2) + pow(to.y - from.y, 2))
    
}

// Now invoke the new function
distance(from: firstPoint, to: secondPoint)

/*:
 ## Reflect
 
 Both code implementations perform the same job. Which do you prefer? Why?

 [Previous: Curriculum Expectations](@previous) | Page 3 | [Next: Shapes as Structures](@next)

*/




