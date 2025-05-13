//
//  variance.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 5/12/25.
//

import Foundation

// Required extension for mean method
extension List {
    var isEmpty: Bool {
        switch self {
        case .none: return true
        case .cons: return false
        }
    }
    
    var size: Int {
        func count(_ xs: List<Element>, _ acc: Int) -> Int {
            switch xs {
            case .none: return acc
            case let .cons(_, tail): return count(tail, acc + 1)
            }
        }
        
        return count(self, 0)
    }
}

extension List where Element == Double {
    func sum() -> Double {
        func add(_ xs: List<Double>, _ acc: Double) -> Double {
            switch xs {
            case .none: return acc
            case let .cons(head, tail): return add(tail, acc + head)
            }
        }
        
        return add(self, 0.0)
    }
}

func mean(xs: List<Double>) -> Option<Double> {
    if xs.isEmpty {
        return .none
    } else {
        return .some(xs.sum() / Double(xs.size))
    }
}

// Required extension for map method on List
extension List {
    func map<B>(_ f: (Element) -> B) -> List<B> {
        switch self {
        case .none: return .none
        case let .cons(head, tail): return .cons(head: f(head), tail: tail.map(f))
        }
    }
}

// Variance solution
func variance(xs: List<Double>) -> Option<Double> {
    return mean(xs: xs).flatMap { m in
        mean(xs: xs.map { x in
            pow(x - m, 2)
        })
    }
}
