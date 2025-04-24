//
//  isSorted.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/24/25.
//

import Foundation

func isSorted<T>(list: [T], order: (T, T) -> Bool) -> Bool {
    if list.count < 2 { return true }
    for i in 0..<list.count - 1 {
        if !order(list[i], list[i + 1]) { return false }
    }
    return true 
}
