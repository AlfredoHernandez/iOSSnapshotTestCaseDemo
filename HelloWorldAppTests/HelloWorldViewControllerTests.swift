//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import FBSnapshotTestCase
@testable import HelloWorldApp
import XCTest

final class HelloWorldViewControllerTests: SnaphshotTestCase {
    func test_view_displaysHelloWorldMessage() {
        let sut = makeSUT()

        assert(sut)
    }

    func test_displayMessageWithMessage_displaysTheMessage() {
        let sut = makeSUT()

        sut.display(message: "A simple message")

        assert(sut)
    }

    func test_displayErrorMessageWithMessage_displaysTheMessage() {
        let sut = makeSUT()

        sut.display(errorMessage: "An error message :(")

        assert(sut)
    }

    // MARK: - Helpers

    private func makeSUT() -> ViewController {
        let bundle = Bundle(for: ViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController

        viewController.loadViewIfNeeded()

        return viewController
    }
}
