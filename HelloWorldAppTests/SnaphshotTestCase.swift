//
//  Copyright © 2021 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import FBSnapshotTestCase

class SnaphshotTestCase: FBSnapshotTestCase {
    func assert(_ viewController: UIViewController, file: StaticString = #filePath, line: UInt = #line) {
        FBSnapshotVerifyView(viewController.view, identifier: nil, file: file, line: line)
    }

    func record(_ viewController: UIViewController, file: StaticString = #filePath, line: UInt = #line) {
        recordMode = true
        assert(viewController, file: file, line: line)
    }
}
