import UIKit

class OnboardingUIView: UIView {

    @IBOutlet weak var useDeviceLocationButton: UIButton!
    @IBOutlet weak var rejectUsageDeviceLocationButton: UIButton!

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        useDeviceLocationButton?.layer.cornerRadius = 10
        useDeviceLocationButton?.layer.masksToBounds = true
    }
    
    @IBAction func clickUseDeviceLocationButton(_ sender: Any) {
        print("useDeviceLocationButton has been tapped")
    }
    
    @IBAction func clickRejectUsageDeviceLocationButton(_ sender: Any) {
        print("rejectUsageDeviceLocationButton has been tapped")
    }
}
