import UIKit

func getFactorial(value: Int) -> Int {
    if value == 0 {
        return 1
    }
    return value * getFactorial(value: value - 1)
}

print(getFactorial(value: 5))
print(getFactorial(value: 3))
