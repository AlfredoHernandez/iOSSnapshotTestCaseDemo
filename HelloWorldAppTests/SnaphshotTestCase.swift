//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import FBSnapshotTestCase

class SnaphshotTestCase: FBSnapshotTestCase {
    func assert(
        _ viewController: UIViewController,
        mode: UIUserInterfaceStyle = .light,
        identifier: String? = nil,
        file: StaticString = #filePath,
        line: UInt = #line
    ) {
        viewController.overrideUserInterfaceStyle = mode
        FBSnapshotVerifyView(viewController.view, identifier: identifier, file: file, line: line)
    }

    func record(
        _ viewController: UIViewController,
        mode: UIUserInterfaceStyle = .light,
        identifier: String? = nil,
        file: StaticString = #filePath,
        line: UInt = #line
    ) {
        recordMode = true
        assert(viewController, mode: mode, identifier: identifier, file: file, line: line)
    }
}
