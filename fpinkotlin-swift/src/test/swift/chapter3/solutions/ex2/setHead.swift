//
//  setHead.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/24/25.
//

import Foundation

func setHead<A>(xs: List<A>, x: A) -> List<A> {
    switch xs {
    case .none: return .none
    case let .cons(_, tail):
        return .cons(head: x, tail: tail)
    }
}
