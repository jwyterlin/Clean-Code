/*:
 [Previous](@previous)
 ##  Nomes pronunciáveis
*/

protocol DRT042VX {
    var name: String { get }
    var level: Level { get }
    
    func fblthp()
}

private protocol Employee {
    var name: String { get }
    var level: Level { get }
    
    func work()
}

struct Level {
    let id: UInt
    let description: String
}

//: [Next](@next)
