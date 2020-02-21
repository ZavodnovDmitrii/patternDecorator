
import Foundation

class PorcsheDecorator: CarProtocol {
    private let car: CarProtocol
    
    required init(car: CarProtocol) {
        self.car = car
    }
    
    func getTitle() -> String {
        return car.getTitle()
    }
    
    func getPrice() -> Double {
        return car.getPrice()
    }
}
