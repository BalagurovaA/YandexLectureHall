//Рекурсивные перечисления
//indirect enum - это способ создания перечислений, в которых случаи могут содержать значения того же типа, что и само перечисление. Иными словами, это означает, что внутри перечисления могут быть элементы, которые по сути представляют собой другие экземпляры этого же перечисления.

//ArithmeticExpression - это рекурсивное перечисление, которое может иметь три случая: .number, представляющий целое число, .addition, представляющий операцию сложения между двумя выражениями, и .multiplication, представляющий операцию умножения между двумя выражениями.
//
//Ключевое слово indirect используется перед случаями .addition и .multiplication, чтобы указать, что эти случаи могут содержать рекурсивные значения (другие выражения).

import Foundation

//indirect enum ArithmeticExpression {
//    case number(Int)
//    case addition(ArithmeticExpression, ArithmeticExpression)
//    case multiplication(ArithmeticExpression, ArithmeticExpression)
//}
//
//let expression = ArithmeticExpression.addition(
//    .number(5),
//    .multiplication(.number(2), .number(3)
//                   )
//)
//
//func evaluate(_ expression: ArithmeticExpression) -> Int {
//    switch expression {
//    case .number(let value):
//        return value
//    case .addition(let left, let right):
//        return evaluate(left) + evaluate(right)
//    case .multiplication(let left, let right):
//        return evaluate(left) * evaluate(right)
//    }
//}
//
//let result = evaluate(expression)
//print("Результат вычисления: \(result)")

//--------------


//enum PayMentMethod {
//    case cash
//    case card
//    case plus
//    indirect case composite(PayMentMethod, PayMentMethod, Float)
//
//}
//
//let selectedMethod: PayMentMethod = .composite(.card, .plus, 0.8)




//
//Проектирование с enum
////https://habr.com/ru/articles/759842/
//
//1. Switching exhaustively - не использовать default а прорабатывать все случаи
//2. Не позволяйте создавать невалидные состояния
//ТОлько так:
//
//enum Result<Success, Failure> {
//    case success(Success)
//    case failure(Failure)
//}
//
//Не так:
//struct Result<Success, Failure> {
//case success: Success?
//case failure: Failure?
//}
//
//3. Моделирование состояния с enum
//https://developer.apple.com/documentation/swift/maintaining-state-in-your-apps
////enum хорошо подходит для проектирования состояний экранов
//enum MessagesState {
//    case loading
//    case loaded([Message])
//    case failed(Error)
//}
//
//4. Рекурсивные структуры данных
//- неограниченная вложенность
//- многократное использование внутри
//- невозможно определитть сколько памяти необходимо чем глубже вложенность тем больше памяти необходимо
//
//
