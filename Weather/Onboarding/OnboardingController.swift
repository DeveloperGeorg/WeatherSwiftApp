import UIKit

class OnboardingController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func clickUseDeviceLocationButton(_ sender: Any) {
        print("useDeviceLocationButton has been tapped")
    }
    @IBAction func clickRejectUsageDeviceLocationButton(_ sender: Any) {
        print("rejectUsageDeviceLocationButton has been tapped")
    }
}

