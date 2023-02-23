import UIKit

func MostCommonName(array: [String]) -> String {
    var countNames = [String: Int]()
    
    for name in array {
        if let count = countNames[name] {
            countNames[name] = count + 1
        } else {
            countNames[name] = 1
        }
    }
    
    var mostCommonName = ""
    
    for key in countNames.keys {
        if mostCommonName == "" {
            mostCommonName = key
        } else {
            let count = countNames[key]
            if count! > countNames[mostCommonName]! {
                mostCommonName = key
            }
        }
        print("\(key): \(countNames[key]!)")
    }
    return mostCommonName
}

MostCommonName(array: ["Nicolas","Rodrigo","Luciano","Diego","Nicolas","Diego","Nicolas"])
