/*:
 [Previous](@previous)
 ##  Nomes passíveis de busca
*/

class Pepd_01 {
    let id: UInt = 0
    var d = 0
    
    func foo() -> Int {
        if d == 17 {
            return 0
        }
        return 1
    }
}

class Employee {
    let id: UInt
    let level: Level

    init(id: UInt, level: Level) {
        self.id = id
        self.level = level
    }

    func canAccessLedger() -> Bool {
        switch level {
        case .full:
            return true
        case .basic:
            return false
        }
    }
}

enum Level {
    case basic
    case full
}

//: [Next](@next)
