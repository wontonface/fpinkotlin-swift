//
//  filterUsingFlatMap.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 5/1/25.
//

import Foundation

func filterUsingFlatMap<A> (xs: List<A>, f: @escaping (A) -> Bool) -> List<A> {
    flatMap(xs: xs) { a in
        if f(a) {
            return .cons(head: a, tail: .none)
        } else {
            return .none
        }
    }
}
