//
//  fibonacci.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/24/25.
//

import Foundation

func fib(n: Int) -> Int {
    if n <= 1 { return n }
    var array = [0, 1]
    for _ in 2..<n {
        let sum = array[array.count - 2] + array[array.count - 1]
        array.append(sum)
    }
    return array[n - 1]
}
