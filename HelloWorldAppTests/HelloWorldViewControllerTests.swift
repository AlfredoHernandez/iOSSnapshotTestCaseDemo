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

    func test_displayMessageWithMessage_displaysTheMessage() {
        let bundle = Bundle(for: ViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController

        viewController.loadViewIfNeeded()
        viewController.display(message: "A simple message")

        FBSnapshotVerifyView(viewController.view)
    }

    func test_displayErrorMessageWithMessage_displaysTheMessage() {
        let bundle = Bundle(for: ViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController

        viewController.loadViewIfNeeded()
        viewController.display(errorMessage: "An error message :(")

        FBSnapshotVerifyView(viewController.view)
    }
}
