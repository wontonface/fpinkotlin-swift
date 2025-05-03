//
//  maximum.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 5/2/25.
//

import Foundation

func maximum (tree: Tree<Int>) -> Int {
    switch tree {
    case .leaf(let value): return value
    case .branch(let first, let second): return max(maximum(tree: first), maximum(tree: second))
    }
}
