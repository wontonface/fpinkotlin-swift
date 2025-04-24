//
//  listing.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/24/25.
//

import Foundation

func tail<A> (xs: List<A>) -> List<A> {
    switch xs {
    case .none: return .none
    case let .cons(_, tail): return tail
    }
}
