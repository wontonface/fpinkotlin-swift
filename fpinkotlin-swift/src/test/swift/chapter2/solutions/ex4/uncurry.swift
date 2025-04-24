//
//  uncurry.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/24/25.
//

import Foundation

func uncurry<A, B, C>(_ f: @escaping (A) -> (B) -> C) -> (A, B) -> C {
    return { a, b in
        return f(a)(b)
    }
}
