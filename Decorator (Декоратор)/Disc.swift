
import Foundation

class PorcsheDisc: PorcsheDecorator {
    
    override func getTitle() -> String {
        return super.getTitle() + " + disc"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 4000
    }
}
