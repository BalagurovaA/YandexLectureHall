//
//import Foundation
//
////- добавление вчисляемых свойств объекта и типа
//extension Double {
//    var m: Double {self}
//    var cm: Double {self / 100.0 }
//}
//
//let distance = 1.m
//print("Three feet is \(distance.cm)")
//
////- определение методов объекта и типа
//extension Int {
//    func repetitions(task: () -> Void) {
//        for _ in 0..<self {
//            task()
//        }
//    }
//}
//
//3.repetitions {
//    print("Hello!!??!!")
//}
//
////- определение новых инициализаторов
//extension CGRect {
//    init(center: CGPoint, size: CGSize) {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
//        self.init(origin: CGPoint(x: originX, y: originY), size: size)
//    }
//}
//
////определение subscript методов
////subscrip методы позволяют обращаться к тем ии иным значениях по квадратным скобкам
//extension Int {
//    subscript(digitIndex: Int) -> Int {
//        var decimalBase = 1
//        for _ in 0..<digitIndex {
//            decimalBase *= 10
//        }
//        return (self / decimalBase) % 10
//    }
//}
//print(8584848[1])
//
////определение и использование новых вложенных типов
//extension Int {
//    enum Kind {
//        case negative,
//             zero,
//             positive
//    }
//    var kind: Kind {
//        return switch self {
//        case 0:
//                .zero
//        case let x where x > 0:
//                .positive
//        default:
//                .negative
//        }
//    }
//}
////добавление протокол для существующего типа
//extension Int.Kind: Equatable{}
////