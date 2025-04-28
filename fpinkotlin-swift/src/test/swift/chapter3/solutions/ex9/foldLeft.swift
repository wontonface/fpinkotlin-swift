//
//  foldLeft.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/27/25.
//

import Foundation

func foldLeft<A, B> (_ xs: List<A>, _ z: B, _ f: @escaping (B, A) -> B) -> B {
    switch xs {
    case .none: return z
    case let .cons(head, tail): return foldLeft(tail, f(z, head), f)
    }
}
    
