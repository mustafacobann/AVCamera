import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var previewView: PreviewView!
    
    let cameraManager = CameraManager()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        previewView.session = cameraManager.session
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cameraManager.startSession()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        cameraManager.stopSession()
    }


}

