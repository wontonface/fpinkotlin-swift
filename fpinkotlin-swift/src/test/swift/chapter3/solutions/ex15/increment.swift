//
//  increment.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/30/25.
//

import Foundation

func increment (xs: List<Int>) -> List<Int> {
    foldRight(xs, List<Int>.none) { head, acc in
            .cons(head: head + 1, tail: acc)
    }
}
