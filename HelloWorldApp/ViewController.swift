//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelMessage: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func display(message: String) {
        labelMessage.text = message
        labelMessage.textColor = .systemGreen
    }
}
