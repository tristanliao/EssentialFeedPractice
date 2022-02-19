//
//  XCTestCase+MemoryLeadTracking.swift
//  EssentialFeedTests
//
//  Created by Bang Chiang Liao on 2022/2/19.
//

import Foundation
import XCTest

extension XCTestCase {
    func trackMemoryLeak(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak", file: file, line: line)
        }
    }
}
