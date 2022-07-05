/*:
 [Previous](@previous)
 ##  Evite Repetição
*/

import UIKit.UIView

class ClientsView: UIView {
    func setup() {
        backgroundColor = .blue
        layer.cornerRadius = 5.0
        tintColor = .red
        isOpaque = true
        isUserInteractionEnabled = true
    }
}

class SellersView: UIView {
    func setup() {
        backgroundColor = .green
        layer.cornerRadius = 5.0
        tintColor = .red
        isOpaque = true
        isUserInteractionEnabled = true
    }
}









/*:
 Refatorada
 */

class ViewConfigurator {
    func setup(view: UIView, backgroundColor: UIColor) {
        view.backgroundColor = backgroundColor
        view.layer.cornerRadius = 5.0
        view.tintColor = .red
        view.isOpaque = true
        view.isUserInteractionEnabled = true
    }
}

class ClientsView_Refactored: UIView {
    func setup() {
        let viewConfigurator = ViewConfigurator()
        viewConfigurator.setup(view: self, backgroundColor: .blue)
    }
}

class SellersView_Refactored: UIView {
    func setup() {
        let viewConfigurator = ViewConfigurator()
        viewConfigurator.setup(view: self, backgroundColor: .green)
    }
}

//: [Next](@next)
