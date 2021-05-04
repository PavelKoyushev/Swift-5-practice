import UIKit

var str = "Hello, playground!"

var numbers = [20, 19, 7, 12]

numbers.map({ (number: Int) -> Int in
    let element: Int
        if number % 2 != 0 {
            element = 0
        } else {
            element = number
        }
    return element
})
