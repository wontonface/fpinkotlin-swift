//
//  hasSubsequence.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 5/2/25.
//

import Foundation

func hasSubsequence<A: Equatable>(xs: List<A>, sub: List<A>) -> Bool {
    if case .none = sub { return true }
    
    func check(xs: List<A>, sub: List<A>) -> Bool {
        switch (xs, sub) {
        case (_, .none): return true
        case (.none, _): return false
        case let (.cons(xh, xt), .cons(sh, st)):
            return (xh == sh && check(xs: xt, sub: st)) || check(xs: xt, sub: sub)
        }
    }
    
    return check(xs: xs, sub: sub)
}
