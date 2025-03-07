import Foundation


//Ассоциированные значения с функциями
enum Action {
    case printMassage(() -> Void)
    case calculateSum((Int, Int) -> Int)
}

let printAction = Action.printMassage({
    print("Hello")
    
})

let sumAction = Action.calculateSum({ a, b in
    return a + b
})

//switch printAction {
//case .printMassage(let action):
//    action()
//case .calculateSum(let action):
//    break
//}
//
//switch sumAction {
//case .printMassage(let action):
//    break
//case .calculateSum(let action):
//    let result = action(5, 3)
//    print("result is: \(result)")
//}
