//
//  map.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/30/25.
//

import Foundation

func map<A, B> (xs: List<A>, f: @escaping (A) -> B) -> List<B> {
    foldRight(xs, List<B>.none) { head, acc in
            .cons(head: f(head), tail: acc)
    }
}
