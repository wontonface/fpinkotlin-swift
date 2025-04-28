//
//  ContentView.swift
//  fpinkotlin-swift
//
//  Created by Nicole on 4/24/25.
//

import SwiftUI

enum List<Element> {
    case none
    indirect case cons(head: Element, tail: List<Element>)
    
    // Static factory method equivalent to Kotlin's companion object
    static func of(_ elements: Element...) -> List<Element> {
        if elements.isEmpty {
            return .none
        } else {
            let head = elements[0]
            let tail = Array(elements[1...])
            return .cons(head: head, tail: of(tail))
        }
    }
    
    // Overload to handle arrays directly
    static func of(_ elements: [Element]) -> List<Element> {
        if elements.isEmpty {
            return .none
        } else {
            let head = elements[0]
            let tail = Array(elements[1...])
            return .cons(head: head, tail: of(tail))
        }
    }
}

func foldRight<A, B> (_ xs: List<A>, _ z: B, _ f: @escaping (A, B) -> B) -> B {
    switch xs {
    case .none: return z
    case let .cons(head, tail): return f(head, foldRight(tail, z, f))
    }
}


    
    
    
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
