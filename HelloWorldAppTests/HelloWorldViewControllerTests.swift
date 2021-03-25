//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import FBSnapshotTestCase
@testable import HelloWorldApp
import XCTest

final class HelloWorldViewControllerTests: FBSnapshotTestCase {
    func test_view_displaysHelloWorldMessage() {
        let bundle = Bundle(for: ViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController

        FBSnapshotVerifyView(viewController.view)
    }
}
