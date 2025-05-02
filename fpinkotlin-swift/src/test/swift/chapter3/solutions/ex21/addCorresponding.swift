//
//  addCorresponding.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 5/1/25.
//

import Foundation

func addCorresponding<A: Numeric>(_ first: List<A>, _ second: List<A>) -> List<A> {
    switch (first, second) {
        case (.none, .none):
            return .none
        case (let .cons(x, xs), let .cons(y, ys)):
            return .cons(head: x + y, tail: addCorresponding(xs, ys))
        case (.none, _), (_, .none):
            return .none
    }
}
