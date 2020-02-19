import Foundation

// An extension to the String structure so that a string can be padded, at left, with a given character
// SOURCE: https://stackoverflow.com/a/52447981/5537362
extension RangeReplaceableCollection where Self: StringProtocol {
    func paddingToLeft(upTo length: Int, using element: Element = " ") -> SubSequence {
        return repeatElement(element, count: Swift.max(0, length-count)) + suffix(Swift.max(count, count-length))
    }
}

extension String {
    
    // Take the string and represent it as the ASCII codes, separated with a space
    public func asASCIICodes() -> String {
    
        // Output string
        var asciiCodeList = ""
    
        // Iterate over each letter in the message, get the ASCII code value, and append to a string
        for letter in self {
            
            // Get ASCII code value and add to the array
            if let asciiCode = letter.asciiValue {
    
                // Convert the numeric value back into a String and append to output
                asciiCodeList += String(asciiCode).paddingToLeft(upTo: 3, using: "0") + " "
    
            }
            
        }
    
        // Return the string
        return asciiCodeList
    }
  
    // Take the string and represent it as the binary values, padded to 8 bits, separated with a space
    public func asBinaryValues() -> String {
        
        // Get the ASCII codes
        let asciiCodes = self.asASCIICodes()
        
        // Break into an array
        let lettersAsASCIICode = asciiCodes.split(separator: " ")
        
        // Create the string to store binary values in a list
        var binaryValuesList = ""
        
        // Iterate over the ASCII codes
        for letter in lettersAsASCIICode {
            
            // Get the binary representation (as a string) padded out to 8 digits
            let letterAsBinaryString = String(Int(letter)!, radix: 2, uppercase: false).paddingToLeft(upTo: 8, using: "0")
            
            // Append to the string
            binaryValuesList += letterAsBinaryString + " "
            
        }
        
        // Return the sequence of binary values
        return binaryValuesList
    }
    
}
