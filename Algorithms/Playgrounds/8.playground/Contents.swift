import UIKit

//Filter
let numbers = [1, 2, 3, 4, 3, 3]

let filtered = numbers.filter({return $0 % 2 == 0})
let filtered2 = numbers.filter({return $0 % 3 == 0})
print(filtered)
print(filtered2)

//Transform
var newArray = [Int]()

for number in [1, 2, 3, 4, 5, 6, 7] {
    newArray.append(number * 3)
}

print(newArray)

//Map
let newMapArray = [1, 2, 3, 4, 5, 6, 7].map({return $0 * 5})
print(newMapArray)

//Reduce
var sum = [1, 2, 3, 4, 9, 8, 2].reduce(0, {sum, number in sum + number})
print(sum)
