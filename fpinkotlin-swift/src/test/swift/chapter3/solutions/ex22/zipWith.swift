//
//  zipWith.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 5/1/25.
//

import Foundation

func zipWith<A, B, C> (_ first: List<A>, _ second: List<B>, _ f: (A, B) -> C) -> List<C> {
    switch (first, second) {
        case (.none, .none):
            return .none
        
        case (let .cons(x, xs), let .cons(y, ys)):
            return .cons(head: f(x, y), tail: zipWith(xs, ys, f))
        
        case (.none, _), (_, .none):
            return .none
    }
}
