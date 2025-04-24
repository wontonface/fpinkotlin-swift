//
//  compose.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/24/25.
//

import Foundation

func compose<A, B, C> (_ f: @escaping (B) -> C, _ g: @escaping (A) -> B) -> (A) -> C {
    return { a in
        f(g(a))
    }
}
