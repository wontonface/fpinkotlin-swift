//
//  length.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/27/25.
//

import Foundation

func length<A> (xs: List<A>) -> Int {
    return foldRight(xs, 0, { _, count in count + 1 })
}
