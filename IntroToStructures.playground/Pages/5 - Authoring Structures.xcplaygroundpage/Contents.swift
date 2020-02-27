import Foundation

/*:
# Authoring Structures
 
 Refer to this [list of formulas for various geometric figures](https://www.eqao.com/en/assessments/grade-9-math/assessment-docs/g9-formula-sheet-academic.pdf) (from the Grade 9 EQAO Mathematics assessment).
 
 Select two 2D shapes, and author a structure that:
 
 * describes the shape
 * reports on the area
 * reports on the perimeter

 Select two 3D shapes, and author a structure that:

 * describes the shape
 * reports on the surface area
 * reports on the volue

 Finally:

 * at least three of your formulas must involve a power
 * at least two of your formulas must involve a fraction
 * at least three of your formulas must use 𝝿
 
 Be sure to:

 * make good choices for structure names and property names
 * test your structures by creating instances, and trying the properties out to be sure they provide correct results
 
 Remember to *commit* and *push* your work regularly – at a minimum after defining each structure.
 
 */
// Begin your work here...
struct Parallelogram {
    
    //Proporties
    var base:Double
    var height:Double
    var broadside:Double
    
    //Method
    var describeShape:String{
        return "The parallelogram has a base of \(base), a height of \(height) and a broadside of \(broadside)"
    }
    
    var reportArea:String{
        return "The parallelogram has a area of \(base*height)"
    }
    
    var reportPerimeter:String{
        return "The parallelogram has a perimeter of \(2*base+2*broadside)"
    }
    
}

var someParallelogram = parallelogram(base: 7, height: 4, broadside: 5)
print(someParallelogram.describeShape)
print(someParallelogram.reportArea)
print(someParallelogram.reportPerimeter)

struct Circle {
    
    //Properties
    var radius:Double
    
    //Method
    var describeShape:String{
        return "The circle has a radius of \(radius)"
    }
    
    var reportArea:String{
        return "The circle has a area of " + String(format:"%.2f",(pow(radius,2)*Double.pi))
    }
    
    var reportPerimeter:String{
        return "The parallelogram has a perimeter of " + String(format:"%.2f",(2*Double.pi*radius))
    }
    
}

var someCircle = circle(radius: 5)
print(someCircle.describeShape)
print(someCircle.reportArea)
print(someCircle.reportPerimeter)

struct Sphere {
    
    //Properties
    var radius:Double
    
    //Method
    var describeShape:String{
        return "The sphere has a radius of \(radius)"
    }
    
    var reportVolume:String{
        return "The sphere has a volume of " + String(format:"%.2f",(4*Double.pi*pow(radius, 3))/3)
    }
    
    var reportSurfaceArea:String{
        return "The sphere has a surface area of " + String(format:"%.2f",(4*Double.pi*pow(radius,2)))
    }
    
}

var someSphere = sphere(radius: 5)
print(someSphere.describeShape)
print(someSphere.reportSurfaceArea)
print(someSphere.reportVolume)

struct TriangularPrism {
    
    //Properties
    var baseA:Double
    var baseB:Double
    var baseC:Double
    var height:Double
    var heightOnBase:Double
    
    //Method
    var describeShape:String{
        return "The triangular prism has a base of \(baseA), \(baseB) and \(baseC), a height on the base of \(heightOnBase) and a height of \(height)"
    }
    
    var reportVolume:String{
        return "The triangular prism has a volume of \(baseB*height*heightOnBase/2) "
    }
    
    var reportSurfaceArea:String{
        return "The triangular prism has a surface area of \((baseA+baseB+baseC)*height+heightOnBase*baseB) "
        
    }
    
}

var someTriangularPrism = triangularPrism(baseA: 2, baseB: 3, baseC: 3, height: 5, heightOnBase: 2)
print(someTriangularPrism.describeShape)
print(someTriangularPrism.reportSurfaceArea)
print(someTriangularPrism.reportVolume)
/*:
 [Previous: Area Example - Rectangle](@previous) | Page 4
 */
