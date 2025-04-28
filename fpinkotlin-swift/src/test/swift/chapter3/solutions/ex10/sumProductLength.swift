//
//  sumProductLength.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/27/25.
//

import Foundation

func sumLeft(ints: List<Int>) -> Int {
    foldLeft(ints, 0, { b, a in b + a })
}

func productLeft(dbs: List<Double>) -> Double {
    foldLeft(dbs, 1.0, { b, a in b * a })
}

func lengthLeft<A> (xs: List<A>) -> Int {
    foldLeft(xs, 0, { count, _ in count + 1 })
}
