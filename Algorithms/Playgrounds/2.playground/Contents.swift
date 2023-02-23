import UIKit

var numbers = [Int]()

for i in 1...250 {
    numbers.append(i)
}

func binarySearch(searchVal: Int, array: [Int]) -> Bool {
    var firstIndex = 0
    var maxIndex = array.count - 1
    
    while firstIndex <= maxIndex {
        
        let middleIndex = (firstIndex + maxIndex) / 2
        let middleValue = array[middleIndex]
        
        print("MiddleValue: \(middleValue), firstIndex: \(firstIndex), maxIndex: \(maxIndex), [\(array[firstIndex]) \(array[maxIndex])]")
        
        if middleValue == searchVal {
            return true
        }
        
        if searchVal < middleValue {
            maxIndex = middleIndex - 1
        }
        
        if searchVal > middleValue {
            firstIndex = middleIndex + 1
        }
    }
    return false
}

print(binarySearch(searchVal: 302, array: numbers))
print(binarySearch(searchVal: 122, array: numbers))
