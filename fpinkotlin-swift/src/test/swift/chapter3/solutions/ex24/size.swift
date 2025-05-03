//
//  size.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 5/2/25.
//

import Foundation

func size<A> (tree: Tree<A>) -> Int {
    switch tree {
    case .leaf: return 1
    case .branch(let first, let second):
        return (1 + size(tree: first) + size(tree: second))
    }
}
