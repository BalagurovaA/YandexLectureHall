//
//  assotiated_type_with_enum.swift
//  stitingWork
//
//  Created by Kristofer Sartorial on 3/6/25.
//

import Foundation
//Использование associatedtype с ассоциированными значениями
enum Shape {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    case triangle(side1: Double, side2: Double, side3: Double)
}

protocol Drawable {
    associatedtype DrawingType
    func draw() -> DrawingType
}

extension Shape {
    typealias DrawingType = String
    
    func draw() -> DrawingType {
        switch self {
        case .circle(let radius):
            return "рисуем круг с радиусом \(radius)"
        case .rectangle(let width, let height):
            return "рисуем прямоугольник  \(width) и высотой \(height)"
        case .triangle(let side1, let side2, let side3):
            return "рисуем треугольник  \(side1), \(side2), \(side3)"
        }
    }
    
}

let circle = Shape.circle(radius: 5.0)
let rectangle = Shape.rectangle(width: 10.0, height: 8.0)
let triangle = Shape.triangle(side1: 3.0, side2: 4.0, side3: 5.0)

//print(circle.draw())


