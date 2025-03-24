
import Foundation
protocol OrderExecutor {
    var status: String { get }
    var isPaused: Bool {get set}
    func execute()
}

extension OrderExecutor {
    var status: String {
        "Status is undefined"
    }
    
    func execute() {
        print("Executor is working")
    }
}

struct TaxiOrderExecutor: OrderExecutor {
    var isPaused = false
}

let executor = TaxiOrderExecutor()
executor.execute()
