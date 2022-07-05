/*:
 [Previous](@previous)
 ##  Nomes de Método
 - Devem ser ações, verbos
*/

protocol Database {
    func save()
}

struct ClientsInteractor {
    
    let database: Database
    
    func discretionarySales() {
        database.save()
    }
}

struct ClientsInteractor_Refactored {
    
    let database: Database
    
    func saveDiscretionarySales() {
        database.save()
    }
}

//: [Next](@next)
