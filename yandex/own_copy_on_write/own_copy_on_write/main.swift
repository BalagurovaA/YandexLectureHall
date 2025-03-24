//
//  main.swift
//  own_copy_on_write
//
//  Created by Kristofer Sartorial on 3/5/25.
//

import Foundation


//Класс используется как обертка для хранения значения, чтобы можно было реализовать Copy-on-Write (CoW).

final class Ref<T> {
    var val: T
    
    init (_ v: T) {
        val = v
    }
}

struct Box<T> {
    var ref: Ref<T>
    
    init(x: T) {
        ref = Ref(x)
    }
    
//    Свойство value — это вычисляемое свойство (computed property), которое предоставляет доступ к значению, хранящемуся в ref.val.
    
    
    
    var value: T {
        get {
            ref.val
        }
        set {
            if (!isKnownUniquelyReferenced(&ref)) {
                ref = Ref(newValue)
            } else {
                ref.val = newValue
            }
        }
    }
}
