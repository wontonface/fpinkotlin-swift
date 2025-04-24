//
//  dropWhile.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/24/25.
//

import Foundation

func dropWhile<A> (l: List<A>, f: (A) -> Bool) -> List<A> {
    switch l {
    case .none: return .none
    case let .cons(head, tail):
        if f(head) {
            return dropWhile(l: tail, f: f)
        }
        else { return .cons(head: head, tail: tail) }
    }
}
