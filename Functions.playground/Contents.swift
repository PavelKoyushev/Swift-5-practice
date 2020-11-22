import UIKit

let digit = [1, 5, 10, 15, 21, 3, 100]

func summator(array: [Int]) -> Int {
    var sum = Int()
        for number in array {
            sum += number
        }
    return sum
}
summator(array: digit)

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)

let summ: ([Int]) -> Int = summator
let testSUM = summator
summ(digit)

