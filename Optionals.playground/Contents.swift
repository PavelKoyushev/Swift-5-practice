import UIKit

var number: Int? = 5
number = nil

print(number)

if let num = number {
    print("число = \(num)")
}

var x = number ?? 0
