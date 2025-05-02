//
//  flatMap.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/30/25.
//

import Foundation

func flatMap<A, B> (xs: List<A>, f: @escaping (A) -> List<B>) -> List<B> {
    foldRight(xs, List<B>.none) { head, acc in
        var innerList = f(head)
        return foldRight(innerList, acc) { head, acc in
                .cons(head: head, tail: acc)
        }
    }
}
