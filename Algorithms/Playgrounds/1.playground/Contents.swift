import UIKit

var numbers = [Int]()

for i in 1...2000 {
    numbers.append(i)
}

for num in numbers {
    if num % 15 == 0 {
        print("\(num) fizzbuzz")
    } else if num % 5 == 0 {
        print("\(num) buzz")
    } else if num % 3 == 0 {
        print("\(num) fizz")
    }
}
