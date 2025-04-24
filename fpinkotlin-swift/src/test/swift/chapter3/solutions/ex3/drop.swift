//
//  drop.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/24/25.
//

import Foundation

func drop<A> (l: List<A>, n: Int) -> List<A> {
    
    if n <= 0 { return l }
    
    switch l {
    case .none: return .none
    case let .cons(_, tail):
        return drop(l: tail, n: n - 1)
    }
}
