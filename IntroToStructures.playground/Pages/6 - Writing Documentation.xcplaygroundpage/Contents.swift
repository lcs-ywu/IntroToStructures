import Foundation

/*:
# Writing Documentation
 
 Writing documentation for functions is not that hard.
 
 You already write comments for your code – so writing it in a certain format is not that much more to think about.
 
 Aside from option-clicking on a function name to get information about how to use that function, well-written documentation allows you to generate *an entire website* that tells you how to use code that you have abstracted away into functions (or later this year, classes and structures).
 
 The [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas) was all generated using the concept you are about to learn.
 
 So how does it work? Let's take a look.
 
 To find the area of a circle, mathematically:
 
 ![areaCircle](circle_area.png)
 
 Here's how to define a function to find the area of a circle using Swift syntax:
 
 */

func areaOfCircle(radius: Double) -> Double {
    return Double.pi * pow(radius, 2.0)
}

// Actually invoke the function and find the area of a circle
let someArea = areaOfCircle(radius: 11)
/*:
 Now to add a documentation template, place your keyboard cursor anywhere on line 24 – the line the function definition starts on.
 
 Press the keyboard shortcut **Option-Command `/`**.
 
 (That means pressing the Option, Command, and forward slash keys at the same time.)
 
 You should see something like the following added above the function:
 
 ![documentationTemplate](documentation_template.png)
 
 All that you need to do is fill in the blanks!
 
 ![completed_documentation](completed_documentation.png)
 
 Note the addition of a **Returns** line. The format must be as shown there.
 
 Once you've added the documentation, try option-clicking the `areaOfCircle` function on the line where it is invoked. You should see a popup something like this:
 
 ![FunctionHelpPopup](function_description_popup.png)
 
 If you don't see a popup, it means autocomplete has stopped working. 😫
 
 Quit and re-open Xcode, and try again. All should be well.
 
 NOTE: The autocomplete bug only affects multi-page playgrounds. A bug report has been filed with Apple and a solution is in the works.
 

 [Previous: Area Example - Rectangle](@previous) | Page 6 | [Next: Authoring Functions](@next)
 */
