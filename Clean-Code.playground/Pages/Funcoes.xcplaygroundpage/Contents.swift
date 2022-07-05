/*:
 [Previous](@previous)
 ##  Funções
 - Devem ser pequenas
 - Fazer apenas uma coisa
 - Ter poucos parâmetros
*/

/*:
 Código ruim
 */

struct Sale {
    let isActive = true
    func updateCustomerName(name: String) {}
    func updatePrice(price: Double) { }
}

struct SalesDatabase {
    func save(sale: Sale) {}
}

func save() {
    let sale = Sale()
    sale.updateCustomerName(name: "John Doe")
    if sale.isActive {
        sale.updatePrice(price: 10.00)
    }
    let database = SalesDatabase()
    database.save(sale: sale)
}








/*:
 Código refatorado
 */

func save_refactored() {
    let sale = Sale()
    updateCustomerName(sale: sale, name: "John Doe")
    updatePriceIfSaleIsActive(sale: sale, price: 10.00)
    saveInDatabase(sale: sale)
}

func updateCustomerName(sale: Sale, name: String) {
    sale.updateCustomerName(name: name)
}

func updatePriceIfSaleIsActive(sale: Sale, price: Double) {
    if sale.isActive {
        sale.updatePrice(price: price)
    }
}

func saveInDatabase(sale: Sale) {
    let database = SalesDatabase()
    database.save(sale: sale)
}

/*:
 Um outro exemplo de método antes da refatoração
 */

func showCustomersMenuItem(for employee: Employee) {
    if employee.type == .manager || employee.type == .seller {
        showCustomersMenuItem()
    }
}

func showCustomersMenuItem() {
    // Shows Customers menu item
}

/*:
 Depois da refatoração
 */

func showCustomersMenuItem_refactored(for employee: Employee) {
    if employee.isEnabledForCustomersMenuItem() {
        showCustomersMenuItem()
    }
}

struct Employee {

    let type: EmployeeType

    func isEnabledForCustomersMenuItem() -> Bool {
        let allowedTypes: [EmployeeType] = [.manager, .seller]
        return allowedTypes.contains(type)
    }

}

enum EmployeeType {
    case manager
    case seller
}

//: [Next](@next)
