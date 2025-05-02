//
//  foldLeftFoldRight.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/28/25.
//

import Foundation

func foldLeftUsingFoldRight<A, B> (_ xs: List<A>, _ z: B, _ f: @escaping (B, A) -> B) -> B {
    return foldRight(xs, { b in b }) { a, g in
        { b in g(f(b, a)) }
    }(z)
}


