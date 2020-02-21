
import UIKit

class ViewController: UIViewController {
    let porcshe: CarProtocol = Porcshe()
    
    @IBOutlet weak var titleCar: UILabel! {
        didSet {
            titleCar.text = porcshe.getTitle()
        }
    }
    @IBOutlet weak var price: UILabel! {
        didSet {
            price.text = String(porcshe.getPrice()) + " $"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func equipmentSegment(_ sender: UISegmentedControl) {
        let porcshe = Porcshe()
        switch sender.selectedSegmentIndex {
        case 0:
            titleCar.text = porcshe.getTitle()
            price.text = String(porcshe.getPrice()) + " $"
        case 1:
            let roof = PorcsheRoof(car: porcshe)
            titleCar.text = roof.getTitle()
            price.text = String(roof.getPrice()) + " $"
        case 2:
            let roof = PorcsheRoof(car: porcshe)
            let disc = PorcsheDisc(car: roof)
            titleCar.text = disc.getTitle()
            price.text = String(disc.getPrice()) + " $"
        default:
            break
        }
    }
    
}

