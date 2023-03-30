import UIKit

var greeting = "Hello, playground"

func solve<T: Comparable>(array1: [T], array2: [T]) -> [T] {
 
    var missingValues: [T] = []
 
    for value in array2 {
        
        if missingValues.contains(value) == false {
            if array1.contains(value) == false {
                missingValues.append(value)
            } else {
                let array1ValueDuplicates = array1.filter { array1Value in
                    return array1Value == value
                }
                let array2ValueDuplicates = array2.filter { array2Value in
                    return array2Value == value
                }
                if array1ValueDuplicates.count != array2ValueDuplicates.count {
                    missingValues.append(value)
                }
            }
        }
    }
    return missingValues.sorted { value1, value2 in
        return value1 < value2
    }
}

let array1 = [8, 8, 7, 2, 1, 7, 9]
let array2 = [14, 8, 2, 7, 7]

/*let array1 = ["goat", "fish", "deer", "goat", "bear"]
let array2 = ["ant", "bear", "goat"]*/

/*let array1 = [9, 4, 7, 9, 3]
let array2 = [9, 11, 9, 13, 9]*/

/*let array1 = ["yes", "yes", "no", "never"]
let array2 = ["yes", "no", "yes", "sometimes"]*/

print(solve(array1: array1, array2: array2))
