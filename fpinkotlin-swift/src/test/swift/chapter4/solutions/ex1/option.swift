//
//  option.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 5/12/25.
//

import Foundation

enum Option<A> {
    case some(A)
    case none
}

extension Option {
    func map<B> (_ f: (A) -> B) -> Option<B> {
        switch self {
        case .some(let value): return .some(f(value))
        case .none: return .none
        }
    }
    
    func flatMap<B> (_ f: (A) -> Option<B>) -> Option<B> {
        switch self {
        case .some(let value): return f(value)
        case .none: return .none
        }
    }
    
    func getOrElse (_ defaultValue: () -> A) -> A {
        switch self {
        case .some(let value): return value
        case .none: return defaultValue()
        }
    }
    
    func orElse (ob: () -> Option<A>) -> Option<A> {
        switch self {
        case .some(let value): return .some(value)
        case .none: return ob()
        }
    }
    
    func filter (_ f: (A) -> Bool) -> Option<A> {
        switch self {
        case .some(let value):
            if f(value) {
                return .some(value)
            } else { return .none }
        case .none: return .none
        }
    }
    
}
