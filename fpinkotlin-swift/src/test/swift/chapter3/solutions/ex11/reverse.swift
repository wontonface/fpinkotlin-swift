//
//  reverse.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/28/25.
//

import Foundation

func reverse<A> (xs: List<A>) -> List<A> {
    return foldLeft(xs, List<A>.none, { acc, head in
            .cons(head: head, tail: acc)
    })
}
