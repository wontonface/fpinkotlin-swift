//
//  flatten.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/30/25.
//

import Foundation

func flatten<A> (xs: List<List<A>>) -> List<A> {
    foldRight(xs, List<A>.none) { innerList, acc in
        foldRight(innerList, acc) { head, acc in
                .cons(head: head, tail: acc)
        }
    }
}
