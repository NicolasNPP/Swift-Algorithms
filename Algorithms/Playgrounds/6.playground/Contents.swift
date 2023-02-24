import UIKit

func fibonacciForNum(num: Int, first: Int, second: Int) -> [Int] {
    if num == 0 {
        return []
    }
    return [first  + second] + fibonacciForNum(num: num - 1, first: second, second: first + second)
}

fibonacciForNum(num: 9, first: 0, second: 1)
