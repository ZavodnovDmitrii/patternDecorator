
import Foundation

class PorcsheRoof: PorcsheDecorator {
    
    override func getTitle() -> String {
        return super.getTitle() + " + roof"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 3000
    }
}
