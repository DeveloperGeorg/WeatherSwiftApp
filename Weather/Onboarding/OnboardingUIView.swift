import UIKit

class OnboardingUIView: UIView {

    @IBOutlet weak var useDeviceLocationButton: UIButton!
    @IBOutlet weak var rejectUsageDeviceLocationButton: UIButton!
    @IBOutlet weak var mainPicture: UIImageView!
    @IBOutlet weak var mainTitle: UITextView!
    @IBOutlet weak var firstDescription: UITextView!
    @IBOutlet weak var secondDescription: UITextView!
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        initUseDeviceLocationButton()
        initMainTitle(mainPicture)
        initFirstDescription(mainTitle)
        initSecondDescription(firstDescription)
    }

    private func initMainTitle(_ parent: UIView) {
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        mainTitle.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 56).isActive = true
        mainTitle.leadingAnchor.constraint(equalTo: parent.leadingAnchor).isActive = true
        mainTitle.trailingAnchor.constraint(equalTo: parent.trailingAnchor).isActive = true
        mainTitle.widthAnchor.constraint(equalTo: parent.widthAnchor).isActive = true
    }
    
    private func initFirstDescription(_ parent: UIView) {
        firstDescription.translatesAutoresizingMaskIntoConstraints = false
        firstDescription.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 56).isActive = true
        firstDescription.leadingAnchor.constraint(equalTo: parent.leadingAnchor).isActive = true
        firstDescription.trailingAnchor.constraint(equalTo: parent.trailingAnchor).isActive = true
        firstDescription.widthAnchor.constraint(equalTo: parent.widthAnchor).isActive = true
    }
    
    private func initSecondDescription(_ parent: UIView) {
        secondDescription.translatesAutoresizingMaskIntoConstraints = false
        secondDescription.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 14).isActive = true
        secondDescription.leadingAnchor.constraint(equalTo: parent.leadingAnchor).isActive = true
        secondDescription.trailingAnchor.constraint(equalTo: parent.trailingAnchor).isActive = true
        secondDescription.widthAnchor.constraint(equalTo: parent.widthAnchor).isActive = true
    }

    private func initUseDeviceLocationButton() {
        useDeviceLocationButton?.layer.cornerRadius = 10
        useDeviceLocationButton?.layer.masksToBounds = true
        useDeviceLocationButton.translatesAutoresizingMaskIntoConstraints = false
        useDeviceLocationButton.leadingAnchor.constraint(equalTo: rejectUsageDeviceLocationButton.leadingAnchor).isActive = true
        useDeviceLocationButton.trailingAnchor.constraint(equalTo: rejectUsageDeviceLocationButton.trailingAnchor).isActive = true
        useDeviceLocationButton.bottomAnchor.constraint(equalTo: rejectUsageDeviceLocationButton.topAnchor, constant: -25).isActive = true
        useDeviceLocationButton.widthAnchor.constraint(equalTo: rejectUsageDeviceLocationButton.widthAnchor).isActive = true
    }
    
    @IBAction func clickUseDeviceLocationButton(_ sender: Any) {
        print("useDeviceLocationButton has been tapped")
    }
    
    @IBAction func clickRejectUsageDeviceLocationButton(_ sender: Any) {
        print("rejectUsageDeviceLocationButton has been tapped")
    }
}
