/*:
 # Introduction
 
 ## Rationale
 
 Before examining *what* structures are, let's consider *why* we might need them.
 
 So far you have learned how to leverage existing data types in Swift to accomplish tasks, such as:
 
 * `Int`
 * `String`
 * `Double`
 
 You have used those types to create individual variables or constants that store a single value.
 
 For example, to create a variable of type `Int` that stores a person's current age:
 
 */
let currentAge = 15
/*:
 You have also recently learned how to tie multiple related values together in the form of an *array*.
 
 For example, to store the current grade of all your courses:
 */
let grades = [87.5, 95.2, 78.4, 85.7, 92.3, 87.4, 92.1, 72.1]
/*:
 One could then calculate your current overall average by writing this code – run the playground to try it out:
 */
var runningTotal = 0.0
for grade in grades {
    runningTotal += grade
}
let currentOverallAverage = runningTotal / Double(grades.count)
/*:
 So what advantages do structures bring?
 
 *"Structures are types that can store named properties and define their own behaviours."*

 A structure is a way to create your own, custom, *named type* that groups together related information (properties) and things you might want to do with that information (behaviours).
 
 For example, one might create a `Student` structure that has a named property called `grades`. You could further define *computed properties* that report the raw overall average and a nicely formatted version of that average. Finally, you could then add a *behaviour* (a function) that indicates whether the student will earn Scholar status, based on a provided threshold.
 
 In this way – by adding a layer of *abstraction* – anyone can use your `Student` data type at any time, and not have to do the manual work involved in providing information about those grades.
 
 Have a look – then we'll dig in further with more examples on the next few pages.
 
 */
 
 // Define a new structure
struct Student {
   
    // MARK: Properties
    
    // Named property to store grades in an array
    var grades: [Double]
    
    // Computed property that returns overall average
    var currentOverallAverage: Double {
        var runningTotal = 0.0
        for grade in grades {
            runningTotal += grade
        }
        return runningTotal / Double(grades.count)
    }
    
    // Computed property that returns a nicely formatted report about current overall average
    var report: String {
        return "The student has an overall average of " + String(format: "%.1f", currentOverallAverage) + "%"
    }
    
    // MARK: Initializer
    
    // Initializer – creates an instance of the structure
    init(grades: [Double]) {
        self.grades = grades
    }
    
    // MARK: Functions (behaviours)
    
    // Reports on whether the student is a scholar based on a provided threshold
    func isScholarBasedOn(threshold: Double) -> Bool {
        return currentOverallAverage >= threshold
    }
    
}

// Create one instance of the structure
let studentA = Student(grades: [95, 80, 65])

// What is the average?
studentA.currentOverallAverage

// Report on the average
print(studentA.report)

// Is the student a scholar based on an 80% threshold?
studentA.isScholarBasedOn(threshold: 80)

// Is the student a scholar based on a 90% threshold?
studentA.isScholarBasedOn(threshold: 90)

// Create another instance of the structure
let studentB = Student(grades: [70.5, 75, 80.5])

// What is the average?
studentB.currentOverallAverage

// Report on the average
print(studentB.report)

// Is the student a scholar based on an 80% threshold?
studentB.isScholarBasedOn(threshold: 80)

// Is the student a scholar based on a 90% threshold?
studentB.isScholarBasedOn(threshold: 90)
 
/*:
 
 ## Acknowledgements
 
 This playground is, in part, adapted from these materials:
 
 * [Swift Apprentice](https://store.raywenderlich.com/products/swift-apprentice), &copy; 2019 Razeware LLC.
 * [The Swift Programming Language Guide](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html), &copy; 2020 Apple Inc.
 
 
 Page 1 | [Next: Curriculum Expectations](@next)
 
 */


