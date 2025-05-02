//
//  toString.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/30/25.
//

import Foundation

func toString (xs: List<Double>) -> List<String> {
    foldRight(xs, List<String>.none) { head, acc in
            .cons(head: "\(head)", tail: acc)
    }
}
