//
//  task_closures.swift
//  stitingWork
//
//  Created by Kristofer Sartorial on 3/6/25.
//

import Foundation

func filterNumbers(_ arr: [Int], _ condition: (Int) -> Bool) -> [Int] {
    
    var result = [Int]()
    for number in arr {
        if condition(number) {
            result.append(number)
        }
    }
    
    return result
}

let numbers = [1, 2, 3, 4]
//print(filterNumbers(numbers) { $0 % 2 == 0 } )


//import Foundation
//
//func filter(_ arr: [Int], rules: (Int) -> Bool) -> [Int] {
//    
//    var result = [Int]()
//    
//    for i in arr {
//        if rules(i) {
//            result.append(i)
//        }
//    }
//    
//    
//    return result
//    
//}
//
//let newArr = [3, 6, 7, 9, 12, 52]
//
//let rulesArr = filter(newArr) { $0 % 3 == 0}
//
//print(rulesArr)
//

