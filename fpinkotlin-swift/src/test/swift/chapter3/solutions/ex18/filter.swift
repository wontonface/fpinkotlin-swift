//
//  filter.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/30/25.
//

import Foundation

func filter<A> (xs: List<A>, f: @escaping (A) -> Bool) -> List<A> {
    foldRight(xs, List<A>.none) { head, acc in
        if f(head) {
            return .cons(head: head, tail: acc)
        } else {
            return acc
        }
    }
}
